import 'package:bookstore/core/config/app_config.dart';
import 'package:bookstore/core/values/app_colors.dart';
import 'package:bookstore/presentation/data.dart';
import 'package:bookstore/presentation/screens/login_screen.dart';
import 'package:bookstore/presentation/screens/moviescreen.dart';
import 'package:bookstore/presentation/screens/register_screen.dart';
import 'package:flutter/material.dart' hide CarouselController;
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LandingScreen extends StatefulWidget {
  static const String routeName = "LandingScreen";

  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  final ScrollController _scrollController1 = ScrollController();
  final ScrollController _scrollController2 = ScrollController();
  final ScrollController _scrollController3 = ScrollController();

  AppConfig appConfig = AppConfig();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      double minScrollExtent1 = _scrollController1.position.minScrollExtent;
      double maxScrollExtent1 = _scrollController1.position.maxScrollExtent;
      double minScrollExtent2 = _scrollController2.position.minScrollExtent;
      double maxScrollExtent2 = _scrollController2.position.maxScrollExtent;
      double minScrollExtent3 = _scrollController3.position.minScrollExtent;
      double maxScrollExtent3 = _scrollController3.position.maxScrollExtent;

      animateToMaxMin(maxScrollExtent1, minScrollExtent1, maxScrollExtent1, 20,
          _scrollController1);
      animateToMaxMin(maxScrollExtent2, minScrollExtent2, maxScrollExtent2, 18,
          _scrollController2);
      animateToMaxMin(maxScrollExtent3, minScrollExtent3, maxScrollExtent3, 22,
          _scrollController3);
    });
  }

  animateToMaxMin(double max, double min, double direction, int seconds,
      ScrollController scrollController) {
    scrollController
        .animateTo(direction,
            duration: Duration(seconds: seconds), curve: Curves.linear)
        .then((value) {
      direction = direction == max ? min : max;
      animateToMaxMin(max, min, direction, seconds, scrollController);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().white,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              Transform.translate(
                offset: Offset(-10.w, -35.h),
                child: Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationZ(-0.3)..scale(1.2),
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5.h),
                    child: MoviesListView(
                      scrollController: _scrollController1,
                      images: movies1,
                    ),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(-5.w, 0),
                child: Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationZ(-0.3)..scale(1.2),
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5.h),
                    child: MoviesListView(
                      scrollController: _scrollController2,
                      images: movies2,
                    ),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(0, 35.h),
                child: Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationZ(-0.3)..scale(1.2),
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5.h),
                    child: MoviesListView(
                      scrollController: _scrollController3,
                      images: movies3,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 120.h, left: 20.w, right: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 140.w,
                  height: 140.h,
                  child: Image.asset(
                    "assets/images/logo.png",
                    fit: BoxFit.fitHeight,
                  ),
                ),
                SizedBox(height: 18.h),
                Text(
                  textAlign: TextAlign.center,
                  "Read more and stress less with our online book shopping app. Shop from anywhere you are and discover titles that you love. Happy reading!",
                  style: TextStyle(
                    color: AppColors().inkColor,
                    fontFamily: "OpenSans",
                    fontSize: 14.sp,
                    height: 1.7.h,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 8.h),
                height: 60.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors().inkColor,
                ),
                child: Material(
                  color: AppColors().transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(5),
                    onTap: () {
                      Navigator.of(context).pushNamed(LoginScreen.routeName);
                    },
                    child: Center(
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          color: AppColors().white,
                          fontFamily: "OpenSans",
                          fontSize: 14.sp,
                          height: 1.7.h,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20.h),
                height: 60.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors().transparent,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(RegisterScreen.routeName);
                  },
                  child: Center(
                    child: Text(
                      "Register",
                      style: TextStyle(
                        color: AppColors().inkColor,
                        fontFamily: "OpenSans",
                        fontSize: 14.sp,
                        height: 1.7.h,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
