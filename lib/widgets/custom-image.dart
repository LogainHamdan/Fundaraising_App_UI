import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomImage extends StatelessWidget {
  final String imgPath;
  final double height;
  final double width;
  const CustomImage(
      {super.key,
      required this.imgPath,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        // Optional: Add border or shadow to enhance the appearance

        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            // Shadow color
            blurRadius: 8,
            // Shadow radius
            offset: Offset(0, 2), // Shadow direction
          ),
        ],
      ),
      child: ClipOval(
        // Ensures that the image fits inside the circular shape
        child: Image.asset(
          imgPath,
          fit: BoxFit.cover,
          height: height.h,
          width: width.w,
        ),
      ),
    );
  }
}
