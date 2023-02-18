import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: null,
      child: Stack(children: [
        Column(
          children: [
            SizedBox(height: 100),
          ],
        )
      ]),
    );
  }
}