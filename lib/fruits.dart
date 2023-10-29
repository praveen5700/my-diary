import 'package:flutter/material.dart';

class Fruits extends StatelessWidget {
const Fruits({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
	return Container(
	child: Center(
		child: Text(
		"Page Number 3",
		style: TextStyle(
			fontSize: 45,
			fontWeight: FontWeight.w500,
		),
		),
	),
	);
}
}