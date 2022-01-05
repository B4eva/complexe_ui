import 'package:complexe_ui/Widgets/counter.dart';
import 'package:complexe_ui/Widgets/drawer.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  final double maxSlide = 208.0;

  bool _canBeDragged = true;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 250));
  }

  void toggle() => animationController!.isDismissed
      ? animationController!.forward()
      : animationController!.reverse();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragStart: _onDragStart,
      onHorizontalDragUpdate: _onDragUpdate,
      onHorizontalDragEnd: _onDragEnd,
      onTap: toggle,
      child: AnimatedBuilder(
        animation: animationController!,
        builder: (context, _) {
          double slide = maxSlide * animationController!.value;
          double scale = 1 - (animationController!.value * 0.3);
          // print(
          //     'this is animation Controller value ${animationController!.value}');
          return Stack(
            children: <Widget>[
              const MyDrawer(),
              Transform(
                  transform: Matrix4.identity()
                    ..translate(slide)
                    ..scale(scale),
                  alignment: Alignment.centerLeft,
                  child: const CounterWidget())
            ],
          );
        },
      ),
    );
  }

  void _onDragStart(DragStartDetails details) {
    bool isDragOpenFromLeft = animationController!.isDismissed &&
        details.globalPosition.dx < 0; // check this
    bool isDragCloseFromRight = animationController!.isCompleted &&
        details.globalPosition.dx > 0; // check this

    _canBeDragged = isDragOpenFromLeft || isDragCloseFromRight;
  }

  void _onDragUpdate(DragUpdateDetails details) {
    if (_canBeDragged) {
      double delta = details.primaryDelta! / maxSlide;
      animationController!.value += delta;
    }
  }

  void _onDragEnd(DragEndDetails details) {
    if (animationController!.isDismissed || animationController!.isCompleted) {
      return;
    }

    if (details.velocity.pixelsPerSecond.dx.abs() >= 365.0) {
      double visualVelocity = details.velocity.pixelsPerSecond.dx /
          MediaQuery.of(context).size.width;

      animationController!.fling(velocity: visualVelocity);
    } else if (animationController!.value < 0.5) {
      // check this
    } else {
      // check this
    }
  }
}
