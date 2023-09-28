import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenOne extends StatefulWidget {
  var name;
  ScreenOne({super.key, this.name});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_interpolation_to_compose_strings
        title: Center(
            child: Text('Screen One' +
                (Get.arguments != null && Get.arguments.isNotEmpty
                    ? Get.arguments[0]
                    : ''))),

        backgroundColor: Colors.purple[300],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: TextButton(
                  onPressed: () {
                    // Get.to(const ScreenTwo());
                    Get.toNamed('/ScreenTwo');
                  },
                  child: const Text('Go to Screen Two'))),
        ],
      ),
    );
  }
}
