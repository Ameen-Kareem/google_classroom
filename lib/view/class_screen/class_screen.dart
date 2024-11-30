import 'package:flutter/material.dart';
import 'package:google_classroom/util/color_constants.dart';
import 'package:google_classroom/util/image_constants.dart';
import 'package:google_classroom/view/class_about_screen/class_about_screen.dart';
import 'package:google_classroom/view/class_screen/widgets/classes_heading.dart';

class ClassScreen extends StatefulWidget {
  ClassScreen({super.key, required this.index});
  int index;

  @override
  State<ClassScreen> createState() => _ClassScreenState();
}

class _ClassScreenState extends State<ClassScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: ColorConstants.PRIMARY,
          size: 30,
        ),
        leadingWidth: 60,
        titleSpacing: 2,
        actions: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/class_about');
            },
            child: Icon(
              Icons.info_outline,
              color: ColorConstants.PRIMARY,
              size: 30,
            ),
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
        toolbarHeight: 60,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ClassesHeading(index: widget.index),
            const SizedBox(
              height: 10,
            ),
            const AnnouncementSection(),
          ],
        ),
      ),
    );
  }
}

class AnnouncementSection extends StatelessWidget {
  const AnnouncementSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(.5),
                blurRadius: .5,
                offset: Offset(0, 1)),
          ],
          color: Colors.white),
      margin: const EdgeInsets.symmetric(
        vertical: 5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 5,
          ),
          CircleAvatar(
              radius: 25, backgroundImage: AssetImage(ImageConstants.PROFILE)),
          SizedBox(
            width: 10,
          ),
          Text("Announce something to your class",
              style: TextStyle(
                color: ColorConstants.GREY3,
              ))
        ],
      ),
    );
  }
}
