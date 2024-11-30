import 'package:flutter/material.dart';
import 'package:google_classroom/dummy_db.dart';

class ClassesHeading extends StatelessWidget {
  const ClassesHeading({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 10, left: 20, top: 10, bottom: 15),
      height: 140,
      width: double.infinity,
      alignment: Alignment.bottomLeft,
      child: Text(
        "${DummyDb.CLASSES[index]["class"]}",
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w500, fontSize: 28),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.green,
      ),
    );
  }
}
