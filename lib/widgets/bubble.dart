import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';
import '../core/util/constants.dart';

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isSentByMe;

  ChatBubble({required this.text, required this.isSentByMe});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSentByMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 4),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isSentByMe ? blueColor : purpleColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
            bottomLeft: isSentByMe ? Radius.circular(12) : Radius.zero,
            bottomRight: isSentByMe ? Radius.zero : Radius.circular(12),
          ),
        ),
        child: Text(
          text,
          style: GoogleFonts.poppins(fontSize: 14, color: Colors.black),
        ),
      ),
    );
  }
}
