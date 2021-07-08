import 'package:flutter/material.dart';
import 'package:library_app/helper/constants.dart';
import 'package:library_app/view/widgets/primaryText.dart';

class ExpandableText extends StatefulWidget {
  ExpandableText(this.text);

  final String text;
  bool isExpanded = false;

  @override
  _ExpandableTextState createState() => new _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText>
    with TickerProviderStateMixin<ExpandableText> {
  @override
  Widget build(BuildContext context) {
    return new Column(children: <Widget>[
      new AnimatedSize(
          vsync: this,
          duration: const Duration(milliseconds: 200),
          child: new ConstrainedBox(
              constraints: widget.isExpanded
                  ? new BoxConstraints()
                  : new BoxConstraints(maxHeight: 100.0),
              child: new Text(
                widget.text,
                textAlign: TextAlign.right,
                softWrap: true,
                overflow: TextOverflow.fade,
                style: TextStyle(
                  fontFamily: primaryFont,
                  fontSize: 15,
                ),
              ))),
      widget.isExpanded
          ? new ConstrainedBox(constraints: new BoxConstraints())
          : new TextButton(
              child: PrimaryText(
                text: 'عرض المزيد',
                textColor: primaryColor,
                fontWeight: FontWeight.bold,
                alignment: Alignment.topRight,
                fontSize: 18,
              ),
              onPressed: () => setState(() => widget.isExpanded = true))
    ]);
  }
}
