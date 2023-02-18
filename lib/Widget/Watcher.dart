import 'package:flutter/material.dart';
import 'package:whatif/core/data/charater.dart';

class Watcher extends StatelessWidget {
  const Watcher({super.key});

  @override
  Widget build(BuildContext context) {
    var watcher = Character.thewatcher;
    return Padding(
      padding: const EdgeInsets.only(top: 70.0, left: 30),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(watcher), fit: BoxFit.fitHeight),
        ),
      ),
    );
  }
}
