import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  PhoneNumber number =
      PhoneNumber(isoCode: 'BD'); // Default country code for Bangladesh

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
            Text("Phone Number",
                style: GoogleFonts.poppins(
                    fontSize: 12.sp, fontWeight: FontWeight.w500)),
            InternationalPhoneNumberInput(
              onInputChanged: (PhoneNumber number) {
                setState(() {
                  this.number = number;
                });
              },
              onInputValidated: (bool isValid) {
                // Handle validation here if needed
              },
              selectorConfig: SelectorConfig(
                selectorType: PhoneInputSelectorType.DIALOG,
                setSelectorButtonAsPrefixIcon: true,
              ),
              initialValue: number,
              inputDecoration: InputDecoration(
                hintText: "17XXXXXXXX", // Example placeholder
                hintStyle: GoogleFonts.inter(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
                contentPadding: EdgeInsets.only(top: 8.sp),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
              ),
              textFieldController: TextEditingController(),
            ),
            SizedBox(
              height: 14.h,
            ),
          ],
        ),
      ),
    );
  }
}
