import 'package:flutter/material.dart';
import 'Inputpage.dart';



void main() => runApp(BMICalculator());


class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData(
          
                brightness: Brightness.dark,
           primaryColor: Color(0xFF0A0E21),
             accentColor: Colors.grey[700],
             textTheme: TextTheme(body1: TextStyle(color: Colors.purple)),
      ),
      
      home:Scaffold(
        
        backgroundColor:Color(0xFF0A0E21) ,
        appBar:AppBar(
          title:Center(
            child: Text('BMI',
            style: TextStyle(
              color: Colors.white,
            ),
            ),
          ),
          
        ),
        body: InputPage(),
      ) ,
    );
  }
}


