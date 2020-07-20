import 'package:custom_painter/src/pages/SlidesShowPage.dart';
import 'package:flutter/material.dart';

class LayoutPage with ChangeNotifier {
  Widget _currentPage = SlideShowPage();

  set currentPage (Widget page){
    this._currentPage = page;
    notifyListeners();
  }

  Widget get currentPage => this._currentPage;
}