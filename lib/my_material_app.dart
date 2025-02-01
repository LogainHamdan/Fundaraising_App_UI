import 'package:Fundraising/screens/conversation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/chats.dart';
import 'screens/home.dart';

import 'core/util/constants.dart';

class MyMaterialApp extends StatelessWidget {
  const MyMaterialApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (ctx, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Go Fund Me',
          theme: ThemeData(
            // Use GoogleFonts.poppinsTextTheme to apply Poppins globally
            textTheme: GoogleFonts.poppinsTextTheme(
              Theme.of(context).textTheme,
            ),
            iconTheme: const IconThemeData(color: Color(0xffB2B2B2)),
            appBarTheme: const AppBarTheme(backgroundColor: Color(0xffF7F6FF)),
            scaffoldBackgroundColor: kscaffoldBackgroundColor,
            colorScheme: ColorScheme.fromSeed(seedColor: kprimaryColor),
          ),
          initialRoute: Conversation.id,
          routes: {
            Chats.id: (context) => Chats(),
            Home.id: (context) => Home(),
            Conversation.id: (context) => Conversation()
          },
        );
      },
    );
  }
}
