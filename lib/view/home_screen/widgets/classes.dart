import 'package:flutter/material.dart';
import 'package:google_classroom/dummy_db.dart';

// ignore: must_be_immutable
class Classes extends StatelessWidget {
  Classes({super.key, required this.index});
  int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 10, left: 20, top: 10, bottom: 15),
      height: 140,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${DummyDb.CLASSES[index]["class"]}",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 28),
              ),
              const Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 30,
              ),
            ],
          ),
          Text(
            "${DummyDb.CLASSES[index]["admin"]}",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
          )
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.green,
      ),
    );
  }
}
