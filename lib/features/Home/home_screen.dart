import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/assets_helper/app_colors.dart';
import 'package:test/assets_helper/app_images.dart';
import 'package:test/features/Home/widgets/home_card.dart';
import 'package:test/features/Home/widgets/office_card.dart'; // Make sure your image asset is correctly added

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.cFCFFFD,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            AppImages.homeCard,
            height: 206.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My Places",
                  style: GoogleFonts.poppins(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w300,
                      color: AppColor.c1E1E1E),
                ),
                SizedBox(
                  height: 15.h,
                ),
                HomeCard(),
                SizedBox(
                  height: 20.h,
                ),
                OfficeCard(),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColor.c47BA80,
        foregroundColor: AppColor.cF8FFFB,
        child: Icon(Icons.add),
      ),
    );
  }
}
