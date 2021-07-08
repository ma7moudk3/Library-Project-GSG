import 'package:library_app/model/book.dart';
import 'package:library_app/view/widgets/bookListItem.dart';

class DummyData {
  DummyData._();
  static final DummyData dummyData = DummyData._();
  List<BooksListItem> books = [
    BooksListItem(
      book: Book(
          bookName: 'رواية نطفة',
          bookType: 'رواية خيالية',
          imagePath: 'images/book1.jpg',
          isFavorite: true),
    ),
    BooksListItem(
        book: Book(
      bookName: 'للرجال فقط',
      bookType: 'مبادئ التعامل مع النساء',
      imagePath: 'images/book2.jpeg',
    )),
    BooksListItem(
        book: Book(
      bookName: 'ثاني اثنين',
      bookType: 'رواية دينية',
      imagePath: 'images/book4.jpg',
    )),
    BooksListItem(
        book: Book(
      bookName: 'على منهاج النبوة',
      bookType: 'رواية خيالية',
      imagePath: 'images/book3.jpeg',
    )),
    BooksListItem(
        book: Book(
      bookName: 'نبأ يقين',
      bookType: 'رواية خيالية',
      imagePath: 'images/book5.jpeg',
    )),
    BooksListItem(
        book: Book(
      bookName: 'مع النبي',
      bookType: 'رواية خيالية',
      imagePath: 'images/book6.jpeg',
    )),
    BooksListItem(
        book: Book(
      bookName: 'الأسيف',
      bookType: 'رواية خيالية',
      imagePath: 'images/book7.jpeg',
    )),
    BooksListItem(
        book: Book(
      bookName: 'عندما التقيت عُمر',
      bookType: 'رواية خيالية',
      imagePath: 'images/book8.jpeg',
    )),
  ];

  void updateBook(String bookName) {
    books.forEach((element) {
      if (element.book.bookName == bookName) {
        element.book.isFavorite = !element.book.isFavorite;
      }
    });
  }
}
