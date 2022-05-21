import "package:flutter/foundation.dart";

class countProvider with ChangeNotifier{
int _count = 10;
int get count => _count;

void setCount(){
  _count ++;
  notifyListeners();
}
}