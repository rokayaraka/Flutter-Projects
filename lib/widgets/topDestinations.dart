import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopDestinations extends StatelessWidget {
  TopDestinations({super.key});
   final List<Map<String, String>> countries = [
    {"name": "Paris", "img": "assets/paris.jpg"},
    {"name": "Maldives", "img": "assets/maldivesIs.jpg"},
    {"name": "Dubai", "img": "assets/dubai.jpg"},
    {"name": "Bali", "img": "assets/bali.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      width: 300.w,

      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10.h,
          childAspectRatio: 0.74,
          crossAxisCount: 2,
          mainAxisSpacing: 10.h,
        ),
        itemCount: countries.length,
        itemBuilder: (context, index) {
          final currentData = countries[index];
          return Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(10),
                child: SizedBox(
                  height: 150.h,
                  width: 140.w,
                  child: Image.asset(currentData["img"]!, fit: BoxFit.cover),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 150.h,
                width: 140.w,
              ),

              Positioned(
                bottom: 8,
                left: 10,
                child: Text(
                  currentData["name"]!,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
