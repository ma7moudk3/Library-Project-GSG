import 'package:flutter/material.dart';
import 'package:library_app/helper/constants.dart';
import 'package:library_app/helper/dummyData.dart';
import 'package:library_app/view/screens/bookDetailsScreen.dart';
import 'package:library_app/view/widgets/bookListItem.dart';
import 'package:library_app/view/widgets/primaryText.dart';
import 'package:library_app/view/widgets/searchTextField.dart';
import 'package:flutter_screenutil/size_extension.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: scaffolodColor,
        toolbarHeight: 80.h,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(right: 10, top: 10),
          child: Column(
            children: [
              PrimaryText(
                text: 'كتب أدهم شرقاوي',
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
                alignment: Alignment.centerRight,
              ),
              SizedBox(
                height: 10.h,
              ),
              PrimaryText(
                text: 'ما هو الكتاب الذي تريد قراءتَهُ اليوم',
                fontSize: 15.sp,
                alignment: Alignment.centerRight,
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: SearchTextField(),
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
      ),
    );
  }
}
