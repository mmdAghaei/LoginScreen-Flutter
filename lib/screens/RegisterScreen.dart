import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resome/screens/LoginScreen.dart';
import 'package:resome/utils/colors.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Welcome Screen.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 97.w,
              child: Text(
                "Create Account",
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w700,
                  color: blueColor,
                ),
              ),
            ),
            Positioned(
              top: 168.w,
              child: Text(
                "Create an account so you can explore all the\nexisting jobs",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: blackColor,
                ),
              ),
            ),
            Positioned(
              top: 302.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 357.w,
                    child: textFieldWidget(tilte: "Email"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 25.w),
                    child: SizedBox(
                      width: 357.w,
                      child: textFieldWidget(tilte: "Password"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 25.w),
                    child: SizedBox(
                      width: 357.w,
                      child: textFieldWidget(tilte: "Confirm Password"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Container(
                      width: 357.w,
                      height: 60.w,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 20,
                            color: Color(0xffCBD6FF),
                          ),
                        ],
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20.sp,
                            color: whiteColor,
                          ),
                        ),
                        style: ButtonStyle(
                          elevation: WidgetStatePropertyAll(0),
                          backgroundColor: WidgetStatePropertyAll(blueColor),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25.w),
                  SizedBox(
                    width: 357.w,
                    height: 60.w,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Already have an account",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14.sp,
                          color: blackColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Positioned(
              top: 736.w,
              child: Text(
                "Or continue with",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: blueColor,
                ),
              ),
            ),
            Positioned(
              top: 770.w,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 66.w,
                      height: 66.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0xffECECEC),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SizedBox(
                        width: 30.w,
                        child: Image.asset("assets/ph_google-logo-bold.png"),
                      ),
                    ),
                  ),
                  SizedBox(width: 15.w),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 66.w,
                      height: 66.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0xffECECEC),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SizedBox(
                        width: 30.w,
                        child: Image.asset("assets/ic_sharp-facebook.png"),
                      ),
                    ),
                  ),
                  SizedBox(width: 15.w),

                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 66.w,
                      height: 66.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0xffECECEC),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SizedBox(
                        width: 30.w,
                        child: Image.asset("assets/ic_baseline-apple.png"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class textFieldWidget extends StatelessWidget {
  final String tilte;
  const textFieldWidget({super.key, required this.tilte});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType:
          tilte == "Email"
              ? TextInputType.emailAddress
              : TextInputType.visiblePassword,
      obscureText: tilte == "Email" ? false : true,
      decoration: InputDecoration(
        hintText: tilte,
        hintStyle: TextStyle(color: Color(0xff626262)),
        fillColor: Color(0xffF1F4FF),
        filled: true,
        border: InputBorder.none,
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Color(0xffF1F4FF)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Color(0xff1F41BB), width: 2),
        ),
      ),
    );
  }
}
