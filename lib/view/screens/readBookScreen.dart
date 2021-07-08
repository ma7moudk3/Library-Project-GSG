import 'package:flutter/material.dart';
import 'package:library_app/view/widgets/primaryText.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ReadBookScreen extends StatelessWidget {
  final String bookName;
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  ReadBookScreen({Key key, this.bookName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: PrimaryText(
            text: bookName,
            textColor: Colors.white,
            fontWeight: FontWeight.bold),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.bookmark,
              color: Colors.white,
            ),
            onPressed: () {
              _pdfViewerKey.currentState?.openBookmarkView();
            },
          ),
        ],
      ),
      body: SafeArea(
        child: SfPdfViewer.network(
          'https://scholar.najah.edu/sites/default/files/all-thesis/autobiography_hakeem_literature.pdf',
          key: _pdfViewerKey,
        ),
      ),
    );
  }
}
