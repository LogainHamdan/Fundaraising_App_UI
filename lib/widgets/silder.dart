import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SlideToCancelWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.lock_clock, color: Colors.white),
          SizedBox(width: 10.w),
          Text("Slide to cancel",
              style: GoogleFonts.poppins(color: Colors.white, fontSize: 14.sp)),
          Spacer(),
          Icon(Icons.fingerprint, color: Colors.white),
        ],
      ),
    );
  }
}
