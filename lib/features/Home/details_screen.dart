import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/assets_helper/app_colors.dart';
import 'package:test/assets_helper/app_images.dart';

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
        title: Row(
          children: [
            Transform.translate(
              offset: Offset(0, 2),
              child: Image.asset(
                AppImages.arrowBack,
                width: 18.w,
                height: 15.h,
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Image.asset(
              AppImages.greenHome,
              height: 28.w,
              width: 28.w,
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
          ],
        ),
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
                      children: [
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
                // SizedBox(
                //   height: 5.h,
                // ),
                Image.asset(
                  AppImages.graph,
                  height: 216.h,
                ),

                SizedBox(
                  height: 5.h,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 30.h, horizontal: 22),
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
                                for (int i = 0;
                                    i < AppImages.groupedImages.length;
                                    i++)
                                  Align(
                                    widthFactor: 0.5,
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          AppImages.groupedImages[i]),
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
                        padding:
                            EdgeInsets.symmetric(vertical: 20.h, horizontal: 5),
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
                ),

                SizedBox(
                  height: 15.h,
                ),
                Container(
                  height: 150.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      // Left side (icon + label)
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Plants",
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 24.sp,
                                      color: AppColor.c47BA80)),
                              SizedBox(height: 8),
                              Image.asset(
                                AppImages.leaf,
                                height: 55.h,
                                width: 55.w,
                              )
                            ],
                          ),
                        ),
                      ),

                      // Right side (score with gradient background)
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 150.h,
                          width: 161,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF9FFFCB),
                                Color(0xFF62C48F),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "43",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(padding: EdgeInsets.symmetric(vertical: 20.h))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
