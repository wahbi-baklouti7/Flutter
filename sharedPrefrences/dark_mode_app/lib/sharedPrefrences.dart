import 'package:shared_preferences/shared_preferences.dart';
class MySharedPreferences{



  static saveDate(bool data)async {
  
    final _pref= await SharedPreferences.getInstance();
    _pref.setBool("isDark", data);
  }


  static Future<bool> getData()async{
    final _pref=await SharedPreferences.getInstance();
   var dark= _pref.getBool("isDark")??false;
   return dark;
    
  }
}