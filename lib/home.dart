import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:module13_assignment/widgets/packages.dart';
import 'package:module13_assignment/widgets/topBar.dart';
import 'package:module13_assignment/widgets/topDestinations.dart';

class Home extends StatelessWidget {
  //TextEditingController searchController = TextEditingController();
  Home({super.key});

 final List<Map<String, dynamic>> packages = [
    {
      "Title": "Romantic Paris Gateway",
      "img": "assets/parisGetaway.jpg",
      "amount": 799,
    },
    {
      "Title": "Bali Advanture Tour",
      "img": "assets/baliAdven.jpg",
      "amount": 599,
    },
    {"Title": "Nepal Tour", "img": "assets/nepalTour.jpg", "amount": 599},
    {"Title": "Maldive Tour", "img": "assets/maldivesIs.jpg", "amount": 599},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Top Search bar
              TopBar(),
              Padding(
                padding: EdgeInsets.all(10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Top destinations",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    SizedBox(height: 10.h),

                    //Gridview start here
                    TopDestinations(),
                    SizedBox(height: 10.h),

                    Text(
                      "Trending Packages",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    SizedBox(height: 10.h),
                    //Trending packages
                    for (var item in packages) Packages(item: item),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
