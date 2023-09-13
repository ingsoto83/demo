import 'package:flutter/material.dart';

class MainWidget extends StatelessWidget {
  MainWidget({super.key});

  int count = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Demo"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            count++;
            print(count);
          },
          backgroundColor: Colors.deepOrange,
          child: Icon(Icons.add),
        ),
        body: Center(
          child: Text(
            "Presionaste el boton ${count}  veces!!",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple
            ),
          ),
        )
    );
  }
}
