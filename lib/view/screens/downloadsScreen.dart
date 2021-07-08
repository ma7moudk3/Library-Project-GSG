import 'package:flutter/material.dart';
import 'package:library_app/helper/constants.dart';
import 'package:library_app/helper/dummyData.dart';
import 'package:library_app/view/widgets/primaryText.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'bookDetailsScreen.dart';

class DownloadsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: PrimaryText(
          text: 'التحميلات',
          fontWeight: FontWeight.bold,
          textColor: Colors.white,
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
      ),
      body: Container(
        child: Center(
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
                child:DummyData.dummyData.books[index],
              );
            },
            itemCount: DummyData.dummyData.books.length,
          ),
        ),
      ),
    );
  }
}
