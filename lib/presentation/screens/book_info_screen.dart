import 'package:bookstore/core/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookInfoScreen extends StatefulWidget {
  static const String routeName = "BookInfoScreen";

  const BookInfoScreen({super.key});

  @override
  State<BookInfoScreen> createState() => _BookInfoScreenState();
}

class _BookInfoScreenState extends State<BookInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Classics",
          style: TextStyle(
            color: AppColors().inkColor,
            fontFamily: "OpenSans",
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        foregroundColor: AppColors().inkColor,
        backgroundColor: AppColors().white,
        elevation: 0,
        actions: [
          Container(
            padding: EdgeInsets.only(right: 20.w),
            child: Icon(
              Icons.shopping_cart,
              size: 20.sp,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Rich Dad Poor Dad",
                  style: TextStyle(
                    color: AppColors().inkColor,
                    fontFamily: "OpenSans",
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              SizedBox(
                height: 200.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/book23.png",
                      width: 130.w,
                      height: 200.w,
                      fit: BoxFit.fitHeight,
                    ),
                    SizedBox(width: 22.w),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 16.h),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Author:",
                                  style: TextStyle(
                                    color: AppColors().inkColor,
                                    fontFamily: "OpenSans",
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(width: 5.w),
                                Text(
                                  "Oscar Wilde",
                                  style: TextStyle(
                                    color: AppColors().inkColor,
                                    fontFamily: "OpenSans",
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5.h),
                            Row(
                              children: [
                                Text(
                                  "Category:",
                                  style: TextStyle(
                                    color: AppColors().inkColor,
                                    fontFamily: "OpenSans",
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(width: 5.w),
                                Text(
                                  "Classics",
                                  style: TextStyle(
                                    color: AppColors().inkColor,
                                    fontFamily: "OpenSans",
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5.h),
                            Row(
                              children: [
                                Text(
                                  "Rating:",
                                  style: TextStyle(
                                    color: AppColors().inkColor,
                                    fontFamily: "OpenSans",
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(width: 5.w),
                                Text(
                                  "4.11/5",
                                  style: TextStyle(
                                    color: AppColors().inkColor,
                                    fontFamily: "OpenSans",
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5.h),
                            Row(
                              children: [
                                Text(
                                  "Pricing:",
                                  style: TextStyle(
                                    color: AppColors().inkColor,
                                    fontFamily: "OpenSans",
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(width: 5.w),
                                Text(
                                  "\$25.00",
                                  style: TextStyle(
                                    color: AppColors().inkColor,
                                    fontFamily: "OpenSans",
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5.h),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(top: 8.h),
                              height: 40.h,
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
                                      "Add to Cart",
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
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 22.h),
              Text(
                "Description:",
                style: TextStyle(
                  color: AppColors().inkColor,
                  fontFamily: "OpenSans",
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 16.h),
              Text(
                "\"Rich Dad Poor Dad\" by Robert Kiyosaki and Sharon Lechter is a personal finance book that explores the importance of financial literacy, financial independence, and building wealth through investing. It contrasts the financial philosophies of Kiyosaki's two fathers – his real father (the \"poor dad\") who was educated but struggled financially, and his best friend's father (the \"rich dad\") who was not highly educated but became wealthy through investing and entrepreneurship. The book advocates for learning about financial concepts like investing, starting businesses, and acquiring assets to achieve financial freedom.\"Rich Dad Poor Dad\" by Robert Kiyosaki and Sharon Lechter is a personal finance book that explores the importance of financial literacy, financial independence, and building wealth through investing. It contrasts the financial philosophies of Kiyosaki's two fathers – his real father (the \"poor dad\") who was educated but struggled financially, and his best friend's father (the \"rich dad\") who was not highly educated but became wealthy through investing and entrepreneurship. The book advocates for learning about financial concepts like investing, starting businesses, and acquiring assets to achieve financial freedom.",
                style: TextStyle(
                  color: AppColors().inkColor,
                  fontFamily: "OpenSans",
                  fontSize: 14.sp,
                  height: 1.7.h,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
