import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:library_app/helper/constants.dart';
import 'package:library_app/view/screens/downloadsScreen.dart';
import 'package:library_app/view/screens/homeScreen.dart';
import 'package:library_app/view/screens/libraryScreen.dart';

class AppController extends StatefulWidget {
  @override
  _AppControllerState createState() => _AppControllerState();
}

class _AppControllerState extends State<AppController> {
  int _navigatorIndex = 0;

  Widget _currentScreen = HomeScreen();

  get currentScreen => _currentScreen;

  get navigatorIndex => _navigatorIndex;

  void changeSelectedValue(int selectedValue) {
    _navigatorIndex = selectedValue;
    switch (selectedValue) {
      case 0:
        _currentScreen = HomeScreen();
        break;
      case 1:
        _currentScreen = DownloadsScreen();
        break;
      case 2:
        _currentScreen = LibraryScreen();
        break;
    }
    setState(() {});
  }

  ShapeBorder bottomBarShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  );

  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;

  EdgeInsets padding = const EdgeInsets.all(12);

  SnakeShape snakeShape = SnakeShape.circle;

  bool showSelectedLabels = false;

  bool showUnselectedLabels = false;

  Color selectedColor = primaryColor;

  Color unselectedColor = secondaryColor;

  Color containerColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentScreen,
      bottomNavigationBar: bottomNavigationBar(),
    );
  }

  Widget bottomNavigationBar() {
    int _selectedItemPosition = navigatorIndex;

    return SnakeNavigationBar.color(
      behaviour: snakeBarStyle,
      snakeShape: snakeShape,
      shape: bottomBarShape,
      padding: padding,
      snakeViewColor: selectedColor,
      selectedItemColor:
          snakeShape == SnakeShape.indicator ? selectedColor : null,
      unselectedItemColor: Colors.blueGrey,
      showUnselectedLabels: showUnselectedLabels,
      showSelectedLabels: showSelectedLabels,
      currentIndex: _selectedItemPosition,
      onTap: (index) {
        changeSelectedValue(index);
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'tickets'),
        BottomNavigationBarItem(
            icon: Icon(Icons.file_download), label: 'calendar'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'home'),
      ],
    );
  }
}
