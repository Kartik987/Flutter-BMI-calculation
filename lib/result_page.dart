import 'package:flutter/material.dart';
Color activecolor=Color(0xFF1D1E33);
Color inactivecolor= Color(0xFF111328);


class Resultpage extends StatelessWidget {
  Resultpage({this.resbmi,this.restxt,this.idealw});
final String restxt;
final String resbmi;
final String idealw;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Results',
        style:TextStyle(
          color:Colors.white,
          fontSize: 20.0,
  fontWeight: FontWeight.bold,
        ))
      ),
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:<Widget>[
            
            Expanded(
             child: Container(

                     decoration: BoxDecoration(
      color: inactivecolor,
          borderRadius: BorderRadius.circular(10.0)
     ),

               child: Padding(
                   padding:  EdgeInsets.all(12.0),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                       Text(

                                restxt,
                                style: TextStyle(
                                  color:Colors.lightGreen,
                                           fontSize: 18.0,
                                ),
                              ),
 SizedBox(
                                height:15.0,
                              ),
                               Text(

                                '3 Out of 4 Indians are overweight.',
                                style: TextStyle(
                                  color:Colors.lightGreen,
                                           fontSize: 15.0,
                                ),
                              ),

                              SizedBox(
                                height:15.0,
                              ),
                              Text(

                                'In 2014, it was found that there are 20 million obese women in India compared with 9.8 million obese men.',
                                
                                overflow:TextOverflow.fade ,
                                style: TextStyle(
                                  color:Colors.lightGreenAccent,
                                           fontSize: 15.0,
                                ),
                              ),
                     ],
                   ),
                 ),
               
            ),
            ),
            SizedBox(
              height:30.0,
            ),
             Expanded(
             child: Container(
 decoration: BoxDecoration(
      color: inactivecolor,
          borderRadius: BorderRadius.circular(10.0)
     ),

               child:  Center(
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: <Widget>[
                     Text(

                               'Your BMI is $resbmi',
                              style: TextStyle(
                                color:Colors.white,
                                         fontSize: 22.0,
                              ),
                            ),
SizedBox(
  height:10.0,
),
                                                 Text(

                               'Ideal weight for your height : $idealw', 
                              style: TextStyle(
                                color:Colors.white,
                                         fontSize: 15.0,
                              ),
                            ),


                            SizedBox(
  height:10.0,
),
                                                 Padding(
                                                   padding: const EdgeInsets.all(12.0),
                                                   child: Container(
                                                       decoration: BoxDecoration(
      color: inactivecolor,
         
     ),
                                                     child: Text(

                               'NOTE : Ideal weight has no relation with your BMI and don\'t worry if your BMI is normal but weight is not in the ideal range',
                              style: TextStyle(
                                color:Colors.white,
                                         fontSize: 15.0,
                              ),
                            ),
                                                   ),
                                                 ),
                   ],
                 ),
                        
               ),
                
           
        
            
            
            ),

            ),
            
          ],
            ),
      ),

    );

  }
}