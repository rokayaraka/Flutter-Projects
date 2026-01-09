import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 220.h,
          width: 300.w,
          child: Image.asset("assets/Cover.jpg", fit: BoxFit.cover),
        ),
        Container(height: 220.h, width: 300.w, color: Colors.black38),

        Positioned(
          bottom: 35,
          left: 15,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text(
                "Explore The World",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              //SizedBox(height: 10,),
              SizedBox(
                height: 50.h,
                width: 230.w,

                child: TextField(
                  cursorHeight: 20.h,

                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 5.h),
                    prefixIcon: Icon(FontAwesomeIcons.search, size: 18),
                    hintText: "Search destination....",

                    hintStyle: TextStyle(fontSize: 18, color: Colors.grey),

                    fillColor: Colors.white,
                    filled: true,

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
