import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/assets_helper/app_colors.dart';
import 'package:test/assets_helper/app_images.dart';
import 'package:test/features/Home/home_screen.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.translate(
          offset: Offset(0, 2),
          child: GestureDetector(
            onTap: () {
              Get.to(() => const HomeScreen());
            },
            child: Image.asset(
              AppImages.arrowBack,
              width: 18.w,
              height: 15.h,
            ),
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        GestureDetector(
          onTap: () {
            Get.to(() => const HomeScreen());
          },
          child: Image.asset(
            AppImages.greenHome,
            height: 28.w,
            width: 28.w,
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        Transform.translate(
          offset: Offset(0, 4),
          child: Text(
            "Home",
            style: GoogleFonts.poppins(
                fontSize: 24.sp, fontWeight: FontWeight.w300),
          ),
        ),
        Spacer(),
        Container(
          height: 24.h,
          width: 69.w,
          decoration: BoxDecoration(
              color: AppColor.c47BA80, borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Text(
              "Good",
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w700,
                  fontSize: 12.sp,
                  color: AppColor.cFFFFFF),
            ),
          ),
        ),
      ],
    );
  }
}
