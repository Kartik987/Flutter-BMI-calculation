import 'package:flutter/material.dart';
class Reusablecard extends StatelessWidget {
  
  Reusablecard({@required this.color, this.onpress, this.cardchild,this.height });
  final Color color;
  final height;
  final Function onpress;
  final Widget cardchild;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
            child: Container(
       
        height: height,
        margin:EdgeInsets.only(top:10.0) ,
        decoration:BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0)
        ) ,
        child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget>[
                   cardchild, 
                ]
                ),

        ),
      ),
    );
  }
}