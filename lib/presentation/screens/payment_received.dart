import 'package:bookstore/core/values/app_colors.dart';
import 'package:flutter/material.dart' hide CarouselController;
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentReceivedScreen extends StatefulWidget {
  static const String routeName = "PaymentReceivedScreen";

  const PaymentReceivedScreen({super.key});

  @override
  State<PaymentReceivedScreen> createState() => _PaymentReceivedScreenState();
}

class _PaymentReceivedScreenState extends State<PaymentReceivedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 70.h, left: 20.w),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Icon(Icons.close),
              ),
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/payment_check.png",
                    width: 160.w,
                    height: 160.w,
                    fit: BoxFit.fitWidth,
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    "Payment received!",
                    style: TextStyle(
                      color: AppColors().inkColor,
                      fontFamily: "OpenSans",
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    "Your order has been confirmed.",
                    style: TextStyle(
                      color: AppColors().inkColor,
                      fontFamily: "OpenSans",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
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
