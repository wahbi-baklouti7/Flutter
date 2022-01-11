import 'package:dark_mode_app/sharedPrefrences.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{

    bool _isDark=false;

  bool get isDark=>_isDark;

  ThemeProvider(){
    // _isDark=true;
    loadSharedPrefrences();
  }
  void loadSharedPrefrences()async {
   
    _isDark= await MySharedPreferences.getData();
    notifyListeners();
  }

  void darkModeSwitch(bool newValue){
    _isDark= newValue;
    MySharedPreferences.saveDate(_isDark);
    notifyListeners();
  }
}