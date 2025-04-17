import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/assets_helper/app_colors.dart';

class CompanyTextWidget extends StatelessWidget {
  const CompanyTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Powered by",
          style: GoogleFonts.inter(fontSize: 12.sp, fontWeight: FontWeight.w400)
              .copyWith(color: AppColor.cADADAD),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          "M360 ICT",
          style: GoogleFonts.inter(fontSize: 14.sp, fontWeight: FontWeight.w700)
              .copyWith(color: AppColor.c47BA80),
        )
      ],
    );
  }
}
