import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //widget 1
          SizedBox(
            height: 26,
          ),

          // widget2 ==>> App bar section //
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // widget 1
              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.arrow_back_ios)
              ),

              // widget 2
              Text(
                  "Detail",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),


              //widget 3
              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.favorite_border)
              )

            ],
          ),
          SizedBox(
            height: 16,
          ),
          // widget3
          Center(child: Image.asset("assets/images/coffee_detail.png")),
          SizedBox(
            height: 16,
          ),
          // widget 4
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 16),
             child: Text(
               "Cappucino",
             style: TextStyle(
               fontSize: 20,
               fontWeight: FontWeight.w600,
               color: Colors.black
             ),
             ),
           ),
          // widget 5 
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
                "with Chocolate",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(155, 155, 155, 1)
              ),


            ),
          ),
          //widget 6
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Icon(Icons.star,color: Color.fromRGBO(251, 190, 33, 1),),
                SizedBox(
                  width: 4,
                ),
                Text(
                    "4.8",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "(230)",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(128, 128, 128, 1)
                  ),
                ),
                Spacer(),
                Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 240, 240, 1),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Image.asset("assets/images/bean.png"),
                ),
                SizedBox(
                  width: 12,
                ),
                Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 240, 240, 1),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Image.asset("assets/images/milk.png"),
                ),

              ],
            ),
          ),


        ],
      ),
    );
  }
}
