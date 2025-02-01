import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDataRow extends StatelessWidget {
  final String text1;
  final String text2;
  final bool decrease;

  const CustomDataRow({
    super.key,
    required this.text1,
    required this.text2,
    required this.decrease,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text1,
            style: TextStyle(
                color: Colors.black,
                fontSize: 10.sp,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppines'),
          ),
          Icon(
            Icons.show_chart,
            color: Colors.grey[900],
            size: 20.sp,
          ),
          Text(
            text2,
            style: TextStyle(
                color: decrease ? Colors.pinkAccent : Colors.greenAccent,
                fontSize: 10.sp,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppines'),
          ),
        ],
      ),
    );
  }
}
