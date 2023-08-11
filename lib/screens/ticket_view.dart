import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app3/utills/app_styles.dart';
import 'package:my_app3/widgets/thick_container.dart';


class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //ticket will cover 85% of the screen.
      width: MediaQuery.of(context).size.width*0.80,
      height: 200,
      
      child: Container(
        //padding: const EdgeInsets.only(right: 20),
        child: Column(
          children: [
          //Showing the blue part of the card
           Container(
            decoration:const BoxDecoration(
              color:  Color(0xDD526799),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21)),

            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("ETH", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                    //Spacer and Expanded widget does the same thing. spreads out space evenly
                    const Spacer(),

                    ThickContainer(),
                    Expanded(child: Stack(
                      children: [
                        SizedBox(
                       
                        height: 24,
                        child: LayoutBuilder(
                    
                          builder: (BuildContext context, BoxConstraints constraints){
                            return Flex(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            direction: Axis.horizontal,
                            children: List.generate((constraints.constrainWidth()/6).floor(), (index) => SizedBox(width: 1,height: 1, child: DecoratedBox(decoration: BoxDecoration(color: Styles.bgColor)),)
                            ),
                            );
                    
                          },
                           
                        ),
                    
                      ),
                      Center(child: Icon(Icons.timelapse, color: Colors.white,),)
                      

                      ]
                    )),
                    ThickContainer(),
                    
                    const Spacer(),
                    Text("MRS", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                  ],
                ),
                const SizedBox(height: 2,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text('Earth', style: Styles.headLineStyle4.copyWith(color: Colors.white))
                    ),
                    Text("4 Seconds", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                    SizedBox(
                      width: 100,child: Text("Mars",style: Styles.headLineStyle4.copyWith(color: Colors.white),textAlign: TextAlign.end,),
                    )
                  ],
                  )
              ],
            ),
          ),
          
          //below part shows the orange part of the card
          Container(
            color: Styles.orangeColor,
            child: Row(children: [
              SizedBox(
                height: 20,
                width: 10,     
                child: DecoratedBox(decoration: BoxDecoration(
                  color: Styles.bgColor,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  
                  )
                )),
              ),
              Expanded(
                child: 
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: LayoutBuilder(
                    builder:(BuildContext context,BoxConstraints constraints) {
                      return Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      //use the constraints to get as number of dashes as wanted for the screen.
                      children: List.generate((constraints.constrainWidth()/15).floor(), (index) =>const SizedBox(
                        width: 5,height: 1,
                        child: DecoratedBox(decoration: BoxDecoration(color: Colors.white),
                        ),
                      ),
                      ),
                      );
                    },
                    
                  ),
                )
                ),
              SizedBox(
                height: 20,
                width: 10,     
                child: DecoratedBox(decoration: BoxDecoration(
                  color: Styles.bgColor,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  
                  )
                )),
              )
            ]),
          ),
          //bottom part of the orange card
          Container(
            
            decoration: BoxDecoration(
              color: Color(0xFFF37B67),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(21), bottomRight: Radius.circular(21)),

            ),
            padding: const EdgeInsets.only(left: 16,right: 16,top: 10, bottom:16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("1 May", style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                        const SizedBox(height: 5,),
                        Text("Date", style: Styles.headLineStyle4.copyWith(color: Colors.white)),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("08:00 AM", style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                        const SizedBox(height: 5,),
                        Text("The Go Time", style: Styles.headLineStyle4.copyWith(color: Colors.white)),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("infinity", style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                        const SizedBox(height: 5,),
                        Text("Number", style: Styles.headLineStyle4.copyWith(color: Colors.white)),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}