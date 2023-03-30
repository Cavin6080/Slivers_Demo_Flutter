import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget {
  final String title;
  final Color? backgroundColor;
  const CustomSliverAppBar({
    Key? key,
    required this.title,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      stretch: true,
      expandedHeight: 200,
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        stretchModes: const [
          StretchMode.blurBackground,
          StretchMode.zoomBackground,
        ],
        background: DecoratedBox(
          position: DecorationPosition.foreground,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black45, Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.center,
              stops: [0.1, 1],
            ),
          ),
          child: Image.asset(
            "assets/dash_background.jpeg",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
