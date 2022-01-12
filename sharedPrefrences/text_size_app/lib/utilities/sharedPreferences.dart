import 'package:shared_preferences/shared_preferences.dart';

class MySharedPreferences{


  static saveData(int data)async{
  final _pref= await SharedPreferences.getInstance();
  _pref.setInt("Size", data);
  
  }

  static Future<int> getData()async{
    final _pref=await SharedPreferences.getInstance();
    return _pref.getInt("Size")??2;
  }
}