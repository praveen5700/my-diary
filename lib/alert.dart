import 'package:flutter/material.dart';

class Alert extends StatefulWidget {
  final Widget? title;
  final String? heading;
  final String? subheading;
  const Alert({super.key,required this.title,this.heading,this.subheading});

  @override
  State<Alert> createState() => _AlertState();
}

class _AlertState extends State<Alert> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title:widget.title,
        content:  SingleChildScrollView(
          child: ListBody(
            children: [
              Text('${widget.heading}'),
              Text('${widget.subheading}'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Approve'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
  }
}