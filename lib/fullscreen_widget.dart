import 'package:flutter/material.dart';

class FullscreenWidget extends StatelessWidget {
  const FullscreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fullscreen Widget"),
      ),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.green,
          child: Center(
            child: Text("Que verdoso!!!", style: TextStyle(color: Colors.red[100], fontWeight: FontWeight.bold, fontSize: 30),),
          ),
      ),
    );
  }
}
