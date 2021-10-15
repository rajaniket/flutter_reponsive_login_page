import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  final purpleColor = const Color(0xff6688FF);
  final darkTextColor = const Color(0xff1F1A3D);
  final lightTextColor = const Color(0xff999999);
  final textFieldColor = const Color(0xffF5F6FA);
  final borderColor = const Color(0xffD9D9D9);

  Widget getTextField(String hint) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(color: Colors.transparent, width: 0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(color: Colors.transparent, width: 0),
        ),
        filled: true,
        fillColor: textFieldColor,
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
        hintText: hint,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 52.h,
                ),
                Text(
                  "Sign Up to App",
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: darkTextColor),
                ), // font size is 18 x scaling factor
                SizedBox(
                  height: 4.h,
                ),
                Wrap(
                  // its working here like a row and if widgets inside wrap have more size than screen it automatically shift widgets down in verticle and in case of row it would have show you overflow
                  children: [
                    Text("Already have an account? ",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: lightTextColor,
                        )),
                    Text("Login",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: purpleColor,
                        )),
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                getTextField("Full Name"),
                SizedBox(
                  height: 16.h,
                ),
                getTextField("Email"),
                SizedBox(
                  height: 16.h,
                ),
                getTextField("Password"),
                SizedBox(
                  height: 16.h,
                ),
                getTextField("Confirm Password"),
                SizedBox(
                  height: 16.h,
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text("Create Account"),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(purpleColor),
                        foregroundColor: MaterialStateProperty.all(
                            Colors.white), //text Colour
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(vertical: 14.h)),
                        textStyle: MaterialStateProperty.all(TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.w700))),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  children: [
                    const Expanded(child: Divider()),
                    SizedBox(
                      width: 16.w,
                    ),
                    Text("or sign up via",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: lightTextColor,
                        )),
                    SizedBox(
                      width: 16.w,
                    ),
                    const Expanded(child: Divider()),
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.login),
                        Text("Google"),
                      ],
                    ),
                    style: ButtonStyle(
                        side: MaterialStateProperty.all(
                            BorderSide(color: borderColor)),
                        foregroundColor: MaterialStateProperty.all(
                            darkTextColor), //text Colour
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(vertical: 14.h)),
                        textStyle: MaterialStateProperty.all(TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.w700))),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
