import 'package:flutter/cupertino.dart';

class Regex extends ChangeNotifier{
   RegExp nameRegExp = RegExp('[a-zA-Z]');
// or RegExp(r'\p{L}'); // see https://stackoverflow.com/questions/3617797/regex-to-match-only-letters
   RegExp numberRegExp = RegExp(r'\d');
  notifyListeners();
}

