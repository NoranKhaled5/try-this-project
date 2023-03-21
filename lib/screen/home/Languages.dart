import 'package:flutter/material.dart';

class Languages extends StatelessWidget {

      String? _lang = languages;

  static String? get languages => null;



 getLanguages(){
   return _lang;
  }
  setLanguages(String lang){
   _lang = lang;
 //  notifyListeners();
  }
  String home(){
   if(getLanguages() =='Ar') {
     return "الرئيسيه";
   }
   else
       {
         return"Home";
       }

  }
 String like(){
  if(getLanguages() =='Ar') {
    return "إعجاب";
  }
  else
  {
    return"Likes";
  }
}
 String setting(){
  if(getLanguages() =='Ar') {
    return "الإعدادت";
  }
  else
  {
    return"setting";
  }
}
String ex(){
  if(getLanguages() =='Ar') {
    return "استكشاف";
  }
  else
  {
    return"Explore";
  }

}
String best(){
  if(getLanguages() =='Ar') {
    return "أفضل الساعات لك";
  }
  else
  {
    return"Best watches for you";
  }
}
String search(){
  if(getLanguages() =='Ar') {
    return "البحث عن عناصر";
  }
  else
  {
    return"Search items";
  }
}
String watches(){
  if(getLanguages() =='Ar') {
    return "ساعات";
  }
  else
  {
    return"Watches";
  }
}
String classic(){
  if(getLanguages() =='Ar') {
    return "كلاسيكى";
  }
  else
  {
    return"classic";
  }
}
String smart(){
  if(getLanguages() =='Ar') {
    return "ذكيه";
  }
  else
  {
    return"smart";
  }
}
String  sport(){
  if(getLanguages() =='Ar') {
    return "رياضيه";
  }
  else
  {
    return"Sport";
  }
}
String all(){
  if(getLanguages() =='Ar') {
    return "كل";
  }
  else
  {
    return"All";
  }
}
String truon(){
  if(getLanguages() =='Ar') {
    return "كلاسيكى";
  }
  else
  {
    return"تجربة";
  }
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}