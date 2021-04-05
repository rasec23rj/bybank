import 'package:flutter/cupertino.dart';

class Regex extends ChangeNotifier {
  RegExp nameRegExp = RegExp('[a-zA-Z]');
  RegExp numberRegExp = RegExp(r'\d');

  notifyListeners();
}
