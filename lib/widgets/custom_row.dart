import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';

class CustomUpperRow extends StatelessWidget {
  final IconData icon1;
  final IconData icon2;
  final String title;
  final bool? stack;
  final Function()? onTapIcon1;
  final Function()? onTapIcon2;
  final int? stackNum;

  const CustomUpperRow({
    Key? key,
    required this.icon1,
    required this.icon2,
    required this.title,
    this.onTapIcon1,
    this.onTapIcon2,
    this.stack,
    this.stackNum,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    stack == false;
    return ScreenUtilInit(
      child: Padding(
        padding: EdgeInsets.only(
            top: 20.0.sp, left: 20.sp, right: 20.sp, bottom: 12.sp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
                onTap: onTapIcon1,
                child: Container(
                  height: 40.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                      color: kbackgroundColor.withOpacity(0.3),
                      shape: BoxShape.circle),
                  child: Center(
                    child: Icon(
                      icon1,
                      size: 40.sp,
                      color: kicon2Color,
                    ),
                  ),
                )),
            Text(
              title,
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Poppines',
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp),
            ),
            !(stack!)
                ? GestureDetector(
                    onTap: onTapIcon2,
                    child: Center(
                      child: Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                            color: kbackgroundColor, shape: BoxShape.circle),
                        child: Center(
                          child: Icon(
                            color: kicon2Color.withOpacity(0.4),
                            icon2,
                            size: 30.sp,
                          ),
                        ),
                      ),
                    ),
                  )
                : GestureDetector(
                    onTap: onTapIcon2,
                    child: Center(
                      child: Stack(
                        children: [
                          Container(
                            height: 40.h,
                            width: 40.w,
                            decoration: BoxDecoration(
                                color: kbackgroundColor.withOpacity(0.3),
                                shape: BoxShape.circle),
                            child: Icon(
                              color: kicon2Color,
                              icon2,
                              size: 30.sp,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: yellowColor,
                              shape: BoxShape.circle,
                              border: Border.all(
                                style: BorderStyle.solid,
                                color: Colors.black,
                                width: 1.w,
                              ),
                            ),
                            height: 18.h, // Container height
                            width: 18.w, // Container width
                            child: Center(
                              child: Text(
                                '$stackNum',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 8.sp, // Font size for the number
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
