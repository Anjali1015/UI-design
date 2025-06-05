import 'package:flutter/material.dart';
class tablet extends StatelessWidget {
  const tablet({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children:[
        Container(
          color:Colors.pink,
          child: Text("Tablet"),
        )
      ],
    );
  }
}
