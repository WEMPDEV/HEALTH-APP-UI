import 'package:flutter/material.dart';
class emotions extends StatelessWidget {

  final String emotionsface;
  const emotions({
    Key? key,
   required this.emotionsface,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
        color: Colors.blue[600],
        borderRadius: BorderRadius.circular(16)
    ),
    child: Padding(
    padding: const EdgeInsets.all(12.0),
    child: Center(
      child: Text(emotionsface,
      style: TextStyle(
        fontSize: 30,
      ),),
    ),),
    );
  }
}
