import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CustomDrawer(),
    );
  }
}

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 250));
  }

  void toggle() => animationController!.isDismissed
      ? animationController!.forward()
      : animationController!.reverse();

  // void _onDragStart(DragStartDetails details) {
  //   bool isDragOpenFromLeft = animationController!.isDismissed &&
  //       details.globalPosition.dx < minDragStartEdge;

  //   _canBeDragged = isDragOpenFromLeft || isDragCloseFromRight;
  // }

  double maxSlide = 225.0;
  var myDrawer = Scaffold(
      backgroundColor: Colors.blue[500],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Flutter \nCameroon',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            MyList(
              iconx: Icon(
                Icons.new_label_sharp,
                color: Colors.white,
              ),
              text: 'News',
            ),
            MyList(
              iconx: Icon(
                Icons.favorite,
                color: Colors.white,
              ),
              text: 'favourites',
            ),
            MyList(
              iconx: Icon(
                Icons.map,
                color: Colors.white,
              ),
              text: 'Map',
            )
          ],
        ),
      ));
  var myChild = Scaffold(
    appBar: AppBar(
      title: Row(
        children: <Widget>[
          IconButton(icon: const Icon(Icons.ac_unit), onPressed: () {}),
          const SizedBox(
            width: 50,
          ),
          const Text('Flutter Cameroon'),
        ],
      ),
    ),
    body: Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text('You have pressed the button'),
            Text('1 time')
          ],
        ),
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: const Icon(Icons.add),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        // onHorizontalDragStart: _onDragStart,
        // onHorizontalDragUpdate: _onDragUpdate,
        // onHorizontalDragEnd: _onDragEnd,
        onTap: toggle,
        child: AnimatedBuilder(
          animation: animationController!,
          builder: (context, _) {
            double slide = maxSlide * animationController!.value;
            double scale = 1 - (animationController!.value * 0.3);
            return Stack(
              children: <Widget>[
                Transform.translate(
                    offset:
                        Offset(maxSlide * (animationController!.value - 1), 0),
                    child: Transform(
                        transform: Matrix4.identity()
                          ..setEntry(3, 2, 0.001)
                          ..rotateY(
                            math.pi / 2 * (1 - animationController!.value),
                          ),
                        alignment: Alignment.centerRight,
                        child: myDrawer)),
                Transform.translate(
                  offset: Offset(maxSlide * animationController!.value, 0),
                  child: Transform(
                      transform: Matrix4.identity()
                        ..setEntry(3, 2, 0.001)
                        ..rotateY(-math.pi / 2 * animationController!.value),
                      alignment: Alignment.centerLeft,
                      child: myChild),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class MyList extends StatelessWidget {
  const MyList({
    Key? key,
    required this.iconx,
    required this.text,
  }) : super(key: key);

  final Icon? iconx;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: iconx,
      title: Text(text!, style: TextStyle(color: Colors.white)),
    );
  }
}
