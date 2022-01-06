import 'package:complexe_ui/Widgets/airplane.dart';
import 'package:complexe_ui/Widgets/arrows.dart';
import 'package:complexe_ui/Widgets/item_fader.dart';
import 'package:complexe_ui/Widgets/line.dart';
import 'package:complexe_ui/Widgets/option_item.dart';
import 'package:flutter/material.dart';

class FlightsStepper extends StatefulWidget {
  const FlightsStepper({Key? key}) : super(key: key);

  @override
  _FlightsStepperState createState() => _FlightsStepperState();
}

class _FlightsStepperState extends State<FlightsStepper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.purple]),
      ),
      child: SafeArea(
        child: Stack(
          children: <Widget>[
            const ArrowIcons(),
            const AirPlane(),
            const Line(),
            Page(
              answers: _myAnswers,
              number: 1,
              onOptionseclected: () {},
              question:
                  'Do you typically fly for business, personla reasons, or some ohter reason?',
            ),
          ],
        ),
      ),
    ));
  }
}

class Page extends StatefulWidget {
  final int? number;
  final String? question;
  final List<String>? answers;
  final VoidCallback? onOptionseclected;

  const Page(
      {Key? key,
      required this.number,
      required this.question,
      required this.answers,
      required this.onOptionseclected})
      : super(key: key);

  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  List<GlobalKey>? keys;

  @override
  void initState() {
    super.initState();
    keys = List.generate(5, (_) => GlobalKey());
    onInit();
  }

  void onInit() async {
    for (GlobalKey key in keys!) {
      await Future.delayed(const Duration(milliseconds: 40));
      //  key.currentState!.show;

    }
  }

  void onTap() async {
    for (GlobalKey key in keys!) {
      await Future.delayed(const Duration(milliseconds: 40));
      // key.currentState!.reassemble();
    }

    widget.onOptionseclected!();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ItemFader(
                key: keys![0],
                child: Text(
                  '0${widget.number}',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              ItemFader(
                key: keys![1],
                child: Text('${widget.question}',
                    style: const TextStyle(
                      color: Colors.white,
                    )),
              )
            ],
          ),
        ),
        const Spacer(),
        ...widget.answers!.map((String answer) {
          int answerIndex = widget.answers!.indexOf(answer);

          int keyIndex = answerIndex + 2;
          return ItemFader(
            key: keys![keyIndex],
            child: OptionItem(
              name: answer,
              press: onTap,
            ),
          );
        }),
        const SizedBox(
          height: 74,
        )
      ],
    );
  }
}

List<String> _myAnswers = [
  '\n Buisness  \n',
  '\n Personal  \n',
  '\n Others  \n'
];
