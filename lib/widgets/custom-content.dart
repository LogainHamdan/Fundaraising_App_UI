import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom-image.dart';

class CustomContentOfContainers extends StatelessWidget {
  final String img;
  final String name;
  final String amount;
  const CustomContentOfContainers({
    super.key,
    required this.img,
    required this.name,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 14.0.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImage(
            imgPath: img,
            height: 40,
            width: 40,
          ),
          SizedBox(
            width: 8.w,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 30.sp,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      fontFamily: 'Poppines',
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 12.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  '\$$amount',
                  style: TextStyle(
                      fontFamily: 'Poppines',
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[600],
                      fontSize: 10.sp),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
