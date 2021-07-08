import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_app/helper/constants.dart';
import 'package:library_app/helper/dummyData.dart';
import 'package:library_app/model/book.dart';
import 'package:library_app/view/screens/readBookScreen.dart';
import 'package:library_app/view/widgets/expandableText.dart';
import 'package:library_app/view/widgets/primaryText.dart';
import 'package:library_app/view/widgets/secondaryText.dart';

class BookDetailsScreen extends StatefulWidget {
  final Book book;

  const BookDetailsScreen({
    Key key,
    @required this.book,
  }) : super(key: key);
  @override
  _BookDetailsScreenState createState() => _BookDetailsScreenState();
}

class _BookDetailsScreenState extends State<BookDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              snap: false,
              floating: false,
              expandedHeight: ScreenUtil().screenHeight * 0.35,
              flexibleSpace: FlexibleSpaceBar(
                title: PrimaryText(
                  text: widget.book.bookName,
                  fontWeight: FontWeight.bold,
                  textColor: Colors.white,
                  alignment: Alignment.bottomCenter,
                  fontSize: 14,
                ),
                background: Container(
                  padding: EdgeInsets.only(
                      left: 115, right: 115, top: 50, bottom: 60),
                  color: primaryColor,
                  child: Container(
                    width: ScreenUtil().scaleWidth * 0.2,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child:
                          Image.asset(widget.book.imagePath, fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Column(
                    children: [
                      Container(
                        width: ScreenUtil().screenWidth,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.grey.shade300),
                        child: Directionality(
                          // add this
                          textDirection: TextDirection.rtl,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    PrimaryText(
                                      text: 'عدد الصفحات',
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    PrimaryText(
                                      text: '150 صفحة',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    )
                                  ],
                                ),
                              ),
                              VerticalDivider(
                                color: Colors.grey,
                                endIndent: 10,
                                indent: 10,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    PrimaryText(
                                      text: 'اللغة',
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    PrimaryText(
                                      text: 'اللغة العربية',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    )
                                  ],
                                ),
                              ),
                              VerticalDivider(
                                color: Colors.grey,
                                width: 25,
                                endIndent: 10,
                                indent: 10,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    PrimaryText(
                                      text: 'التقييم',
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    PrimaryText(
                                      text: '4.5',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: PrimaryText(
                          text: "وصف الكتاب",
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          alignment: Alignment.topRight,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      ExpandableText(widget.book.bookDetails),
                      SizedBox(
                        height: 35,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: InkWell(
                              onTap: () {
                                DummyData.dummyData.updateBook(widget.book.bookName);
                              },
                              child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  width: ScreenUtil().screenWidth * 0.8,
                                  height: 55,
                                  decoration: BoxDecoration(
                                      color: primaryColor,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(100))),
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ReadBookScreen(bookName: widget.book.bookName,),
                                  ), //MaterialPageRoute
                                );
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                width: ScreenUtil().screenWidth * 0.8,
                                height: 55,
                                decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                                child: PrimaryText(
                                  alignment: Alignment.center,
                                  text: "اقرأ الكتاب",
                                  textColor: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ]),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
            child: ButtonBar(
          alignment: MainAxisAlignment.spaceEvenly,
        )));
  }
}
