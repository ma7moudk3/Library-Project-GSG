import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:library_app/view/widgets/primaryText.dart';
import 'package:library_app/view/widgets/secondaryText.dart';

class Introduction extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String subTitle;
  final double imageHeight;
  final double imageWidth;

  Introduction(
      {this.imageUrl,
      this.title,
      this.subTitle,
      this.imageHeight,
      this.imageWidth});

  @override
  State<StatefulWidget> createState() {
    return new IntroductionState();
  }
}

class IntroductionState extends State<Introduction> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SvgPicture.asset(
                widget.imageUrl,
                height: widget.imageHeight,
                width: widget.imageWidth,
              ),
            ),
            Center(
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: PrimaryText(
                      text: widget.title,
                      textColor: Colors.black,
                      fontSize: 19.0,
                      fontWeight: FontWeight.w600)),
            ),
            SizedBox(
              height: 10.0,
            ),
            SecondaryText(
              text: widget.subTitle,
              textColor: Colors.black,
              fontSize: 17.0,
              fontWeight: FontWeight.w500,
              alignment: Alignment.center,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
