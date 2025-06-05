import 'package:flutter/material.dart';
import 'package:mediaquery/mobile.dart';
import 'package:mediaquery/tablet.dart';
import 'package:mediaquery/PC.dart';
void main() {
  runApp(const MYAPP());
}
class MYAPP extends StatelessWidget {
 const MYAPP({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'MediaQuery',
      theme:ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    ),
        home:Desktop()
    );
  }
}


class Desktop extends StatefulWidget {
  const Desktop({super.key});
  State<Desktop> createState() => _Desktop();
}

class _Desktop extends State<Desktop> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      appBar: AppBar(title:Text("Responsive UI")),
      body:LayoutBuilder(
        builder:(context,constraints) {
          if (constraints.maxWidth >= 600 && constraints.maxWidth <= 1200) {
            return tablet();
          } else if (constraints.maxWidth < 600) {
            return mobile();
          } else  {
            return PC();
          }
        }
      )
    ),
    );
  }
}
