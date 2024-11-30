import 'package:flutter/material.dart';
import 'package:google_classroom/util/color_constants.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: ColorConstants.GREY3,
          ),
        ),
        title: Text(
          "Filter by topic",
          style: TextStyle(
            color: ColorConstants.PRIMARY,
          ),
        ),
        actions: [
          Icon(
            Icons.more_vert,
            color: ColorConstants.GREY3,
          )
        ],
        shadowColor: Colors.black,
        elevation: 2,
      ),
    );
  }
}
