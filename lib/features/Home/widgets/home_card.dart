import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/assets_helper/app_colors.dart';
import 'package:test/assets_helper/app_images.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(colors: [AppColor.cF8FFFB, AppColor.cFFFFFF]),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Home",
                  style: GoogleFonts.poppins(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.c000000),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    Text(
                      "652",
                      style: GoogleFonts.poppins(
                          fontSize: 48.sp,
                          color: AppColor.c47BA80,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsetsDirectional.all(6),
                          height: 24.h,
                          // width: 49.w,
                          decoration: BoxDecoration(
                              color: AppColor.c47BA80,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Image.asset(
                                AppImages.poly,
                                width: 10,
                                height: 5.h,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "13%",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.sp,
                                    color: AppColor.cFFFFFF),
                              )
                            ],
                          ),
                        ),
                        Text(
                          "ppm",
                          style: GoogleFonts.poppins(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w300,
                              color: AppColor.c47BA80),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            Column(
              children: [
                Container(
                  height: 24.h,
                  width: 69.w,
                  decoration: BoxDecoration(
                      color: AppColor.c47BA80,
                      borderRadius: BorderRadius.circular(20)),
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
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        for (int i = 0; i < AppImages.groupedImages.length; i++)
                          Align(
                            widthFactor: 0.5,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage(AppImages.groupedImages[i]),
                            ),
                          )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  children: [
                    Text(
                      "View Details",
                      style: GoogleFonts.poppins(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColor.c47BA80),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Image.asset(
                      AppImages.greenPoly,
                      height: 11.h,
                      width: 10.w,
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
