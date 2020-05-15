
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusablecard.dart';
import 'result_page.dart';
import 'bmical.dart';


enum Gender{
MALE,
FEMALE,
}

Color activecolor=Color(0xFF1D1E33);
Color inactivecolor= Color(0xFF111328);


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectgender;
  int height=180;
  int weight=60;
  int age=18;
   String gen='MALE';
   String idealw;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

         Row(
           
           children: <Widget>[
             Expanded(
               
               child: Theme(
                 
                 data: ThemeData(

              
                textTheme: TextTheme(
                  body1:TextStyle(fontSize: 20.0,fontFamily: 'Hind')
                )


      ),

      child:Reusablecard(
        
        onpress: (){

          setState((){
                               
                     selectgender=Gender.MALE; 
                     gen='MALE';      

          });
        },
        color: selectgender==Gender.MALE ? activecolor: inactivecolor,
        cardchild: IconContent(
            icon:FontAwesomeIcons.mars,
            label: 'MALE',
            color:selectgender==Gender.MALE ? Colors.white: activecolor,
             
        ),
   height:100.0
      )
      ),

    
             ),
        SizedBox(
        width: 30.0,
        ),
                    
             Expanded(

           child: Theme(
             
             data: ThemeData(

          
            textTheme: TextTheme(
              body1:TextStyle(fontSize: 20.0,fontFamily: 'Hind')
            )


      ),

      child: Reusablecard(
        
        onpress: (){

          setState((){
                               
                     selectgender=Gender.FEMALE;
                     gen='FEMALE';
          });
        },
        color: selectgender==Gender.FEMALE ? activecolor: inactivecolor,
        
        cardchild: IconContent(
            icon:FontAwesomeIcons.venus,

            label: 'FEMALE',
            color:selectgender==Gender.FEMALE ? Colors.white: activecolor,
           
        ),
       height: 100.0,
      )
      ),
         ),



           ],
         ),
     SizedBox(
       height:15.0,
       
     )  , 

    Expanded(
      
      child:Container(
        height: 100.0,
     decoration: BoxDecoration(
      color: inactivecolor,
          borderRadius: BorderRadius.circular(10.0)
     ),

        
              child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children:<Widget>[
Text(
  
  'HEIGHT',
  style:TextStyle(color:Colors.grey,fontSize: 15.0,
  fontWeight: FontWeight.bold,)
),

SizedBox(
height: 5.0,
),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
crossAxisAlignment: CrossAxisAlignment.baseline,
textBaseline: TextBaseline.alphabetic,

  children: <Widget>[
          Text(
    
    height.toString(),
    
    style:TextStyle(color:Colors.white,fontSize: 24.0,)

    ),
        Text(

    'cm',
    
    style:TextStyle(color:Colors.white)
    
    ),
  ],
),

SliderTheme(
  data: SliderTheme.of(context).copyWith(
inactiveTrackColor:Color(0xFF8D8E98),
thumbColor: Color(0xFFEB1555),
activeTrackColor: Colors.white,
overlayColor: Color(0x29EB1555),
thumbShape: RoundSliderThumbShape(enabledThumbRadius:15.0 ),
overlayShape: RoundSliderOverlayShape(overlayRadius:30.0)

  ),

  child: Slider(
  
    value: height.toDouble(),
  
  min: 137.0,
  
  max:183,

   onChanged: (double newvalue){
  
     setState(() {
        
       height=newvalue.round();
  
     });
  
   }

   ),
)

]

),
      
      ),
    ),
    
     
      Expanded(
        
        child: Row(
              
              children: <Widget>[
                
                  Expanded(
                    
                    child: Container(
                      height:100.0,
                     decoration: BoxDecoration(
      color: inactivecolor,
          borderRadius: BorderRadius.circular(10.0)
     ),
                    
                      child: Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                       children:<Widget>[
               
              
                         Text(
                           'WEIGHT',
                            style:TextStyle(color:Colors.grey,fontSize: 15.0,
  fontWeight: FontWeight.bold,)
                         ),
                              SizedBox(
height: 5.0,
),
                        Text(
                           weight.toString(),
                             style:TextStyle(color:Colors.white,fontSize: 24.0,)
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: <Widget>[
                               Roundbutton(
                              press:(){
                                setState(() {
                                  if(weight > 10)
                                  {
                                  --weight;
                                  }
                                });
                              },
                             icon:FontAwesomeIcons.minus,
                           ),
                           SizedBox(
                             width:20.0,
                           ),
                           Roundbutton(
                              press:(){
                                setState(() {
                                  if(weight < 200){
                                  ++weight;
                                  }
                                });
                              },
                             icon:FontAwesomeIcons.plus,
                           ),
                             
                           ],
                         )
                         
                       ]


                      ),
                    )
                    
                    
                    ),
SizedBox(
        width: 30.0,
        ),
                    Expanded(
                    
                    child: Container(
                      height:100.0,
                      decoration: BoxDecoration(
      color: inactivecolor,
          borderRadius: BorderRadius.circular(10.0)
     ),
                      child: Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                       children:<Widget>[
               
                         Text(
                           'AGE',
 style:TextStyle(color:Colors.grey,fontSize: 15.0,
  fontWeight: FontWeight.bold,)
                         ),
                              SizedBox(
height: 5.0,
),
                        Text(
                           age.toString(),
                             style:TextStyle(color:Colors.white,fontSize: 24.0,)
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: <Widget>[
                             Roundbutton(
                                press:(){
                                setState(() {
                                  if(age>5)
                                  {
                                  age--;
                                  }
                                });
                              },
                               icon:FontAwesomeIcons.minus,
                             ),
                             SizedBox(
                               width:20.0,
                             ),
                             Roundbutton(
                               press:(){
                                setState(() {
                                  if(age<100){
                                  age++;
                                  }
                                });
                              },
                               icon:FontAwesomeIcons.plus,
                             ),
                           ],
                         )
                         
                       ]


                      ),
                    )
                    
                    
                    )
              

              ],
    


        ),
      
      
      
      ),

GestureDetector(
  onTap: (){
    Callbmi cal=Callbmi(height: height,weight:weight,gen:gen);
    if(gen=='MALE'){

            idealw=cal.M();
            
    }
    else if(gen=='FEMALE'){
               idealw=cal.F();
              
    }

Navigator.push(context, MaterialPageRoute(builder: (context)=>Resultpage(resbmi:cal.calbmi(),
restxt:cal.getres(),idealw:idealw

)));
  },
  child:   Container(
  
  decoration: BoxDecoration(
  
    color:Color(0xFFEB1555),
  
    borderRadius: BorderRadius.circular(10.0)
  
  ),
  
  child:Center(child: Text('Calculate',
  
  style: TextStyle(
  
  color:Colors.white,
  
  fontSize: 18.0,
  
  ),)),
  
  
  
  margin:EdgeInsets.only(top:10.0),
  
  width:double.infinity,
  
  height:40.0
  
  ),
)
        ],
          
      ),
    );
  }
}


class IconContent extends StatelessWidget {

  IconContent({this.icon,this.label,this.color});


  final IconData icon;
  final  String label;
  final Color color;
   
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
Icon(
icon,
color: color,
size:30.0,
),
SizedBox(
  height:10.0
),

Text(
label,
style: TextStyle(
  color:Colors.white,
),

)
      ],
    );
  }
}


class Roundbutton extends StatelessWidget {

Roundbutton({this.icon,this.press});
  final IconData icon;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
       onPressed: press,
       elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width:40.0,
        height:40.0
      ),
      shape: CircleBorder(),
      fillColor:Color(0xFF4C4F5E) ,

    );
  }
}

