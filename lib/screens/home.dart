import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';

class Home extends StatelessWidget {
  static const id = '/home';

  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MaterialApp(
        home: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  height: 200.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40.r),
                          bottomRight: Radius.circular(40.r))),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 15.h,
                                width: 15.w,
                                decoration: BoxDecoration(
                                    color: kbackgroundColor,
                                    shape: BoxShape.circle),
                                child: Icon(
                                  size: 12.sp,
                                  color: kicon2Color,
                                  Icons.navigate_before_outlined,
                                ),
                              )),
                          Text(
                            'Chats',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Poppines',
                                fontWeight: FontWeight.w600,
                                fontSize: 20.sp),
                          ),
                          GestureDetector(
                              onTap: () {},
                              child: Stack(
                                children: [
                                  Container(
                                    decoration:
                                        BoxDecoration(color: yellowColor),
                                  ),
                                  Container(
                                    height: 15.h,
                                    width: 15.w,
                                    decoration: BoxDecoration(
                                        color: kbackgroundColor,
                                        shape: BoxShape.circle),
                                    child: Icon(
                                      color: kicon2Color,
                                      Icons.person,
                                      size: 12.sp,
                                    ),
                                  ),
                                ],
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
