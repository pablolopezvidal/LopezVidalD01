import 'package:flutter/material.dart';
import '../widgets/widget1.dart';
import '../widgets/widget4.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,  
        crossAxisAlignment: CrossAxisAlignment.center,  
        children: [
          MyWidget(),  
          SizedBox(height: 20.0),  
          widget4() 
        ],
      ),
    );
  }
}
