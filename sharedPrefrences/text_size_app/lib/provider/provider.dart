

import 'package:flutter/cupertino.dart';
import 'package:text_size_app/utilities/sharedPreferences.dart';

class TextSizeProvider extends ChangeNotifier{

  late int _textSize;

  int get textSize=>_textSize;

  TextSizeProvider(){
    _textSize=4;
    loading();
  }


  void changeTextSize( newSize){
    _textSize=newSize;
    MySharedPreferences.saveData(newSize);
    notifyListeners();
  }

  void loading()async{
    _textSize= await MySharedPreferences.getData();
    notifyListeners();
  }
}