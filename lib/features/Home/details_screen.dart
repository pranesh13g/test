import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/assets_helper/app_colors.dart';
import 'package:test/assets_helper/app_images.dart';
import 'package:test/features/Home/widgets/custom_app_bar.dart';
import 'package:test/features/Home/widgets/plant_card_widget.dart';
import 'package:test/features/Home/widgets/ppm_percent_widget.dart';
import 'package:test/features/Home/widgets/rooo_card_widget.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  DetailsScreenState createState() => DetailsScreenState();
}

class DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: CustomAppBar(),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 26.w,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [PpmPercentWidget()],
                    ),
                    Image.asset(
                      AppImages.bar,
                      width: 132.w,
                      height: 21.h,
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Text(
                      "History",
                      style: GoogleFonts.inter(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColor.c838383),
                    ),
                    Spacer(),
                    Text(
                      "See all",
                      style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColor.cADADAD),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Image.asset(
                      AppImages.graypoly,
                      width: 11.w,
                      height: 10.h,
                    ),
                  ],
                ),
                Image.asset(
                  AppImages.graph,
                  height: 216.h,
                ),
                SizedBox(
                  height: 5.h,
                ),
                RoooCardWidget(),
                SizedBox(
                  height: 15.h,
                ),
                PlantCardWidget(),
                Padding(padding: EdgeInsets.symmetric(vertical: 20.h))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
