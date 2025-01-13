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
            fontFamily: 'Poppines',
            iconTheme: const IconThemeData(color: Color(0xffB2B2B2)),
            textTheme: TextTheme(
              bodySmall: TextStyle(
                  color: const Color(0xffB2B2B2),
                  fontSize: 12.sp,
                  fontFamily: 'Poppines'),
              bodyMedium: TextStyle(
                fontFamily: 'Poppines',
                color: const Color(0xff272727),
                fontSize: 18.sp,
              ),
            ),
            appBarTheme: const AppBarTheme(backgroundColor: Color(0xffF7F6FF)),
            scaffoldBackgroundColor: kscaffoldBackgroundColor,
            colorScheme: ColorScheme.fromSeed(seedColor: kprimaryColor),
          ),
          initialRoute: Chats.id,
          routes: {Chats.id: (context) => Chats()},
        );
      },
    );
  }
}
