import 'package:flutter/material.dart';

class ItemFader extends StatefulWidget {
  final Widget? child;
  const ItemFader({Key? key, required this.child}) : super(key: key);

  @override
  _ItemFaderState createState() => _ItemFaderState();
}

class _ItemFaderState extends State<ItemFader>
    with SingleTickerProviderStateMixin {
  int position = 1;
  AnimationController? _animationController;
  Animation? _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));

    _animation =
        CurvedAnimation(parent: _animationController!, curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    // print(' animation controller: ${_animationController!.value}');
    // print(_animation!.value);

    return AnimatedBuilder(
      animation: _animation!,
      child: widget.child,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, 64 * position * (1 - _animationController!.value)),
          child: Opacity(
            opacity: _animation!.value,
            child: child,
          ),
        );
      },
    );
  }

  void show() {
    setState(() {
      position = 1;
      _animationController!.forward();
    });
  }

  void hide() {
    setState(() {
      position = -1;
      _animationController!.reverse();
    });
  }
}