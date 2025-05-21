import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resome/screens/LoginScreen.dart';
import 'package:resome/screens/RegisterScreen.dart';
import 'package:resome/utils/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Welcome Screen.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Positioned(
                top: 53.0.w,
                child: SizedBox(
                  width: 380.w,
                  child: Image(image: AssetImage("assets/welcome image.png")),
                ),
              ),
              Positioned(
                top: 519.w,
                child: Text(
                  "Discover Your\nDream Job here",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 35.sp,
                    color: blueColor,
                  ),
                ),
              ),
              Positioned(
                top: 648.w,
                child: Text(
                  "Explore all the existing job roles based on your\ninterest and study major",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    color: blackColor,
                  ),
                ),
              ),
              Positioned(
                top: 778.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 160.w,
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
                        onPressed: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "Login",
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
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                              ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.w),
                    SizedBox(
                      width: 160.w,
                      height: 60.w,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => RegisterScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "Register",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20.sp,
                            color: blackColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
