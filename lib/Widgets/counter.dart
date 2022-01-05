import 'package:complexe_ui/custom_drawer/custom_drawer.dart';
import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 250));
  }

  void toggleDrawer() => _animationController!.isDismissed
      ? _animationController!.forward()
      : _animationController!.reverse();

  int counter = 0;

  bool _canBeDragged = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onHorizontalDragStart: _onDragStart,
          onHorizontalDragUpdate: _onDragUpdate,
          onHorizontalDragEnd: _onDragEnd,
          child: const Icon(
            (Icons.menu),
          ),
          onTap: toggleDrawer,
        ),
        title: const Text('Hello Flutter 237'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pressed the button this many times:',
                style: Theme.of(context).textTheme.bodyText2),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.headline5,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter += 1;
          });
        },
      ),
    );
  }

  void _onDragStart(DragStartDetails details) {
    bool isDragOpenFromLeft = _animationController!.isDismissed &&
        details.globalPosition.dx < 0; // check this
    bool isDragCloseFromRight = _animationController!.isCompleted &&
        details.globalPosition.dx > 1; // check this

    _canBeDragged = isDragOpenFromLeft || isDragCloseFromRight;
  }

  void _onDragUpdate(DragUpdateDetails details) {
    if (_canBeDragged) {
      double delta = details.primaryDelta! / _animationController!.value / 218;
      _animationController!.value += delta;
    }
  }

  void _onDragEnd(DragEndDetails details) {
    if (_animationController!.isDismissed ||
        _animationController!.isCompleted) {
      return;
    }

    if (details.velocity.pixelsPerSecond.dx.abs() >= 365.0) {
      double visualVelocity = details.velocity.pixelsPerSecond.dx /
          MediaQuery.of(context).size.width;

      _animationController!.fling(velocity: visualVelocity);
    } else if (_animationController!.value < 0.5) {
      // check this
    } else {
      // check this
    }
  }
}
