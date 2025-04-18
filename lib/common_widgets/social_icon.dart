import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialIcon extends StatelessWidget {
  final String imagePath;

  const SocialIcon({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 42.w,
      height: 42.h,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Image.asset(
          imagePath,
          height: 26.h,
          width: 26.w,
        ),
      ),
    );
  }
}
