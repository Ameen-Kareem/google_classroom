import 'package:flutter/material.dart';
import 'package:google_classroom/dummy_db.dart';
import 'package:google_classroom/util/color_constants.dart';
import 'package:google_classroom/util/font_constants.dart';
import 'package:google_classroom/util/image_constants.dart';
import 'package:google_classroom/view/bottom_nav/bottom_nav.dart';
import 'package:google_classroom/view/home_screen/widgets/classes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: Container(
          height: 70,
          width: 70,
          child: FloatingActionButton(
            elevation: 10,
            child: Icon(
              Icons.add,
              color: Colors.blue.shade900,
              size: 30,
            ),
            shape: CircleBorder(),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => Container(
                  padding: EdgeInsets.all(30),
                  height: 140,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => Navigator.pushNamed(context, '/join'),
                        child: Text(
                          "Join class",
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.w500),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) => CreateClassDialog());
                        },
                        child: Text(
                          "Create class",
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        appBar: AppBar(
          leading: Icon(
            Icons.menu,
            color: ColorConstants.PRIMARY,
            size: 30,
          ),
          leadingWidth: 60,
          titleSpacing: 2,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Google ",
                style: FontConstants.PRIMARYFONT.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: ColorConstants.PRIMARY,
                ),
              ),
              Text(
                "Classroom",
                style: FontConstants.PRIMARYFONT.copyWith(
                  fontSize: 20,
                  color: ColorConstants.PRIMARY,
                ),
              )
            ],
          ),
          actions: [
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AccountSections(),
                );
              },
              child: CircleAvatar(
                  radius: 18,
                  backgroundImage: AssetImage(ImageConstants.PROFILE)),
            ),
            const SizedBox(
              width: 20,
            ),
            const Icon(
              Icons.more_vert,
              size: 30,
            ),
            const SizedBox(
              width: 10,
            ),
          ],
          shadowColor: Colors.black,
          elevation: 2,
          toolbarHeight: 70,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        BottomNav(index: index)));
                          },
                          child: Classes(index: index)),
                    ),
                itemCount: DummyDb.CLASSES.length)
          ],
        ),
      ),
    );
  }
}

class CreateClassDialog extends StatelessWidget {
  CreateClassDialog({super.key});
  Color activeColor = ColorConstants.GREY2;
  bool? checkValue = false;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(4)),
      actions: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                "Using Classroom in a school or\nuniversity with students?",
                style: FontConstants.REGULARTEXT
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              const SizedBox(
                height: 10,
              ),
              RichText(
                text: TextSpan(
                    text: "If so, your school must sign up for a ",
                    style: FontConstants.REGULARTEXT,
                    children: [
                      TextSpan(
                          text: "Google WorkSpace for Education\n",
                          style: FontConstants.HYPERLINKFONT),
                      TextSpan(
                          text: "account before you can use\nClassroom. ",
                          style: FontConstants.REGULARTEXT),
                      TextSpan(
                          text: "Learn More.",
                          style: FontConstants.HYPERLINKFONT),
                    ]),
              ),
              const SizedBox(
                height: 10,
              ),
              RichText(
                text: TextSpan(
                    text:
                        "Google workspace for Education lets\nschools decide which Google services their students can use, and\nprovides additional ",
                    style: FontConstants.REGULARTEXT,
                    children: [
                      TextSpan(
                          text: "privacy and security",
                          style: FontConstants.HYPERLINKFONT),
                      TextSpan(
                        text:
                            " protections that are\nimportant in a school setting.\nStudents cannot use Google\nClassroom at a school with personal\naccounts.",
                        style: FontConstants.REGULARTEXT,
                      ),
                    ]),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: ColorConstants.GREY,
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    StatefulBuilder(
                      builder: (context, setState) => Checkbox(
                        value: checkValue,
                        onChanged: (value) {
                          checkValue = value;
                          setState(() {});
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      "I've read and\nunderstand the notice\nabove, and I'm not\nusing Classroom in a\nschool",
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                            color: ColorConstants.SECONDARYBLUE,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      )),
                  const SizedBox(
                    width: 20,
                  ),
                  StatefulBuilder(
                    builder: (context, setState) => Text(
                      "Continue",
                      style: TextStyle(
                          color: checkValue == true
                              ? ColorConstants.SECONDARYBLUE
                              : ColorConstants.GREY2,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

class AccountSections extends StatelessWidget {
  const AccountSections({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
      actions: [
        Column(
          children: [
            Row(
              children: [
                InkWell(
                  child: Icon(
                    Icons.close,
                    color: ColorConstants.PRIMARY,
                  ),
                  onTap: () => Navigator.pop(context),
                ),
                SizedBox(
                  width: 40,
                ),
                Image.asset(
                  ImageConstants.GOOGLE,
                  height: 50,
                  width: 100,
                )
              ],
            ),
            _emailSection(),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(Icons.person_add_alt_outlined),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Add another account",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(Icons.manage_accounts_outlined),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Manage Accounts",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}

Widget _emailSection() {
  return Container(
    decoration: BoxDecoration(
        border: BorderDirectional(
            bottom: BorderSide(color: ColorConstants.PRIMARY))),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 22,
          backgroundImage: AssetImage(ImageConstants.PROFILE),
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
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
            SizedBox(
              height: 1,
            ),
            Text(
              "user@gmail.com",
              style: TextStyle(color: ColorConstants.PRIMARY),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: ColorConstants.GREY2,
                  ),
                  borderRadius: BorderRadius.circular(50)),
              child: Text(
                "Manage your Google Account",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ],
    ),
  );
}
