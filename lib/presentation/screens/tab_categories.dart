import 'package:bookstore/core/values/app_colors.dart';
import 'package:flutter/material.dart' hide CarouselController;
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesScreenTab extends StatefulWidget {
  const CategoriesScreenTab({super.key});

  @override
  State<CategoriesScreenTab> createState() => _CategoriesScreenTabState();
}

class _CategoriesScreenTabState extends State<CategoriesScreenTab> {
  TextEditingController searchController = TextEditingController();
  FocusNode searchNode = FocusNode();

  List<Map<String, dynamic>> items = [
    {"text": "Non-Fiction", "image": "cat1.png"},
    {"text": "Classics", "image": "cat2.png"},
    {"text": "Fantasy", "image": "cat3.png"},
    {"text": "Young Adult", "image": "cat4.png"},
    {"text": "Crime", "image": "cat5.png"},
    {"text": "Horror", "image": "cat1.png"},
    {"text": "Sci-Fi", "image": "cat2.png"},
    {"text": "Drama", "image": "cat3.png"},
    {"text": "Thriller", "image": "cat1.png"},
    {"text": "History", "image": "cat2.png"},
    {"text": "AutoBiography", "image": "cat3.png"},
    {"text": "Novel", "image": "cat4.png"},
  ];

  @override
  void initState() {
    searchController.addListener(() {
      _handleListener();
    });
    searchNode.addListener(() {
      _handleListener();
    });

    super.initState();
  }

  void _handleListener() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80.h,
          automaticallyImplyLeading: false,
          backgroundColor: AppColors().white,
          elevation: 0,
          title: Container(
            margin: EdgeInsets.only(top: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 56.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: AppColors().lightCream,
                        ),
                        child: TextFormField(
                          controller: searchController,
                          focusNode: searchNode,
                          style: TextStyle(
                            fontSize: 14.sp,
                          ),
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: searchNode.hasFocus
                                  ? AppColors().inkColor
                                  : null,
                            ),
                            hintText: "Search title/author/ISBN no",
                            border: const OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColors().transparent),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors().inkColor, width: 1.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: AppColors().white,
                      width: 12.w,
                      height: 56.h,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: AppColors().lightCream,
                      ),
                      height: 56.h,
                      padding: EdgeInsets.symmetric(horizontal: 14.w),
                      child: Icon(
                        Icons.filter_alt,
                        color: AppColors().inkColor,
                      ),
                    )
                  ],
                ),
                // Container(
                //   margin: EdgeInsets.symmetric(vertical: 14.h),
                //   child: Text(
                //     'Categories',
                //     style: TextStyle(color: AppColors().inkColor),
                //   ),
                // ),
              ],
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.h),
                child: Text(
                  "Categories",
                  style: TextStyle(
                    color: AppColors().inkColor,
                    fontFamily: "OpenSans",
                    fontSize: 18.sp,
                    height: 1.7.h,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Expanded(
                  child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // number of items in each row
                  mainAxisSpacing: 20.0, // spacing between rows
                  crossAxisSpacing: 20.0, // spacing between columns
                  childAspectRatio: 1.4,
                ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/${items[index]["image"]}",
                        ),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        items[index]["text"].toString(),
                        style: TextStyle(
                          color: AppColors().white,
                          fontFamily: "OpenSans",
                          fontSize: 16.sp,
                          height: 1.7.h,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  );
                },
              )),
            ],
          ),
        ),
      ),
    );
  }
}
