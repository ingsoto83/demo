import 'package:flutter/material.dart';

class TravelWidget extends StatelessWidget {
  const TravelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Widget imageSection = Container(
        width: width,
        height: height * .4,
        child: Image.asset('assets/img/place.jpg', fit: BoxFit.cover,)
    );

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    "Sierra de San Lorenzo",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text("Saltillo, Coahuila, México", style:TextStyle(color: Colors.grey[500]))
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.orange,),
          Text("41")
        ],
      ),
    );
    return Scaffold(
      body: Column(
        children: [
          imageSection,
          titleSection
        ],
      ),
    );
  }
}
