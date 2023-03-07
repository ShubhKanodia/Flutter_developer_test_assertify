import 'package:flutter/foundation.dart';

class DataProvider extends ChangeNotifier {
  List<int> _list = [];

  List<int> get list => _list;

  void addToList(int number) {
    _list.add(number);
    notifyListeners();
  }
}
