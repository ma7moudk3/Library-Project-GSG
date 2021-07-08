import 'package:flutter/material.dart';
import 'package:library_app/model/book.dart';
import 'package:library_app/view/widgets/primaryText.dart';
import 'package:library_app/view/widgets/secondaryText.dart';
import 'package:flutter_screenutil/size_extension.dart';

class BooksListItem extends StatelessWidget {
  final Book book;
  const BooksListItem({
    Key key,
    @required this.book,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 0, right: 15, left: 15),
      child: Column(
        children: [
          Container(
            height: 300.h,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(book.imagePath, fit: BoxFit.cover),
            ),
          ),
          PrimaryText(
            text: book.bookName,
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            alignment: Alignment.centerRight,
          ),
          SecondaryText(
            text: book.bookType,
            fontSize: 15.sp,
            alignment: Alignment.centerRight,
          )
        ],
      ),
    );
  }
}
