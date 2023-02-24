import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whatif/core/data/charater.dart';

class Detail extends StatelessWidget {
  const Detail({super.key, required this.name, required this.img});

  final String name;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Hero(
                tag: 'hero',
                child: Image.asset(
                  img,
                  height: 100,
                ))
          ],
        )
      ],
    );
  }
}
