import 'package:Fundraising/widgets/custom-image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/bubble.dart';
import '../widgets/card.dart';
import '../widgets/chat-header.dart';
import '../widgets/input-field.dart';
import '../widgets/silder.dart';
import 'home.dart';

class Conversation extends StatelessWidget {
  static const id = '/conv';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(16.0.sp),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  SizedBox(height: 40.h),
                  ChatHeader(),
                  SizedBox(height: 20.h),
                  ChatBubble(
                      text: "My friends and I are raising money to help Mira",
                      isSentByMe: false),
                  ChatBubble(text: "Are u with us?", isSentByMe: false),
                  ChatBubble(
                      text:
                          "Yes, put my name down in that list of the donations.",
                      isSentByMe: true),
                  DonationCard(),
                ],
              ),
            ),
            SlideToCancelWidget(),
            SizedBox(height: 20.h),
            ChatInputField(),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}
