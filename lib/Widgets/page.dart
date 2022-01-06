import 'package:complexe_ui/Widgets/option_item.dart';
import 'package:flutter/material.dart';

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
              Text(
                '0${widget.number}',
                style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Text('${widget.question}',
                  style: const TextStyle(
                    color: Colors.white,
                  ))
            ],
          ),
        ),
        const Spacer(),
        ...widget.answers!.map((String answer) => OptionItem(
              name: answer,
              press: widget.onOptionseclected,
            )),
        const SizedBox(
          height: 64,
        )
      ],
    );
  }
}
