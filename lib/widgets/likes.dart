import 'package:flutter/material.dart';
import 'package:my_profile/service/database.dart';

class Likes extends StatefulWidget {
  final int likes;
  final String id;
  Likes({required this.id, required this.likes});
  @override
  _LikesState createState() => _LikesState();
}

class _LikesState extends State<Likes> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _ani;
  late Animatable _curve, _tween;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(duration: Duration(milliseconds: 100), vsync: this);
    _curve = CurveTween(curve: Curves.ease);
    _tween = Tween<double>(begin: 30, end: 40);
    _ani = _controller.drive(_curve).drive(_tween);

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) _controller.reverse();
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (context, _) {
          return IconButton(
              icon: Icon(
                Icons.thumb_up_alt,
                size: _ani.value,
              ),
              onPressed: () {
                _controller.forward();
                setState(() {
                  print(widget.likes);
                  DatabaseService()
                      .blogCollection
                      .doc(widget.id)
                      .update({'likes': widget.likes + 1});
                });
              });
        });
  }
}
