import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/util/constants.dart';

class CustomStatusRow extends StatelessWidget {
  final String imgPath;
  final String num;
  final String dot;
  final double height;
  final double width;
  final double leftPadding;
  final double? sizedbox;
  const CustomStatusRow({
    super.key,
    required this.imgPath,
    required this.num,
    required this.dot,
    required this.height,
    required this.width,
    required this.leftPadding,
    this.sizedbox,
  });

  @override
  Widget build(BuildContext context) {
    return sizedbox == null
        ? Padding(
            padding: EdgeInsets.only(left: leftPadding.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  imgPath,
                  height: height.h,
                  width: width.w,
                ),
                Text(
                  '\$$num',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10.sp,
                      fontFamily: 'Poppines',
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  '.$dot',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 10.sp,
                      fontFamily: 'Poppines',
                      color: textColor),
                ),
              ],
            ),
          )
        : Padding(
            padding: EdgeInsets.only(left: leftPadding.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  imgPath,
                  height: height.h,
                  width: width.w,
                ),
                SizedBox(
                  width: sizedbox!.w,
                ),
                Text(
                  '\$$num',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10.sp,
                      fontFamily: 'Poppines',
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  '.$dot',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 10.sp,
                      fontFamily: 'Poppines',
                      color: textColor),
                ),
              ],
            ),
          );
  }
}
