import 'package:flutter/material.dart';
void main(){
  runApp(const MYAPP());
}
class MYAPP extends StatelessWidget{
  const MYAPP({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'MY LAYOUT',
      home: Scaffold(
        appBar:AppBar(title: Text('HELLO WORLD')),
        body:Center(
          child:Container(
            height:500,
            width:500,
            child:GridView.count(
                crossAxisCount:2,
                children: [
                 Container(
                   color: Colors.brown,
                   child: Column(
                     mainAxisAlignment:MainAxisAlignment.center,
                     children: [
                       Icon(Icons.access_alarm),
                       Icon(Icons.access_time_rounded),
                       Icon(Icons.accessibility_rounded),
                     ],
                   ),
                 ),
                  Container(
                    color: Colors.redAccent,
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add_a_photo_rounded),
                        Icon(Icons.star),
                        Icon(Icons.headphones),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.deepOrangeAccent,
                    child: Stack(
                      children: [
                        Container(height: 80,width: 70, color: Colors.blue),
                        Container(height: 50,width: 40, color: Colors.greenAccent),
                        Container(height: 60,width: 50, color: Colors.pink),
                           ],


                  ),

                  ),
            ],
          ),
        ),
      ),
    ),
    );
  }
}
