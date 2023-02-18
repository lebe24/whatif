import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    const String logo = 'assets/wat.png';
    return Container(
      alignment: Alignment.topCenter,
      child: Image.asset(logo),
    );
  }
}
