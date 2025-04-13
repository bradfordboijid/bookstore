import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MoviesListView extends StatelessWidget {
  final ScrollController scrollController;
  final List images;

  const MoviesListView({
    super.key,
    required this.scrollController,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: IgnorePointer(
        child: ListView.builder(
            controller: scrollController,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(left: 20.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/${images[index]}',
                    width: 80.w,
                    height: 130.h,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            }),
      ),
    );
  }
}
