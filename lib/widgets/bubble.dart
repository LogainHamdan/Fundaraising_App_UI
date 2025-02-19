import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';
import '../core/util/constants.dart';

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isSentByMe;

  ChatBubble({super.key, required this.text, required this.isSentByMe});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSentByMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 4.h),
        padding: EdgeInsets.all(12.sp),
        decoration: BoxDecoration(
          color: isSentByMe ? blueColor : purpleColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12.r),
            topRight: Radius.circular(12.r),
            bottomLeft: isSentByMe ? Radius.circular(12.r) : Radius.zero,
            bottomRight: isSentByMe ? Radius.zero : Radius.circular(12.r),
          ),
        ),
        child: Text(
          text,
          style: GoogleFonts.poppins(fontSize: 14.sp, color: Colors.black),
        ),
      ),
    );
  }
}
