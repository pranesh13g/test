import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/assets_helper/app_colors.dart';
import 'package:test/assets_helper/app_images.dart';
import 'package:test/common_widgets/company_text_widget.dart';
import 'package:test/features/auth/widgets/login_icon_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  bool? value = false;
  bool _isPasswordVisible = false; // Tracks password visibility
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 33),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 87.h,
            ),
            Text("Sign In",
                style: GoogleFonts.poppins(
                    fontSize: 30.sp, fontWeight: FontWeight.w500)),
            Text(
              "Let’s save environment together",
              style: GoogleFonts.inter(
                  fontSize: 14.sp, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 50.h,
            ),
            Text(
              "Email",
              style: GoogleFonts.poppins(
                  fontSize: 12.sp, fontWeight: FontWeight.w500),
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "user@example.com",
                  hintStyle: GoogleFonts.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                  contentPadding: EdgeInsets.only(top: 8.sp)),
            ),
            SizedBox(
              height: 14.h,
            ),
            Text(
              "Password",
              style: GoogleFonts.poppins(
                  fontSize: 12.sp, fontWeight: FontWeight.w500),
            ),
            TextFormField(
              obscureText: !_isPasswordVisible, // Toggle visibility
              decoration: InputDecoration(
                hintText: "**********",
                hintStyle: GoogleFonts.inter(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
                contentPadding: EdgeInsets.only(top: 10.sp),
                suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                    child: _isPasswordVisible
                        ? Image.asset(
                            AppImages.eye,
                            width: 18.w,
                            height: 6.5.h,
                            fit: BoxFit.contain,
                          )
                        : Icon(Icons.visibility_off)),
              ),
            ),
            SizedBox(
              height: 14.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          value = !(value ?? false);
                        });
                      },
                      child: Container(
                        width: 15.w,
                        height: 15.h,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColor.c47BA80, width: 1),
                          color: value == true
                              ? AppColor.c47BA80
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(
                              4), // optional: rounded corners
                        ),
                        child: value == true
                            ? Icon(
                                Icons.check,
                                size: 16,
                                color: Colors.white,
                              )
                            : null,
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "Remember me",
                      style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColor.c000000),
                    )
                  ],
                ),
                Text(
                  "Forgotten Password",
                  style: GoogleFonts.inter(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColor.c47BA80),
                ),
              ],
            ),
            SizedBox(
              height: 50.h,
            ),
            Container(
              height: 42.h,
              decoration: BoxDecoration(
                  color: AppColor.c47BA80,
                  borderRadius: BorderRadius.circular(20.r)),
              child: Center(
                child: Text(
                  "Sign In",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700,
                      fontSize: 16.sp,
                      color: AppColor.cFFFFFF),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Align(
                alignment: Alignment.center,
                child: Text(
                  "Or Sign In with",
                  style: GoogleFonts.inter(
                      fontSize: 14.sp, fontWeight: FontWeight.w400),
                )),
            SizedBox(
              height: 30.h,
            ),
            LoginIconWidget(),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have an account?",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                      color: AppColor.cADADAD),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  "Sign Up",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700,
                      fontSize: 14.sp,
                      color: AppColor.c47BA80),
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 30.h),
        child: CompanyTextWidget(),
      ),
    );
  }
}
