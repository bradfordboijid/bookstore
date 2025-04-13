import 'package:bookstore/core/values/app_colors.dart';
import 'package:bookstore/presentation/data.dart';
import 'package:bookstore/presentation/screens/book_info_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart' hide CarouselController;
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreenTab extends StatefulWidget {
  const HomeScreenTab({super.key});

  @override
  State<HomeScreenTab> createState() => _HomeScreenTabState();
}

class _HomeScreenTabState extends State<HomeScreenTab> {
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().white,
      appBar: AppBar(
        title: Container(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Happy Reading !",
                style: TextStyle(
                  color: AppColors().inkColor,
                  fontFamily: "OpenSans",
                  fontSize: 18.sp,
                  height: 1.7.h,
                  fontWeight: FontWeight.w700,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.search,
                  size: 28.sp,
                ),
              ),
            ],
          ),
        ),
        automaticallyImplyLeading: false,
        foregroundColor: AppColors().inkColor,
        backgroundColor: AppColors().white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 12.h),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
                child: Text(
                  "Best Deals",
                  style: TextStyle(
                    color: AppColors().inkColor,
                    fontFamily: "OpenSans",
                    fontSize: 20.sp,
                    height: 1.2.h,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 160.h,
                child: CarouselSlider(
                  items: lista,
                  carouselController: carouselController,
                  options: CarouselOptions(
                    autoPlay: true,
                    autoPlayCurve: Curves.ease,
                    autoPlayInterval: const Duration(seconds: 3),
                    scrollPhysics: const BouncingScrollPhysics(),
                    padEnds: false,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 14.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: lista.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => carouselController.animateToPage(entry.key),
                    child: Container(
                      width: currentIndex == entry.key
                          ? MediaQuery.of(context).size.width / 30
                          : MediaQuery.of(context).size.width / 35,
                      height: MediaQuery.of(context).size.height / 30,
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors().white, width: 1),
                        shape: BoxShape.circle,
                        color: currentIndex == entry.key
                            ? AppColors().richBlue
                            : AppColors().silver,
                      ),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(height: 30.h),
              buildOneBookRow(context, "Top Books", [22, 21, 3, 7, 6]),
              SizedBox(height: 50.h),
              buildOneBookRow(context, "Latest Books", [4, 14, 1, 12, 18]),
              SizedBox(height: 50.h),
              buildOneBookRow(context, "Upcoming Books", [17, 8, 19, 17, 16]),
            ],
          ),
        ),
      ),
    );
  }
}

buildOneBookRow(BuildContext context, String title, List<int> bookList) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).pushNamed(BookInfoScreen.routeName);
    },
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: AppColors().inkColor,
                  fontFamily: "OpenSans",
                  fontSize: 20.sp,
                  height: 1.2.h,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "See more",
                style: TextStyle(
                  color: AppColors().inkColor,
                  fontFamily: "OpenSans",
                  fontSize: 14.sp,
                  height: 1.2.h,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20.h),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 300.h,
          child: ListView.builder(
            controller: ScrollController(),
            physics: const BouncingScrollPhysics(),
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors().inkColor,
                ),
                margin: EdgeInsets.only(left: 20.w),
                height: 300.h,
                width: 180.w,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        color: AppColors().lightCream,
                      ),
                      height: 140.h,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                          "assets/images/book${bookList[index]}.png"),
                    ),
                    Expanded(
                      child: Container(
                        width: 180.w,
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.w, vertical: 12.h),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
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
                                      text: 'Tuesday Mooney',
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
                            Text(
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
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        )
      ],
    ),
  );
}
