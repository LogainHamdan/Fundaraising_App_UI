import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../providers/chats.dart';

class ChatInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ChatProvider>(context);
    return TextField(
      controller: provider.controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.shade800,
        hintText: "Type a message...",
        hintStyle: GoogleFonts.poppins(color: Colors.white70),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none),
      ),
    );
  }
}
