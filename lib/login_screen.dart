import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
   // 1- create folder called assets xx
  //2- handle assets section in pubspec
  //3 - use Image.assets Widget to display image
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // layer 1
          Image.asset("assets/images/coffee_background.png",),

          // layer 2
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //widget 1
                Text(

                    "Coffee so good, your taste buds will love it.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 34,
                    color: Colors.white,
                    fontWeight: FontWeight.w600
                  ),
                ),
                // widget 2
                Text(
                    "The best grain, the finest roast, the powerful flavor.",
                  textAlign: TextAlign.center,

                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(169, 169, 169, 1),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  width: 317,
                  height: 54,
                  decoration: BoxDecoration(
                      color: Colors.white,

                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/Google.png",
                        width: 34,height: 30,),
                        SizedBox(
                          width: 4,
                        ),
                        Text("Continue with Google",style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(0, 0, 0, 0.54)
                        ),)
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 46,
                ),
              ],

            ),
          )


        ],
      ),
    );
  }
}
