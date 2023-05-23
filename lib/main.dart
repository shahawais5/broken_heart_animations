
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

void main() {
  runApp(const HeartBroken());
}

class HeartBroken extends StatelessWidget {
  const HeartBroken({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.lightBlueAccent,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.black,
            title: Text(
              '😉ہاۓ او شاہ بھول جا☕',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          body: Center(
                  child: Animate(
            effects: [
              FadeEffect(delay: 300.ms, duration: 500.ms),
              const MoveEffect(),
            ],
            child: const Icon(
              Icons.favorite,
              size: 300,
              color: Colors.red,
            ),
          )
                      .then()
                      .rotate(delay: 2000.milliseconds, duration: 1000.ms)
                      .then(duration: 100.ms)
                      .swap(
                          builder: (context, child) => const Icon(
                                Icons.heart_broken,
                                size: 300,
                                color: Colors.red,
                              ).animate().tint(color: Colors.black).fadeIn()))
      ),
    );
  }
}
