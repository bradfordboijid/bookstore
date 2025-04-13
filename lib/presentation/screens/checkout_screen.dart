import 'package:bookstore/core/values/app_colors.dart';
import 'package:bookstore/presentation/screens/payment_received.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckoutScreen extends StatefulWidget {
  static const String routeName = "CheckoutScreen";

  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Checkout",
          style: TextStyle(
            color: AppColors().inkColor,
            fontFamily: "OpenSans",
            fontSize: 18.sp,
            height: 1.7.h,
            fontWeight: FontWeight.w700,
          ),
        ),
        foregroundColor: AppColors().inkColor,
        backgroundColor: AppColors().white,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 12.h,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Delivering Address",
                  style: TextStyle(
                    color: AppColors().inkColor,
                    fontFamily: "OpenSans",
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 20.h),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.w, vertical: 20.h),
                  decoration: BoxDecoration(
                    color: AppColors().inkColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(children: [
                    Expanded(
                      child: Text(
                        "No.23, James Street, New Town, North Province",
                        style: TextStyle(
                          color: AppColors().white,
                          fontFamily: "OpenSans",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      "Change",
                      style: TextStyle(
                        color: AppColors().lightCream,
                        fontFamily: "OpenSans",
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ]),
                ),
                SizedBox(height: 16.h),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(bottom: 8.h),
                  height: 60.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: AppColors().inkColor,
                      width: 2,
                    ),
                    color: AppColors().transparent,
                  ),
                  child: Material(
                    color: AppColors().transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(5),
                      onTap: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (context) {
                            return Padding(
                              padding: MediaQuery.of(context).viewInsets,
                              child: Wrap(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20.w, vertical: 24.h),
                                    // height: 100,
                                    width: MediaQuery.of(context).size.width,
                                    child: Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            color: AppColors().lightCream,
                                          ),
                                          child: TextFormField(
                                            style: TextStyle(
                                              height: 1.2,
                                              fontSize: 14.sp,
                                            ),
                                            decoration: InputDecoration(
                                              hintStyle: TextStyle(
                                                height: 1.2,
                                                fontSize: 14.sp,
                                              ),
                                              hintText: "Street Address",
                                              border:
                                                  const OutlineInputBorder(),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: AppColors()
                                                        .transparent),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: AppColors().inkColor,
                                                    width: 1.5),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            color: AppColors().lightCream,
                                          ),
                                          child: TextFormField(
                                            style: TextStyle(
                                              height: 1.2,
                                              fontSize: 14.sp,
                                            ),
                                            decoration: InputDecoration(
                                              hintStyle: TextStyle(
                                                height: 1.2,
                                                fontSize: 14.sp,
                                              ),
                                              hintText: "City",
                                              border:
                                                  const OutlineInputBorder(),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: AppColors()
                                                        .transparent),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: AppColors().inkColor,
                                                    width: 1.5),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            color: AppColors().lightCream,
                                          ),
                                          child: TextFormField(
                                            style: TextStyle(
                                              height: 1.2,
                                              fontSize: 14.sp,
                                            ),
                                            decoration: InputDecoration(
                                              hintStyle: TextStyle(
                                                height: 1.2,
                                                fontSize: 14.sp,
                                              ),
                                              hintText: "Postal Code",
                                              border:
                                                  const OutlineInputBorder(),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: AppColors()
                                                        .transparent),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: AppColors().inkColor,
                                                    width: 1.5),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                margin: EdgeInsets.only(
                                                    bottom: 8.h),
                                                height: 60.h,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color: AppColors().inkColor,
                                                ),
                                                child: Material(
                                                  color:
                                                      AppColors().transparent,
                                                  child: InkWell(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    onTap: () {},
                                                    child: Center(
                                                      child: Text(
                                                        "Add",
                                                        style: TextStyle(
                                                          color:
                                                              AppColors().white,
                                                          fontFamily:
                                                              "OpenSans",
                                                          fontSize: 14.sp,
                                                          height: 1.7.h,
                                                          fontWeight:
                                                              FontWeight.w600,
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
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                margin: EdgeInsets.only(
                                                    bottom: 8.h),
                                                height: 60.h,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  border: Border.all(
                                                    color: AppColors().inkColor,
                                                  ),
                                                  color:
                                                      AppColors().transparent,
                                                ),
                                                child: Material(
                                                  color:
                                                      AppColors().transparent,
                                                  child: InkWell(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    onTap: () {},
                                                    child: Center(
                                                      child: Text(
                                                        "Cancel",
                                                        style: TextStyle(
                                                          color: AppColors()
                                                              .inkColor,
                                                          fontFamily:
                                                              "OpenSans",
                                                          fontSize: 14.sp,
                                                          height: 1.7.h,
                                                          fontWeight:
                                                              FontWeight.w600,
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
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: Center(
                        child: Text(
                          "Add a New Delivery Address",
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
                SizedBox(height: 20.h),
                Text(
                  "Payment Method",
                  style: TextStyle(
                    color: AppColors().inkColor,
                    fontFamily: "OpenSans",
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 16.h),
                Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: AppColors().inkColor,
                        ),
                      ),
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      "Credit Card",
                      style: TextStyle(
                        color: AppColors().inkColor,
                        fontFamily: "OpenSans",
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(2),
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: AppColors().inkColor,
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors().inkColor,
                        ),
                      ),
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      "Cash on Delivery",
                      style: TextStyle(
                        color: AppColors().inkColor,
                        fontFamily: "OpenSans",
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Container(
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
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(PaymentReceivedScreen.routeName);
                  },
                  child: Center(
                    child: Text(
                      "Confirm Order",
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
    );
  }
}
