import 'package:Fundraising/core/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/home.dart';
import 'custom-image.dart';

class ChatHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pushReplacementNamed(context, Home.id),
        ),
        Expanded(
          child: Row(
            children: [
              CustomImage(
                  imgPath: 'assets/images/boy2.png', height: 25.h, width: 25.w),
              SizedBox(width: 12.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Mike Smith",
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                  Text("Online",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          color: blueColor,
                          fontSize: 12)),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
