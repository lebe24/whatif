import 'package:flutter/material.dart';
import 'package:whatif/core/data/charater.dart';

class Watcher extends StatelessWidget {
  const Watcher({super.key});

  @override
  Widget build(BuildContext context) {
    var watcher = Character.thewatcher;

    final size = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 70.0, left: 30),
      child: TweenAnimationBuilder<double>(
        duration: Duration(seconds: 2),
        tween: Tween<double>(begin: 0, end: size),
        builder: (context, value, child) => Container(
          height: size,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(watcher), fit: BoxFit.fitHeight),
          ),
        ),
      ),
    );
  }
}

class SlideDownContainer extends StatefulWidget {
  @override
  _SlideDownContainerState createState() => _SlideDownContainerState();
}

class _SlideDownContainerState extends State<SlideDownContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    _animation = Tween<Offset>(
      begin: const Offset(-0.5, 0.0),
      end: const Offset(0.5, 0.0),
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Container(
        height: 100,
        color: Colors.blue,
        child: Center(
          child: Text(
            'Slide Down Container',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
        ),
      ),
    );
  }

  void animate() {
    _controller.forward();
  }
}

class Animate extends StatefulWidget {
  const Animate({super.key});

  @override
  State<Animate> createState() => _AnimateState();
}

class _AnimateState extends State<Animate> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..forward();
    _animation = Tween<Offset>(
      begin: const Offset(0.5, 5),
      end: const Offset(0.0, 0.5),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Woolha.com Flutter Tutorial'),
      ),
      body: Builder(
          builder: (context) => Center(
                child: SlideTransition(
                  position: _animation,
                  child: Text('Woolha.com',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
              )),
    );
  }
}
