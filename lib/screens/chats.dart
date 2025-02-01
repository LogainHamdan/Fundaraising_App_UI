import 'package:Fundraising/data/persons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Fundraising/constants.dart';
import '../core/util/constants.dart';
import '../data/chats.dart';
import '../widgets/custom_container.dart';
import '../widgets/custom_row.dart';
import 'conversation.dart';
import 'home.dart';

class Chats extends StatelessWidget {
  static const id = '/chats';

  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, String> persons = getPersons;
    final List<Map<String, String>> chats = getChatData;

    return ScreenUtilInit(
      child: MaterialApp(
        home: Scaffold(
          backgroundColor: kscaffoldBackgroundColor,
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.w),
              child: Column(
                children: [
                  CustomContainer(
                    color: Colors.grey[400],
                    allBorderRaduis: false,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 8.h,
                        ),
                        CustomUpperRow(
                          icon1: Icons.arrow_left_sharp,
                          icon2: Icons.person_sharp,
                          title: 'Chats',
                          stack: true,
                          stackNum: 9,
                          onTapIcon1: () =>
                              Navigator.pushReplacementNamed(context, Home.id),
                          onTapIcon2: () =>
                              Navigator.pushReplacementNamed(context, Home.id),
                        ),
                        SizedBox(
                          height: 100.h,
                          child: Padding(
                            padding: EdgeInsets.only(right: 8.0.sp, left: 2.sp),
                            child: ListView.separated(
                              separatorBuilder: (context, index) => SizedBox(
                                width: 2.w,
                              ),
                              reverse: true,
                              scrollDirection: Axis.horizontal,
                              // Ensure horizontal scrolling
                              itemBuilder: (context, index) {
                                String name = persons.keys.elementAt(index);
                                String imageUrl =
                                    persons.values.elementAt(index);

                                return Container(
                                  width: 95.w,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30.r),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment
                                        .center, // Center contents
                                    children: [
                                      // Display the image in the center
                                      Container(
                                        height:
                                            40.h, // Smaller size for the image
                                        width: 45.w,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          // Circular shape for the image
                                          image: DecorationImage(
                                            image: AssetImage(imageUrl),
                                            fit: BoxFit
                                                .contain, // Ensure the image is fully visible
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10.h),
                                      // Display the name
                                      Flexible(
                                        child: Text(
                                          name,
                                          style: TextStyle(
                                            color: textColor,
                                            // fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppines',
                                            fontSize: 14
                                                .sp, // Adjust text size to fit
                                          ),
                                          textAlign: TextAlign
                                              .center, // Align the text
                                          overflow: TextOverflow
                                              .ellipsis, // Handle long names gracefully
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                              itemCount: persons.length,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Container(
                    height: 350.h,
                    width: double.infinity.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0.sp),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 230.sp, top: 8.sp),
                            child: Text(
                              'Recent Chat',
                              style: TextStyle(
                                  color: textColor,
                                  fontFamily: 'Poppines',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.sp),
                            ),
                          ),
                          SizedBox(
                            height: 320.h,
                            child: ListView.separated(
                              itemBuilder: (context, index) {
                                var chat = chats[index];
                                return GestureDetector(
                                  onTap: () => Navigator.pushNamed(
                                      context, Conversation.id),
                                  child: ListTile(
                                    leading: CircleAvatar(
                                      radius: 30.r,
                                      backgroundImage:
                                          AssetImage(chat['image']!),
                                    ),
                                    title: Text(
                                      chat['name']!,
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Poppines'),
                                    ),
                                    subtitle: Text(
                                      chat['message']!,
                                      style: TextStyle(
                                          fontSize: 10.sp,
                                          fontFamily: 'Poppines'),
                                    ),
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) =>
                                  SizedBox(height: 2.h),
                              itemCount: chats.length,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  CustomContainer(
                    color: Colors.white,
                    allBorderRaduis: true,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30.0.sp),
                          child: Column(
                            children: [
                              Container(
                                margin:
                                    EdgeInsets.only(right: 220.sp, top: 8.sp),
                                child: Text(
                                  'Group Chat',
                                  style: TextStyle(
                                      color: textColor,
                                      fontFamily: 'Poppines',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.sp),
                                ),
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Stack(
                                        children: [
                                          Container(
                                            height: 70.h,
                                            width: 70.w,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20.r),
                                              color: Colors.blue[100],
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  right: 5.0.sp, bottom: 8.sp),
                                              child: Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Container(
                                                  child: Center(
                                                    child: Text(
                                                      '+6',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontFamily:
                                                              'Poppines',
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 8.sp),
                                                    ),
                                                  ),
                                                  height: 30
                                                      .h, // Inner container size
                                                  width: 25
                                                      .w, // Inner container size
                                                  decoration: BoxDecoration(
                                                      color: Colors.blue[300],
                                                      shape: BoxShape.circle),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 5.0.sp, top: 1.sp),
                                            child: Container(
                                              height: 50
                                                  .h, // Smaller size for the image
                                              width: 55.w,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                // Circular shape for the image
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/group1.png'),
                                                  fit: BoxFit
                                                      .contain, // Ensure the image is fully visible
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 14.w,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Kevin\'s PB',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Poppines',
                                                  fontSize: 14.sp)),
                                          Text('Kate and Ann are typing...',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: 'Poppines',
                                                  fontSize: 10.sp)),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        '12:32',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontFamily: 'Poppines',
                                            fontSize: 10.sp),
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: yellowColor,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            style: BorderStyle.solid,
                                            color: Colors.black,
                                            width: 1.w,
                                          ),
                                        ),
                                        height: 18.h, // Container height
                                        width: 18.w, // Container width
                                        child: Center(
                                          child: Text(
                                            '6',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 8
                                                  .sp, // Font size for the number
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
