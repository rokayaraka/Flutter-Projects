import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Packages extends StatelessWidget {
  const Packages({super.key, required this.item,});
  final Map<String,dynamic> item ;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 10.h),
      elevation: 3,
      shadowColor: Colors.black,
      child: Row(
        children: [
          Container(
            height: 100.h,
            width: 120.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.h),
                bottomLeft: Radius.circular(10.h),
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.only(
                topLeft: Radius.circular(10.h),
                bottomLeft: Radius.circular(10.h),
              ),
              child: Image.asset(item["img"], fit: BoxFit.cover),
            ),
          ),

          SizedBox(width: 5.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item["Title"],
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.clock,
                      size: 12,
                      color: Colors.grey.shade700,
                    ),
                    SizedBox(width: 5.h),
                    Text(
                      "4 nights * 5 days",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "\$${item["amount"]}",
                      style: TextStyle(fontSize: 15, color: Colors.blue),
                    ),
                    Spacer(),
                    SizedBox(
                      height: 28.h,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Book Now",
                          style: TextStyle(fontSize: 9.sp),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
