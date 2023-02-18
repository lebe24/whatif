import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whatif/Widget/BackgroundImage.dart';
import 'package:whatif/Widget/Logo.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackImg(
        child: Stack(children: [
          Logo(),
        ],),
      )
    );
  }
}
