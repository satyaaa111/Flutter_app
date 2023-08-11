import 'package:flutter/cupertino.dart';

class AppLayout{
  
   static getSize(BuildContext context){
    final size = AppLayout.getSize(context);
    
    return SizedBox(
      width: MediaQuery.of(context).size.width,
    ) ; 
   }
}