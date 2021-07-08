import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_app/view/controller/appController.dart';
import 'package:library_app/view/widgets/introScreenonBoarding.dart';
import 'package:library_app/view/widgets/introduction.dart';

class OnBoardingScreen extends StatelessWidget {
  final List<Introduction> list = [
    Introduction(
      title: 'القراءة تُثري العقل وتزيد الوعي',
      subTitle: "نوفر لك أفضل الكتب الإلكترونية لتستمع بقراءة جيدة",
      imageUrl: 'images/welcome2.svg',
      imageHeight: ScreenUtil().screenHeight * 0.4,
      imageWidth: ScreenUtil().screenWidth * 0.5,
    ),
    Introduction(
      title: 'البيت دون كتب كالجسد بلا روح',
      subTitle: "ليـسَ ثمّة سفينة كالكتاب تنقلنا بعيدًا بعيدًا",
      imageUrl: 'images/welcome3.svg',
      imageHeight: ScreenUtil().screenHeight * 0.4,
      imageWidth: ScreenUtil().screenWidth * 0.9,
    ),
    Introduction(
      title: "نقرأ لنعرف أنّنا لسنا لوحدنا",
      subTitle:
          "القراءة وحدها هي التي تُعطي الإنسان الواحد أكثر من حياة واحدة؛ لأنها تزيد هذه الحياة عمقًا",
      imageUrl: 'images/welcome4.svg',
      imageHeight: ScreenUtil().screenHeight * 0.4,
      imageWidth: ScreenUtil().screenWidth * 0.9,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    print("Height" + MediaQuery.of(context).size.height.toString());
    print("width" + MediaQuery.of(context).size.width.toString());
    return IntroScreenOnboarding(
      introductionList: list,
      onTapSkipButton: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => AppController(),
          ), //MaterialPageRoute
        );
      },
    );
  }
}
