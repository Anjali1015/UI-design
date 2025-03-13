import 'package:switchpack/switchpack.dart';

import 'dart:io';
void main(List<String> arguments) {
	switchpack sp =  switchpack();
	print("Enter color");
	String color =stdin.readLineSync()!;
	print(sp.checkcolor(color));
}
