import 'package:Fundraising/constants.dart';
import 'package:Fundraising/core/util/constants.dart';
import 'package:Fundraising/widgets/custom-image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DonationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [blueColor, purpleColor]),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomImage(
                  imgPath: 'assets/images/boy2.png', height: 25.h, width: 25.w),
              Spacer(),
              Icon(Icons.more_vert, color: Colors.white),
            ],
          ),
          SizedBox(height: 10),
          Text("VISA",
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Text("Total Donation",
              style: GoogleFonts.poppins(color: Colors.white, fontSize: 14)),
          Text("\$1,123.20",
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold)),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text("\$345 left",
                  style:
                      GoogleFonts.poppins(fontSize: 12, color: Colors.black)),
            ),
          ),
        ],
      ),
    );
  }
}
