import 'package:flutter/material.dart';
import 'package:google_classroom/dummy_db.dart';
import 'package:google_classroom/util/color_constants.dart';

class ClassAboutScreen extends StatelessWidget {
  const ClassAboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          child: Icon(
            Icons.arrow_back,
            size: 28,
          ),
        ),
        title: Text(
          "About",
          style: TextStyle(color: Colors.black, fontSize: 23),
        ),
        actions: [
          Icon(
            Icons.more_vert,
            color: Colors.grey[800],
            size: 28,
          ),
          SizedBox(
            width: 10,
          )
        ],
        elevation: 2,
        shadowColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Class Name",
              style: TextStyle(
                  color: ColorConstants.SECONDARYBLUE,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              "${DummyDb.CLASSES[0]["class"]}",
              style: TextStyle(fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
