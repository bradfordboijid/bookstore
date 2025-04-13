import 'package:bookstore/core/values/app_colors.dart';
import 'package:bookstore/presentation/screens/checkout_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartScreenTab extends StatefulWidget {
  const CartScreenTab({super.key});

  @override
  State<CartScreenTab> createState() => _CartScreenTabState();
}

class _CartScreenTabState extends State<CartScreenTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Cart",
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Container(
              // constraints: BoxConstraints(
              //   maxHeight: 320.h,
              //   minHeight: 0,
              // ),
              margin: EdgeInsets.only(
                left: 20.w,
                right: 20.w,
                // top: 20.h,
                bottom: 20.h,
              ),
              // color: Colors.amber,
              width: MediaQuery.of(context).size.width,

              child: ListView.builder(
                controller: ScrollController(),
                // physics: const BouncingScrollPhysics(),
                itemCount: 6,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
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
                    margin: EdgeInsets.only(
                      bottom: 14.h,
                    ),
                    height: 140.h,
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
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 5.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: RichText(
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        text: TextSpan(
                                            text: 'Novel\n',
                                            style: TextStyle(
                                              color: AppColors().lightCream,
                                              fontFamily: "OpenSans",
                                              fontSize: 10.sp,
                                              // height: 1.7.h,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text:
                                                    'Tuesday Mooney Talks to Ghosts',
                                                style: TextStyle(
                                                  color: AppColors().white,
                                                  fontFamily: "OpenSans",
                                                  fontSize: 14.sp,
                                                  // height: 1.4.h,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              )
                                            ]),
                                      ),
                                    ),
                                    Container(
                                      color: Colors.amber,
                                      width: 20.w,
                                    ),
                                    Icon(
                                      Icons.close,
                                      color: AppColors().lightCream,
                                      size: 20.sp,
                                    ),
                                  ],
                                ),
                                Text(
                                  "Kate Raculla",
                                  style: TextStyle(
                                    color: AppColors().lightCream,
                                    fontFamily: "OpenSans",
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(2),
                                            color: AppColors().white,
                                          ),
                                          child: Icon(
                                            Icons.remove,
                                            color: AppColors().inkColor,
                                            size: 16.sp,
                                          ),
                                        ),
                                        Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10.w),
                                            child: Text(
                                              "1",
                                              style: TextStyle(
                                                color: AppColors().white,
                                                fontFamily: "OpenSans",
                                                fontSize: 16.sp,
                                                // height: 1.7.h,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            )),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(2),
                                            color: AppColors().white,
                                          ),
                                          child: Icon(
                                            Icons.add,
                                            color: AppColors().inkColor,
                                            size: 16.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 12.w),
                                    Text(
                                      "\$17.00",
                                      style: TextStyle(
                                        color: AppColors().white,
                                        fontFamily: "OpenSans",
                                        fontSize: 16.sp,
                                        // height: 1.7.h,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Order Summary",
                  style: TextStyle(
                    color: AppColors().inkColor,
                    fontFamily: "OpenSans",
                    fontSize: 20.sp,
                    // height: 1.7.h,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Subtotal",
                      style: TextStyle(
                        color: AppColors().inkColor,
                        fontFamily: "OpenSans",
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "\$102.00",
                      style: TextStyle(
                        color: AppColors().inkColor,
                        fontFamily: "OpenSans",
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Shipping",
                      style: TextStyle(
                        color: AppColors().inkColor,
                        fontFamily: "OpenSans",
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "\$10.00",
                      style: TextStyle(
                        color: AppColors().inkColor,
                        fontFamily: "OpenSans",
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12.h),
                Divider(
                  color: AppColors().inkColor,
                  thickness: 1,
                  height: 0,
                ),
                SizedBox(height: 12.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total",
                      style: TextStyle(
                        color: AppColors().inkColor,
                        fontFamily: "OpenSans",
                        fontSize: 18.sp,
                        // height: 1.7.h,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "\$112.00",
                      style: TextStyle(
                        color: AppColors().inkColor,
                        fontFamily: "OpenSans",
                        fontSize: 18.sp,
                        // height: 1.7.h,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(bottom: 8.h, top: 40.h),
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
                            .pushNamed(CheckoutScreen.routeName);
                      },
                      child: Center(
                        child: Text(
                          "Proceed to Checkout",
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
