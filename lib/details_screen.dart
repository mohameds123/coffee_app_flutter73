import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:rich_readmore/rich_readmore.dart';

class DetailsScreen extends StatefulWidget {
   DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool isFav = false;
  bool isS = true;
  bool isM = false;
  bool isL = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                    onPressed: (){
                      Navigator.pop(context);
                    },
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
                InkWell(
                  onTap: (){
                    isFav = !isFav;
                    setState(() {

                    });
                  },
                  child: isFav == false ? Icon(Icons.favorite_border) : Lottie.asset("assets/animation/fav.json",width: 100,height: 100),
                ),

        
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
            SizedBox(
              height: 26,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                  "Description",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.black
                ),
              ),
            ),
        
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: RichReadMoreText.fromString(
                text: 'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo',
                textStyle: TextStyle(color:Color.fromRGBO(155, 155, 155, 1),fontSize: 14),
                settings: LengthModeSettings(
                  trimLength: 40,
                  trimCollapsedText: 'Read More',
                  trimExpandedText: ' Read Less ',
                  onPressReadMore: () {
                    /// specific method to be called on press to show more
                  },
                  onPressReadLess: () {
                    /// specific method to be called on press to show less
                  },
                  lessStyle: TextStyle(color: Color.fromRGBO(198, 124, 78, 1)),
                  moreStyle: TextStyle(color: Color.fromRGBO(198, 124, 78, 1)),
                ),
              ),
            ),
            SizedBox(height: 16,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Size",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.black
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // button 1 ==>> S
                  InkWell(
                    onTap: (){
                      isS = true;
                      isM = false;
                      isL = false;
                      setState(() {
        
                      });
                    },
                    child: Container(
                      width: 96,
                      height: 43,
                      decoration: BoxDecoration(
                        color:isS == true ? Color.fromRGBO(255, 245, 238, 1) : Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: isS == true ? Color.fromRGBO(198, 124, 78, 1) : Color.fromRGBO(222, 222, 222, 1),
                          width: 1.5
                        )
                      ),
                      child: Center(child: Text("S")),
        
                    ),
                  ),
                  // button 2 ==>> M
        
                  InkWell(
                    onTap: (){
                      isM = true;
                      isS = false ;
                      isL = false;
                      setState(() {
        
                      });
                    },
                    child: Container(
                      width: 96,
                      height: 43,
                      decoration: BoxDecoration(
                        color:isM == true ? Color.fromRGBO(255, 245, 238, 1) :  Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: isM == true ? Color.fromRGBO(198, 124, 78, 1) : Color.fromRGBO(222, 222, 222, 1),
                        )
        
                      ),
                      child: Center(child: Text("M")),
                    ),
                  ),
                  // button 3 ==>> L
                  InkWell(
                    onTap: (){
                      isL = true;
                      isS = false;
                      isM = false;
                      setState(() {
        
                      });
                    },
                    child: Container(
                      width: 96,
                      height: 43,
                      decoration: BoxDecoration(
                          color: isL == true ?Color.fromRGBO(255, 245, 238, 1) : Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color:isL == true ? Color.fromRGBO(198, 124, 78, 1) :  Color.fromRGBO(222, 222, 222, 1),
                              width: 1.5
                          )
                      ),
                      child: Center(child: Text("L")),
        
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              width: 375,
              height: 1,
              color: Colors.grey.shade300,
            ),
            SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // prise section
                  Column(
                    children: [
                      Text(
                          "Price",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(155, 155, 155, 1)
                        ),
                      ),
                      Text(
                        isS == true ? "4.53 \$" : isM == true ? "6.53\$" : "10.53\$",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(198, 124, 78, 1),
                        ),
                      ),
                    ],
                  ),
                  // buy now
                  InkWell(
                    onTap: (){},
                    child: Container(
                      width: 217,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(198, 124, 78, 1),
                        borderRadius: BorderRadius.circular(16),
        
                      ),
                      child: Center(child: Text("Buy Now",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),)),
                    ),
                  )
                ],
              ),
            ),
        
        
        
        
        
        
          ],
        ),
      ),
    );
  }
}
