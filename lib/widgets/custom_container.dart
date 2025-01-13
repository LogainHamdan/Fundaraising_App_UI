import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/util/constants.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  final bool allBorderRaduis;
  final Color? color;
  const CustomContainer({
    super.key,
    required this.child,
    required this.allBorderRaduis,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return !allBorderRaduis
        ? Container(
            height: 210.h,
            width: double.infinity,
            decoration: color == null
                ? BoxDecoration(
                    // color: containerBackgroundColor,
                    gradient: LinearGradient(colors: [
                      Colors.white70,
                      containerBackgroundColor,
                      Colors.white70,
                    ]),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(40.r),
                        bottomLeft: Radius.circular(40.r)))
                : BoxDecoration(
                    // color: containerBackgroundColor,
                    color: color,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(40.r),
                        bottomLeft: Radius.circular(40.r))),
            child: child)
        : Container(
            height: 230.h,
            width: double.infinity,
            decoration: color == null
                ? BoxDecoration(
                    // color: containerBackgroundColor,
                    gradient: LinearGradient(
                        colors: [containerBackgroundColor, Colors.white70]),
                    borderRadius: BorderRadius.circular(40.r))
                : BoxDecoration(
                    // color: containerBackgroundColor,
                    color: color,
                    borderRadius: BorderRadius.circular(40.r)),
            child: child);
  }
}
