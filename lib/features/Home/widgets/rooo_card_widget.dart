import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/assets_helper/app_colors.dart';
import 'package:test/assets_helper/app_images.dart';

class RoooCardWidget extends StatelessWidget {
  const RoooCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 22),
            decoration: BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.circular(20.r)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10.h),
                Text(
                  "Persons",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700, fontSize: 24.sp),
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < AppImages.groupedImages.length; i++)
                      Align(
                        widthFactor: 0.5,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage(AppImages.groupedImages[i]),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 16.w), // spacing between the two containers
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 5),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [AppColor.cA1FFD0, AppColor.c6ABC93]),
                borderRadius: BorderRadius.circular(20.r)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Rooms",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700,
                      fontSize: 24.sp,
                      color: AppColor.cFFFFFF),
                ),
                Text(
                  "5",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700,
                      fontSize: 48.sp,
                      color: AppColor.cFFFFFF),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: AppColor.cFFFFFF,
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Text("2 of them requires action",
                      style: GoogleFonts.inter(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColor.c47BA80)),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
