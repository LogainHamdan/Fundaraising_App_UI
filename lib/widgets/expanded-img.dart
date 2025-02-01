import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExpandedImage extends StatelessWidget {
  final String img;
  const ExpandedImage({
    super.key,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25.0.r),
            bottomRight: Radius.circular(25.0.r),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25.0.r),
            bottomRight: Radius.circular(25.0.r),
          ),
          child: Transform.rotate(
            angle: -pi / 900, // Adjust this value for manual rotation
            alignment: Alignment.bottomLeft, // Rotates from bottom-left corner
            child: Image.asset(
              img,
              fit: BoxFit.cover, // Ensure it fills the container
            ),
          ),
        ),
      ),
    );
  }
}
