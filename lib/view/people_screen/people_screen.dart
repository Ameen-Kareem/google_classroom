import 'package:flutter/material.dart';
import 'package:google_classroom/dummy_db.dart';
import 'package:google_classroom/util/color_constants.dart';
import 'package:google_classroom/util/font_constants.dart';
import 'package:google_classroom/view/people_screen/widgets/people_container.dart';

class PeopleScreen extends StatefulWidget {
  const PeopleScreen({super.key});

  @override
  State<PeopleScreen> createState() => _PeopleScreenState();
}

class _PeopleScreenState extends State<PeopleScreen> {
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
          Icon(
            Icons.more_vert,
            color: ColorConstants.GREY3,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: ColorConstants.BLUE2))),
                child: Text(
                  "Teachers",
                  style: TextStyle(color: ColorConstants.BLUE2, fontSize: 27),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              PeopleContainer(name: "Neethu Unni"),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: ColorConstants.BLUE2))),
                child: Text(
                  "Classmates",
                  style: TextStyle(color: ColorConstants.BLUE2, fontSize: 27),
                ),
              ),
              Column(
                children: List.generate(
                  20,
                  (index) => Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: PeopleContainer(
                          name: "${DummyDb.Students[0]["Students"][index]}")),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
