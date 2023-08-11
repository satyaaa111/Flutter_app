import 'package:flutter/material.dart';
import 'package:my_app3/utills/app_layout.dart';
import 'package:my_app3/utills/app_styles.dart';
import 'package:my_app3/widgets/thick_container.dart';

class HotelScreens extends StatelessWidget {
  const HotelScreens({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      
      children: [    
         Container(
          width: MediaQuery.of(context).size.width*0.60,
          height: 350,     
          decoration: BoxDecoration(
                color: Styles.primaryColor,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color:  Colors.grey.shade500,
                    blurRadius: 2,
                    // spreadRadius: 1,
                  )
                ],
                ),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 180,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Styles.primaryColor,
                image:const DecorationImage(
            
                  fit: BoxFit.cover,
                  image:  AssetImage("assets/images/spaceHotel.jpeg"),
                  ),
                 ),
                
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Text(
                "Open Space",
                style: Styles.headLineStyle2.copyWith(color:const Color(0xFFd2bdb6)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Text(
                "Mars Orbit",
                style: Styles.headLineStyle3.copyWith(color: Colors.white),
              ),
            ),
            const SizedBox(height: 8,),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Text(
                "\$800k per Solar Orbit",
                style: Styles.headLineStyle3.copyWith(color: const Color(0xFFd2bdb6)),
              ),
            ),
          ],
        ),
      
     ),
        
   ],
      
  );
}
}