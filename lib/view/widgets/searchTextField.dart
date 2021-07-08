import 'package:flutter/material.dart';
import 'package:library_app/helper/constants.dart';

class SearchTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 6.0,
      shadowColor: Colors.black26,
      borderRadius: BorderRadius.all(Radius.circular(50)),
      child: TextField(
        style: TextStyle(color: Colors.black),
        textDirection: TextDirection.rtl,
        cursorColor: primaryColor,
        onChanged: (value) {
          //searchValue = value;
        },
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(17),
            hintStyle:
                TextStyle(color: Colors.grey.shade400, fontFamily: primaryFont),
            hintTextDirection: TextDirection.rtl,
            hintText: 'بحث',
            border: new OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            filled: true,
            fillColor: Colors.white,
            prefixIcon: Container(
                margin: EdgeInsets.only(left: 10),
                width: 39.0,
                height: 39.0,
                child: RawMaterialButton(
                  fillColor: Theme.of(context).primaryColor,
                  shape: CircleBorder(),
                  elevation: 0.0,
                  child: Icon(
                    Icons.search_rounded,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    //    searchData(searchValue);
                  },
                ))),
      ),
    );
  }
}
