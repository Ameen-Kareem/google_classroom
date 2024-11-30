import 'package:flutter/material.dart';
import 'package:google_classroom/dummy_db.dart';
import 'package:google_classroom/util/color_constants.dart';
import 'package:google_classroom/util/font_constants.dart';
import 'package:google_classroom/view/filter_screen/filter_screen.dart';

class ClassWorkScreen extends StatefulWidget {
  const ClassWorkScreen({super.key});

  @override
  State<ClassWorkScreen> createState() => _ClassworkScreenState();
}

class _ClassworkScreenState extends State<ClassWorkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: ColorConstants.GREY3,
        ),
        title: Text(
          "${DummyDb.CLASSES[0]["class"]}",
          style: FontConstants.PRIMARYFONT
              .copyWith(color: ColorConstants.BLUE2, fontSize: 20),
        ),
        elevation: 2,
        shadowColor: Colors.black,
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FilterScreen(),
                  ));
            },
            child: Icon(
              Icons.filter_list_outlined,
              color: ColorConstants.GREY3,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.person,
            color: ColorConstants.GREY3,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.more_vert,
            color: ColorConstants.GREY3,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      // body: Column(
      //   children: [Text("${DummyDb.CLASSES[0]["classwork"]["topic"]}")],
      // ),
    );
  }
}
