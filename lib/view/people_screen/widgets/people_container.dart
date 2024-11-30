import 'package:flutter/material.dart';

class PeopleContainer extends StatelessWidget {
  PeopleContainer({super.key, required this.name});
  String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            child: Text(
              "${name[0]}",
              style: TextStyle(color: Colors.white, fontSize: 27),
            ),
            backgroundColor: Colors.green,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            "$name",
            style: TextStyle(
                color: Colors.black, fontSize: 17, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
