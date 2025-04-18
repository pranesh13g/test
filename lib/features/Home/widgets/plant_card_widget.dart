import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/assets_helper/app_colors.dart';
import 'package:test/assets_helper/app_images.dart';

class PlantCardWidget extends StatelessWidget {
  const PlantCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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
    );
  }
}
