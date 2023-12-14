import 'package:amigo/Utils/Constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customCircle(String imgVal, String text) {
  return Column(
    children: <Widget>[
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: CircleAvatar(
          backgroundImage: NetworkImage(imgVal),
          radius: 70.r,
        ),
      ),
      Text(
        text,
        style: TextStyle(
          fontSize: 12.0.sp,
          color: MyColors.whiteColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}
