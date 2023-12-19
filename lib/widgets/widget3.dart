import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyWidget4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 104, 183, 247),      
      width: MediaQuery.of(context).size.width,
      height:MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '13',
                 style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 330,fontWeight: FontWeight.w100,color: Colors.white),),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildRoundButton('-1'),
              SizedBox(width: 55), 
              buildReloadButton(),
              SizedBox(width: 55), 
              buildRoundButton('+1'),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildRoundButton(String text) {
    return Container(
      width: 60,
      height: 60,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 152, 212, 255),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: Colors.white,
          width: 2.0,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 255, 255, 255)), // Color azul
        ),
      ),
    );
  }

  Widget buildReloadButton() {
    return Container(
      width: 60,
      height: 60,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 152, 212, 255),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: Colors.white,
          width: 2.0,
        ),
      ),
      child: Center(
        child: Icon(Icons.refresh, size: 30, color: Color.fromARGB(255, 255, 255, 255)), // Color azul
      ),
    );
  }
}
