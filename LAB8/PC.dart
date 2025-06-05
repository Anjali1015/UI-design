import 'package:flutter/material.dart';
class PC extends StatelessWidget {
  const PC({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children:[
        Container(
          color:Colors.greenAccent,
          child: Text("PC"),
        )
      ],
    );
  }
}
