import 'package:flutter/material.dart';

class TravelWidget extends StatelessWidget {
  const TravelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Widget imageSection = Container(
        height: height * .4,
        width: width,
        child: Image.asset('assets/img/place.jpg', fit: BoxFit.cover,)
    );
    Widget imageLSection = Container(
        height: height,
        width: width * .5,
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
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text("Sierra de San Lorenzo", style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                Text("Saltillo, Coahuila, México", style: TextStyle(color: Colors.grey[500]),),
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.orange,),
          Text("41")
        ],
      ),
    );
    Widget buttonsSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildBtnColumn(Theme.of(context).primaryColor, Icons.call, 'CALL'),
        _buildBtnColumn(Theme.of(context).primaryColor, Icons.near_me, 'ROUTE'),
        _buildBtnColumn(Theme.of(context).primaryColor, Icons.share, 'SHARE'),
      ],
    );
    Widget descSection = Container(
      padding: EdgeInsets.all(32),
      child: Text('But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?', softWrap: true,),
    );
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation){
          return orientation == Orientation.portrait ? SingleChildScrollView(
            child: Column(
              children: [
                imageSection,
                titleSection,
                buttonsSection,
                descSection
              ],
            ),
          )
              : Row(
            children: [
              imageLSection,
              Expanded(
                child: Flex(
                  direction: Axis.vertical,
                    children: [
                      titleSection,
                      buttonsSection,
                      descSection,
                    ],
                ),
              )
            ],
          );
        }
      )
    );
  }

  Column _buildBtnColumn(Color color, IconData icon, String title){
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color,),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            title,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: color),
          ),
        )
      ],
    );
  }
}
