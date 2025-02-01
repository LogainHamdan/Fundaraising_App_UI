import 'package:Fundraising/constants.dart';
import 'package:Fundraising/core/util/constants.dart';
import 'package:Fundraising/widgets/custom-button.dart';
import 'package:Fundraising/widgets/custom-home-container.dart';
import 'package:Fundraising/widgets/custom_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../data/added cards.dart';
import '../widgets/custom-content.dart';
import '../widgets/custom-data-row.dart';
import '../widgets/custom-image.dart';
import '../widgets/expanded-img.dart';
import '../widgets/status-row.dart';
import 'chats.dart';

class Home extends StatelessWidget {
  static const id = '/home';

  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        child: MaterialApp(
      home: Scaffold(
          backgroundColor: kscaffoldBackgroundColor,
          body: SingleChildScrollView(
              child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 2.0.w,
                  right: 2.0.w,
                  top: 1.0.w,
                  bottom: 1.0.w,
                ),
                child: Container(
                  height: 215.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Column(
                    children: [
                      CustomUpperRow(
                          icon1: Icons.arrow_left_outlined,
                          icon2: Icons.settings,
                          onTapIcon1: () =>
                              Navigator.pushReplacementNamed(context, Chats.id),
                          stack: false,
                          title: 'My Campaign'),
                      SizedBox(
                        height: 14.h,
                      ),
                      Text(
                        'Overall campaign balance',
                        style: TextStyle(
                            fontSize: 10.sp,
                            fontFamily: 'Poppines',
                            fontWeight: FontWeight.w600,
                            color: textColor),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '\$122,241',
                            style: TextStyle(
                                fontSize: 30.sp,
                                fontFamily: 'Poppines',
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          Text(
                            '.00',
                            style: TextStyle(
                                fontSize: 30.sp,
                                fontFamily: 'Poppines',
                                fontWeight: FontWeight.w600,
                                color: textColor),
                          ),
                        ],
                      ),
                      SizedBox(height: 14.h),
                      CustomElevatedButton(
                          onPressed: () {}, text: 'Withdraw Funds'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.0.w),
                child: Row(
                  children: [
                    Column(
                      children: [
                        HomeContainer(
                          color: textColor,
                          height: 130.h,
                          // Total height of the container
                          width: 175.w,
                          // Total width of the container
                          child: Column(
                            children: [
                              // First part (purple color) - takes up half of the container
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20.r),
                                        topLeft: Radius.circular(20.r),
                                      ),
                                      color: purpleColor),
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(width: 12.w),
                                      CustomImage(
                                          imgPath: 'assets/images/boy2.png',
                                          height: 40,
                                          width: 40),
                                      SizedBox(
                                        width: 4.w,
                                      ),
                                      CustomImage(
                                          imgPath: 'assets/images/boy1.png',
                                          height: 40,
                                          width: 40),
                                      SizedBox(
                                        width: 8.w,
                                      ),
                                      Container(
                                        height: 40.h,
                                        width: 40.w,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.purple[300]),
                                        child: Center(
                                          child: Text(
                                            '+8',
                                            style: TextStyle(
                                                fontFamily: 'Poppines',
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12.sp,
                                                color: Colors.black),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              // Second part (features) - takes up the remaining half
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20.r),
                                        bottomRight: Radius.circular(20.r),
                                      ),
                                      color: Colors.white),
                                  width: MediaQuery.of(context).size.width,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8.0.sp),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Donation Jar',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Poppines',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12.sp,
                                          ),
                                        ),
                                        SizedBox(height: 1.h),
                                        Text(
                                          '\$245.00 left',
                                          style: TextStyle(
                                            fontSize: 10.sp,
                                            fontFamily: 'Poppines',
                                            fontWeight: FontWeight.w600,
                                            color: textColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        HomeContainer(
                            height: 180.h,
                            width: 175.w,
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 12.0.h),
                                  child: Text(
                                    'Campaign Goal',
                                    style: TextStyle(
                                        fontSize: 8.sp,
                                        fontFamily: 'Poppines',
                                        fontWeight: FontWeight.w600,
                                        color: textColor),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '\$320,000',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Poppines',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14.sp),
                                    ),
                                    Text(
                                      '.00',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14.sp,
                                          fontFamily: 'Poppines',
                                          color: textColor),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                ExpandedImage(img: 'assets/images/chart.jpeg')
                              ],
                            ),
                            color: Colors.white),
                        SizedBox(
                          height: 1.h,
                        ),
                        HomeContainer(
                            height: 80.h,
                            width: 175.w,
                            child: CustomContentOfContainers(
                              img: 'assets/images/girl1.png',
                              amount: '16,420.00',
                              name: 'Hafrasha',
                            ),
                            color: blueColor),
                        SizedBox(height: 1.h),
                        HomeContainer(
                            height: 80.h,
                            width: 175.w,
                            child: CustomContentOfContainers(
                              img: 'assets/images/boy2.png',
                              amount: '24,240.00',
                              name: 'Maaser',
                            ),
                            color: greenColor),
                      ],
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Column(
                      children: [
                        HomeContainer(
                            height: 210.h,
                            width: 175.w,
                            child: Padding(
                              padding: EdgeInsets.only(top: 14.0.sp),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      CustomStatusRow(
                                        leftPadding: 11,
                                        height: 18,
                                        width: 18,
                                        imgPath: 'assets/images/green.png',
                                        num: '80,110',
                                        dot: '75',
                                      ),
                                      // CustomStatusRow(
                                      //   leftPadding: 0,
                                      //   height: 50,
                                      //   width: 50,
                                      //   imgPath: 'assets/images/yellow.png',
                                      //   num: '1,100',
                                      //   dot: '00',
                                      // ),
                                    ],
                                  ),
                                  CustomStatusRow(
                                    leftPadding: 8,
                                    height: 22,
                                    width: 22,
                                    imgPath: 'assets/images/blue.png',
                                    num: '40,121',
                                    dot: '15',
                                  ),
                                  CustomStatusRow(
                                    sizedbox: 3,
                                    leftPadding: 10,
                                    height: 17,
                                    width: 17,
                                    imgPath: 'assets/images/yellow.png',
                                    num: '40,121',
                                    dot: '15',
                                  ),
                                  SizedBox(
                                    height: 8.h,
                                  ),
                                  ExpandedImage(
                                    img: 'assets/images/wave2.png',
                                  ),
                                ],
                              ),
                            ),
                            color: Colors.grey[300]!),
                        SizedBox(
                          height: 1.h,
                        ),
                        HomeContainer(
                            height: 80.h,
                            width: 175.w,
                            child: CustomContentOfContainers(
                              img: 'assets/images/boy3.png',
                              amount: '28,560.00',
                              name: 'Hafrasha',
                            ),
                            color: blueColor),
                        SizedBox(
                          height: 1.h,
                        ),
                        HomeContainer(
                            height: 180.h,
                            width: 175.w,
                            child: Padding(
                                padding: EdgeInsets.only(
                                  top: 16.sp,
                                ),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Text(
                                        '8 cards',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 10.sp,
                                          fontFamily: 'Poppines',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        'Added Cards',
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontFamily: 'Poppines',
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(height: 10.h),
                                      ...dataRows.map((row) => CustomDataRow(
                                            decrease: row['decrease'],
                                            text1: row['text1'],
                                            text2: row['text2'],
                                          )),
                                    ],
                                  ),
                                )),
                            color: Colors.white),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ))),
    ));
  }
}
