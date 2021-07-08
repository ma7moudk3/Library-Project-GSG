import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:library_app/helper/constants.dart';
import 'package:library_app/helper/dummyData.dart';
import 'package:library_app/view/widgets/primaryText.dart';

import 'bookDetailsScreen.dart';

class LibraryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: ScreenUtil().screenWidth,
          height: 270.h,
          decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(28),
                  bottomRight: Radius.circular(28))),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  maxRadius: 50,
                  backgroundImage: AssetImage(
                    'images/profile.jpeg',
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                PrimaryText(
                  text: 'محمد أحمد',
                  textColor: Colors.white,
                  fontWeight: FontWeight.bold,
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25, right: 15),
          child: PrimaryText(
            text: 'المفضلة',
            alignment: Alignment.topRight,
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height * 0.82),
            ),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BookDetailsScreen(
                        book: DummyData.dummyData.books[index].book,
                      ),
                    ),
                  );
                },
                child: DummyData.dummyData.books[index],
              );
            },
            itemCount: DummyData.dummyData.books.length,
          ),
        )
      ],
    );
  }
}
