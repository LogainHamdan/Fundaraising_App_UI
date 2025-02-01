import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SlideToCancelWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.lock_clock, color: Colors.white),
          SizedBox(width: 10),
          Text("Slide to cancel",
              style: GoogleFonts.poppins(color: Colors.white, fontSize: 14)),
          Spacer(),
          Icon(Icons.fingerprint, color: Colors.white),
        ],
      ),
    );
  }
}
