import 'package:flutter/material.dart';
import 'package:google_classroom/util/color_constants.dart';
import 'package:google_classroom/util/font_constants.dart';

class JoinClass extends StatelessWidget {
  JoinClass({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
              Navigator.pop(context);
            },
            child: Icon(
              Icons.close,
              color: ColorConstants.PRIMARY,
              size: 30,
            ),
          ),
          title: Text(
            "Join class",
            style: TextStyle(fontSize: 21),
          ),
          actions: [
            Container(
              padding:
                  EdgeInsetsDirectional.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: ColorConstants.SECONDARYBLUE),
              child: InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                            actions: [
                              Container(
                                height: 140,
                                width: 400,
                                padding: EdgeInsets.only(
                                  left: 10,
                                  right: 10,
                                  top: 20,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "Class not found",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "No class with that class code",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    Spacer(),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "Learn more",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color:
                                                  ColorConstants.SECONDARYBLUE,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        InkWell(
                                          onTap: () => Navigator.pop(context),
                                          child: Text(
                                            "OK",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: ColorConstants
                                                    .SECONDARYBLUE,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ));
                },
                child: Text(
                  "Join",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.more_vert,
              size: 30,
            ),
            SizedBox(
              width: 10,
            ),
          ],
          toolbarHeight: 65,
          shadowColor: Colors.black,
          elevation: 2,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "You're currently signed in as",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                ),
                SizedBox(
                  height: 20,
                ),
                EmailDetails(),
                SizedBox(
                  height: 30,
                ),
                ClassCode(),
                SizedBox(
                  height: 40,
                ),
                JoinRules(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class EmailDetails extends StatelessWidget {
  const EmailDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: BorderDirectional(
              bottom: BorderSide(color: ColorConstants.PRIMARY))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 27,
            backgroundColor: Colors.blue,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "user",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                "user@gmail.com",
                style: TextStyle(color: ColorConstants.PRIMARY),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Switch Account",
                  style: TextStyle(
                      color: ColorConstants.SECONDARYBLUE,
                      fontSize: 17,
                      fontWeight: FontWeight.w600)),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ClassCode extends StatelessWidget {
  const ClassCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Ask your teacher for the class code, then enter it\nhere.",
          style: TextStyle(fontSize: 17),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.all(20),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: ColorConstants.SECONDARYBLUE)),
              labelText: "Class Code",
              labelStyle: TextStyle(color: ColorConstants.SECONDARYBLUE)),
        )
      ],
    );
  }
}

class JoinRules extends StatelessWidget {
  const JoinRules({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "To sign in with a class code",
            style: FontConstants.PRIMARYFONT
                .copyWith(fontWeight: FontWeight.w900, fontSize: 17),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 2.5,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Use an authorised account",
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 2.5,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "User a class code with 6-8 letters or numbers\nand no spaces or symbols",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "If you have trouble joining the class, go to the",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "help center article",
                style: TextStyle(
                    fontSize: 16,
                    color: ColorConstants.SECONDARYBLUE,
                    decoration: TextDecoration.underline),
              ),
            ],
          )
        ],
      ),
    );
  }
}
