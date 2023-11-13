import 'package:flutter/material.dart';

class FadeAnimation extends StatefulWidget {
  const FadeAnimation({super.key});

  @override
  State<FadeAnimation> createState() => _FadeAnimationState();
}

class _FadeAnimationState extends State<FadeAnimation>
    with TickerProviderStateMixin {
  Animation<double>? _animation;
  AnimationController? _animationControllerWidth;
  late Animation<Color?> _animationColor;
  AnimationController? _animationControllerColor;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationControllerColor =
        AnimationController(vsync: this, duration: const Duration(seconds: 2), reverseDuration: Duration(seconds: 2));
    _animationControllerWidth =
        AnimationController(vsync: this, duration: const Duration(seconds: 2), reverseDuration: Duration(seconds: 2));
    _animation =
        Tween<double>(begin: 0, end: 300).animate(_animationControllerWidth!)
          ..addListener(() {
            setState(() {});
          });
    _animationColor = ColorTween(begin: Colors.red, end: Colors.blue)
        .animate(_animationControllerColor as Animation<double>)
      ..addListener(() {
        setState(() {});
      });

    _animationControllerColor!.forward();
    _animationControllerColor!.repeat();
    // _animationControllerColor!.reverseDuration;
    _animationControllerWidth!.forward();
    _animationControllerWidth!.repeat();
    // _animationControllerWidth!.reverseDuration;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationControllerColor!.dispose();
    _animationControllerWidth!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Basic Animation"),
      ),
      body: Center(
        child: Container(
          width: _animation!.value,
          height: _animation!.value,
          color: _animationColor.value,
        ),
      ),
    );
  }
}
