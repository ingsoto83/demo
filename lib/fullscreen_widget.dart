import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FullscreenWidget extends StatelessWidget {
  const FullscreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fullscreen Widget"),
      ),
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/img/fondo.png'),
              fit: BoxFit.cover
            )
          ),
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: Text("Travel App", style: GoogleFonts.dancingScript(fontSize: 42, fontWeight: FontWeight.bold)),
          ),
          /* child: Image.asset('assets/img/fondo.png', fit: BoxFit.cover,)*/
      ),
    );
  }
}
