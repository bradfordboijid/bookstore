import 'package:bookstore/core/values/app_colors.dart';
import 'package:flutter/material.dart' hide CarouselController;
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreenTab extends StatefulWidget {
  const ProfileScreenTab({super.key});

  @override
  State<ProfileScreenTab> createState() => _ProfileScreenTabState();
}

class _ProfileScreenTabState extends State<ProfileScreenTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Account",
          style: TextStyle(
            color: AppColors().inkColor,
            fontFamily: "OpenSans",
            fontSize: 18.sp,
            height: 1.7.h,
            fontWeight: FontWeight.w700,
          ),
        ),
        automaticallyImplyLeading: false,
        foregroundColor: AppColors().inkColor,
        backgroundColor: AppColors().white,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 20.h,
        ),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/profile.png",
              width: 100.w,
              height: 100.w,
              fit: BoxFit.fitWidth,
            ),
            SizedBox(height: 30.h),
            Container(
              padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 14.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: AppColors().bottomNavBar,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 100.w,
                    child: Text(
                      "Name:",
                      style: TextStyle(
                        color: AppColors().inkColor,
                        fontFamily: "OpenSans",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "John Doe",
                      style: TextStyle(
                        color: AppColors().inkColor,
                        fontFamily: "OpenSans",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Container(
              padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 14.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: AppColors().bottomNavBar,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 100.w,
                    child: Text(
                      "E-mail:",
                      style: TextStyle(
                        color: AppColors().inkColor,
                        fontFamily: "OpenSans",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "johndoe123@gmail.com",
                      style: TextStyle(
                        color: AppColors().inkColor,
                        fontFamily: "OpenSans",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Container(
              padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 14.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: AppColors().bottomNavBar,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 100.w,
                    child: Text(
                      "Password:",
                      style: TextStyle(
                        color: AppColors().inkColor,
                        fontFamily: "OpenSans",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "*********",
                      style: TextStyle(
                        color: AppColors().inkColor,
                        fontFamily: "OpenSans",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Container(
              padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 14.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: AppColors().bottomNavBar,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 100.w,
                    child: Text(
                      "Address:",
                      style: TextStyle(
                        color: AppColors().inkColor,
                        fontFamily: "OpenSans",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "No.23, James Street, New Town, North Province",
                      style: TextStyle(
                        color: AppColors().inkColor,
                        fontFamily: "OpenSans",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 2,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 30.h),
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(bottom: 8.h),
                    height: 60.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors().inkColor,
                    ),
                    child: Material(
                      color: AppColors().transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(5),
                        onTap: () {},
                        child: Center(
                          child: Text(
                            "Edit",
                            style: TextStyle(
                              color: AppColors().white,
                              fontFamily: "OpenSans",
                              fontSize: 14.sp,
                              height: 1.7.h,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(bottom: 8.h),
                    height: 60.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: AppColors().inkColor,
                      ),
                      color: AppColors().transparent,
                    ),
                    child: Material(
                      color: AppColors().transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(5),
                        onTap: () {},
                        child: Center(
                          child: Text(
                            "Log out",
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
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
