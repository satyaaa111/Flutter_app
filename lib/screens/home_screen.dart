import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app3/utills/app_styles.dart';
import 'package:my_app3/screens/ticket_view.dart';
import 'package:my_app3/screens/hotel_screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          //below container covers all the things  that are in the app in a column
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
           child: Column
            (
              
              children: [
               const SizedBox(height: 40,),
              //below row covers two columns ,one is "two text boxes on the left" and other is a photo at the top right corner
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //below column contains two text boxes
                  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Are U Ready?", style: Styles.headLineStyle3,),
                    //to increase the gap between these two texts use the below code or you can use const Gap(5) package also
                    const SizedBox(height: 5,),
                    Text("Book Portals", style: Styles.headLineStyle1,),
                  ],
                ),
                //below container contains the photo and make it editable.
                 Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image:const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                      "assets/images/img_1.png"
                    )
                    )
                  ),
                 ),
               ],
               ),
              const SizedBox(height: 25,), 
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFF4F6FD),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Row(
                  children: [
                    // const Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xFFBFC)),
                     Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xFFBFC205)),
                     Text(
                      "Search",
                      style: Styles.headLineStyle4,
                      ),
                ],),
              ),
              const SizedBox(height: 40,), 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("Upcoming Portals", style: Styles.headLineStyle2,),
                InkWell(
                  onTap: (){
                    print("you are tapped");
                  },
                  child: Text("View all", style: Styles.textStyle.copyWith(color: Styles.primaryColor),),
                )
              ],
              ),
              const SizedBox(height: 15,),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                
                child: Row(
                  children: [
                    TicketView(),
                    SizedBox(width: 20,),
                    TicketView(),
                    SizedBox(width: 20,),
                    TicketView(),
                  ],
                ),
            ),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("Space Hotels", style: Styles.headLineStyle2,),
                InkWell(
                  onTap: (){
                    print("you are tapped");
                  },
                  child: Text("View all", style: Styles.textStyle.copyWith(color: Styles.primaryColor),),
                )
              ],
              ),
              const SizedBox(height: 15,),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    HotelScreens(),
                    SizedBox(width: 20,),
                    HotelScreens(),
                    SizedBox(width: 20,),
                    HotelScreens(),
                  ],
                )
                ),
              const SizedBox(height: 25,),
            ]          
            ),
          ),

        ],

      )
    );
  }
}