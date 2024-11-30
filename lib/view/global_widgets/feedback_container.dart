import 'package:flutter/material.dart';

class FeedbackContainer extends StatelessWidget {
  const FeedbackContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
      child: Text(
        "Send Google feedback",
        style: TextStyle(fontSize: 30),
      ),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
    );
  }
}
