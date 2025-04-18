import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/assets_helper/app_colors.dart';
import 'package:test/assets_helper/app_images.dart';

class PpmPercentWidget extends StatelessWidget {
  const PpmPercentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
