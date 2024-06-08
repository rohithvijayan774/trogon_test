import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyCourseSquareCard extends StatelessWidget {
  final Color color1;
  final Color color2;
  final String text;
  final String image;
  const MyCourseSquareCard(
      {required this.color1,
      required this.color2,
      required this.text,
      required this.image,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            color1,
            color2,
          ])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(
            image,
            scale: 1.2,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 80,
            height: 20,
            decoration: BoxDecoration(
                color: color1,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: Center(
              child: Text(
                text,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
