import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test/assets_helper/app_images.dart';
import 'package:test/common_widgets/social_icon.dart';

class LoginIconWidget extends StatelessWidget {
  const LoginIconWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialIcon(
          imagePath: AppImages.google,
        ),
        SizedBox(
          width: 10.w,
        ),
        SocialIcon(
          imagePath: AppImages.facebook,
        ),
        SizedBox(
          width: 10.w,
        ),
        SocialIcon(
          imagePath: AppImages.microsoft,
        ),
        SizedBox(
          width: 10.w,
        ),
        SocialIcon(
          imagePath: AppImages.apple,
        ),
      ],
    );
  }
}
