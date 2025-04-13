import 'package:bookstore/core/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List<String> movies1 = [
  'book1.png',
  'book2.png',
  'book3.png',
  'book4.png',
  'book5.png',
  'book16.png',
  'book17.png',
  'book18.png',
];

List<String> movies2 = [
  'book6.png',
  'book7.png',
  'book8.png',
  'book9.png',
  'book10.png',
  'book19.png',
  'book20.png',
  'book21.png',
];

List<String> movies3 = [
  'book11.png',
  'book12.png',
  'book13.png',
  'book14.png',
  'book15.png',
  'book3.png',
  'book4.png',
  'book5.png',
];

List<Widget> lista = [
  Container(
    decoration: BoxDecoration(
      color: AppColors().inkColor,
      borderRadius: BorderRadius.circular(8),
    ),
    padding: EdgeInsets.only(
      left: 2.w,
      right: 12.w,
      top: 2.h,
      bottom: 2.h,
    ),
    margin: EdgeInsets.only(left: 20.w),
    height: 160.h,
    width: 280.w,
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            "assets/images/book22.png",
            height: 160.h,
            width: 100.w,
            fit: BoxFit.fitHeight,
          ),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                    text: 'Novel\n',
                    style: TextStyle(
                      color: AppColors().lightCream,
                      fontFamily: "OpenSans",
                      fontSize: 12.sp,
                      // height: 1.7.h,
                      fontWeight: FontWeight.w400,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Tuesday Mooney Talks to Ghosts',
                        style: TextStyle(
                          color: AppColors().white,
                          fontFamily: "OpenSans",
                          fontSize: 16.sp,
                          height: 1.4.h,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ]),
              ),
              Text(
                "Kate Raculla",
                style: TextStyle(
                  color: AppColors().white,
                  fontFamily: "OpenSans",
                  fontSize: 14.sp,
                  // height: 1.7.h,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      "\$33.00",
                      maxLines: 1,
                      style: TextStyle(
                        color: AppColors().white,
                        fontFamily: "OpenSans",
                        fontSize: 20.sp,
                        // height: 1.7.h,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                    color: Colors.white,
                    child: Text(
                      "12% off",
                      style: TextStyle(
                        color: AppColors().inkColor,
                        fontFamily: "OpenSans",
                        fontSize: 12.sp,
                        // height: 1.7.h,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    ),
  ),
  Container(
    decoration: BoxDecoration(
      color: AppColors().inkColor,
      borderRadius: BorderRadius.circular(8),
    ),
    padding: EdgeInsets.only(
      left: 2.w,
      right: 12.w,
      top: 2.h,
      bottom: 2.h,
    ),
    margin: EdgeInsets.only(left: 20.w),
    height: 160.h,
    width: 280.w,
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            "assets/images/book1.png",
            height: 160.h,
            width: 100.w,
            fit: BoxFit.fitHeight,
          ),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                    text: 'Novel\n',
                    style: TextStyle(
                      color: AppColors().lightCream,
                      fontFamily: "OpenSans",
                      fontSize: 12.sp,
                      // height: 1.7.h,
                      fontWeight: FontWeight.w400,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Tuesday Mooney Talks to Ghosts',
                        style: TextStyle(
                          color: AppColors().white,
                          fontFamily: "OpenSans",
                          fontSize: 16.sp,
                          height: 1.4.h,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ]),
              ),
              Text(
                "Kate Raculla",
                style: TextStyle(
                  color: AppColors().white,
                  fontFamily: "OpenSans",
                  fontSize: 14.sp,
                  // height: 1.7.h,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      "\$33.00",
                      maxLines: 1,
                      style: TextStyle(
                        color: AppColors().white,
                        fontFamily: "OpenSans",
                        fontSize: 20.sp,
                        // height: 1.7.h,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                    color: Colors.white,
                    child: Text(
                      "12% off",
                      style: TextStyle(
                        color: AppColors().inkColor,
                        fontFamily: "OpenSans",
                        fontSize: 12.sp,
                        // height: 1.7.h,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    ),
  ),
  Container(
    decoration: BoxDecoration(
      color: AppColors().inkColor,
      borderRadius: BorderRadius.circular(8),
    ),
    padding: EdgeInsets.only(
      left: 2.w,
      right: 12.w,
      top: 2.h,
      bottom: 2.h,
    ),
    margin: EdgeInsets.only(left: 20.w),
    height: 160.h,
    width: 280.w,
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            "assets/images/book2.png",
            height: 160.h,
            width: 100.w,
            fit: BoxFit.fitHeight,
          ),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                    text: 'Novel\n',
                    style: TextStyle(
                      color: AppColors().lightCream,
                      fontFamily: "OpenSans",
                      fontSize: 12.sp,
                      // height: 1.7.h,
                      fontWeight: FontWeight.w400,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Tuesday Mooney Talks to Ghosts',
                        style: TextStyle(
                          color: AppColors().white,
                          fontFamily: "OpenSans",
                          fontSize: 16.sp,
                          height: 1.4.h,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ]),
              ),
              Text(
                "Kate Raculla",
                style: TextStyle(
                  color: AppColors().white,
                  fontFamily: "OpenSans",
                  fontSize: 14.sp,
                  // height: 1.7.h,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$33.00",
                    style: TextStyle(
                      color: AppColors().white,
                      fontFamily: "OpenSans",
                      fontSize: 20.sp,
                      // height: 1.7.h,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                    color: Colors.white,
                    child: Text(
                      "12% off",
                      style: TextStyle(
                        color: AppColors().inkColor,
                        fontFamily: "OpenSans",
                        fontSize: 12.sp,
                        // height: 1.7.h,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    ),
  ),
  Container(
    decoration: BoxDecoration(
      color: AppColors().inkColor,
      borderRadius: BorderRadius.circular(8),
    ),
    padding: EdgeInsets.only(
      left: 2.w,
      right: 12.w,
      top: 2.h,
      bottom: 2.h,
    ),
    margin: EdgeInsets.only(left: 20.w),
    height: 160.h,
    width: 280.w,
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            "assets/images/book3.png",
            height: 160.h,
            width: 100.w,
            fit: BoxFit.fitHeight,
          ),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                    text: 'Novel\n',
                    style: TextStyle(
                      color: AppColors().lightCream,
                      fontFamily: "OpenSans",
                      fontSize: 12.sp,
                      // height: 1.7.h,
                      fontWeight: FontWeight.w400,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Tuesday Mooney Talks to Ghosts',
                        style: TextStyle(
                          color: AppColors().white,
                          fontFamily: "OpenSans",
                          fontSize: 16.sp,
                          height: 1.4.h,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ]),
              ),
              Text(
                "Kate Raculla",
                style: TextStyle(
                  color: AppColors().white,
                  fontFamily: "OpenSans",
                  fontSize: 14.sp,
                  // height: 1.7.h,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$33.00",
                    style: TextStyle(
                      color: AppColors().white,
                      fontFamily: "OpenSans",
                      fontSize: 20.sp,
                      // height: 1.7.h,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                    color: Colors.white,
                    child: Text(
                      "12% off",
                      style: TextStyle(
                        color: AppColors().inkColor,
                        fontFamily: "OpenSans",
                        fontSize: 12.sp,
                        // height: 1.7.h,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    ),
  ),
  Container(
    decoration: BoxDecoration(
      color: AppColors().inkColor,
      borderRadius: BorderRadius.circular(8),
    ),
    padding: EdgeInsets.only(
      left: 2.w,
      right: 12.w,
      top: 2.h,
      bottom: 2.h,
    ),
    margin: EdgeInsets.only(left: 20.w),
    height: 160.h,
    width: 280.w,
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            "assets/images/book17.png",
            height: 160.h,
            width: 100.w,
            fit: BoxFit.fitHeight,
          ),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                    text: 'Novel\n',
                    style: TextStyle(
                      color: AppColors().lightCream,
                      fontFamily: "OpenSans",
                      fontSize: 12.sp,
                      // height: 1.7.h,
                      fontWeight: FontWeight.w400,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Tuesday Mooney Talks to Ghosts',
                        style: TextStyle(
                          color: AppColors().white,
                          fontFamily: "OpenSans",
                          fontSize: 16.sp,
                          height: 1.4.h,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ]),
              ),
              Text(
                "Kate Raculla",
                style: TextStyle(
                  color: AppColors().white,
                  fontFamily: "OpenSans",
                  fontSize: 14.sp,
                  // height: 1.7.h,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$33.00",
                    style: TextStyle(
                      color: AppColors().white,
                      fontFamily: "OpenSans",
                      fontSize: 20.sp,
                      // height: 1.7.h,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                    color: Colors.white,
                    child: Text(
                      "12% off",
                      style: TextStyle(
                        color: AppColors().inkColor,
                        fontFamily: "OpenSans",
                        fontSize: 12.sp,
                        // height: 1.7.h,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    ),
  ),
  Container(
    decoration: BoxDecoration(
      color: AppColors().inkColor,
      borderRadius: BorderRadius.circular(8),
    ),
    padding: EdgeInsets.only(
      left: 2.w,
      right: 12.w,
      top: 2.h,
      bottom: 2.h,
    ),
    margin: EdgeInsets.only(left: 20.w),
    height: 160.h,
    width: 280.w,
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            "assets/images/book21.png",
            height: 160.h,
            width: 100.w,
            fit: BoxFit.fitHeight,
          ),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                    text: 'Novel\n',
                    style: TextStyle(
                      color: AppColors().lightCream,
                      fontFamily: "OpenSans",
                      fontSize: 12.sp,
                      // height: 1.7.h,
                      fontWeight: FontWeight.w400,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Tuesday Mooney Talks to Ghosts',
                        style: TextStyle(
                          color: AppColors().white,
                          fontFamily: "OpenSans",
                          fontSize: 16.sp,
                          height: 1.4.h,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ]),
              ),
              Text(
                "Kate Raculla",
                style: TextStyle(
                  color: AppColors().white,
                  fontFamily: "OpenSans",
                  fontSize: 14.sp,
                  // height: 1.7.h,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$33.00",
                    style: TextStyle(
                      color: AppColors().white,
                      fontFamily: "OpenSans",
                      fontSize: 20.sp,
                      // height: 1.7.h,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                    color: Colors.white,
                    child: Text(
                      "12% off",
                      style: TextStyle(
                        color: AppColors().inkColor,
                        fontFamily: "OpenSans",
                        fontSize: 12.sp,
                        // height: 1.7.h,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    ),
  ),
  Container(
    decoration: BoxDecoration(
      color: AppColors().inkColor,
      borderRadius: BorderRadius.circular(8),
    ),
    padding: EdgeInsets.only(
      left: 2.w,
      right: 12.w,
      top: 2.h,
      bottom: 2.h,
    ),
    margin: EdgeInsets.only(left: 20.w),
    height: 160.h,
    width: 280.w,
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            "assets/images/book12.png",
            height: 160.h,
            width: 100.w,
            fit: BoxFit.fitHeight,
          ),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                    text: 'Novel\n',
                    style: TextStyle(
                      color: AppColors().lightCream,
                      fontFamily: "OpenSans",
                      fontSize: 12.sp,
                      // height: 1.7.h,
                      fontWeight: FontWeight.w400,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Tuesday Mooney Talks to Ghosts',
                        style: TextStyle(
                          color: AppColors().white,
                          fontFamily: "OpenSans",
                          fontSize: 16.sp,
                          height: 1.4.h,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ]),
              ),
              Text(
                "Kate Raculla",
                style: TextStyle(
                  color: AppColors().white,
                  fontFamily: "OpenSans",
                  fontSize: 14.sp,
                  // height: 1.7.h,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$33.00",
                    style: TextStyle(
                      color: AppColors().white,
                      fontFamily: "OpenSans",
                      fontSize: 20.sp,
                      // height: 1.7.h,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                    color: Colors.white,
                    child: Text(
                      "12% off",
                      style: TextStyle(
                        color: AppColors().inkColor,
                        fontFamily: "OpenSans",
                        fontSize: 12.sp,
                        // height: 1.7.h,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    ),
  ),
];
