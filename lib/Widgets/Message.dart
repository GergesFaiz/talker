
import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  String massage;
  Color messageColor;

  Message(this.massage, this.messageColor, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
          ),
          color: messageColor,
        ),
        padding: EdgeInsets.all(20),
        child: Text(
          massage,
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }
}
