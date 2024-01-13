import 'package:flutter/material.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:mirageglimecom/home.dart';
import 'package:mirageglimecom/properties.dart';
import 'package:readmore/readmore.dart';




String selectedValue = "1";
List <String> dropdownItems = ["1","2","3","4","5","6","7","8"];

class product1 extends StatefulWidget {
  final String  data;
  product1({ Key?key, required this.data}): super(key: key);
  @override
  State<product1> createState() => _product1State();
}


class _product1State extends State<product1> {

  //String selectedValue = 'Option 1'; // Default selected value

  // Define the list of dropdown items

  @override
  Widget build(BuildContext context) {
    List<String> productdetails = widget.data.split('');
    print("${productdetails}");
    return Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[appbar1,appbar2])
            ),
          ),

          //backgroundColor: appcl,
          leading: Row(
            children: [
              GestureDetector(
                onTap: ()
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const home()),
                  );
                },
                child: Icon(Icons.arrow_back_outlined,
                  color: Colors.black,),
              ),


            ],
          ),
          actions: [Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Icon(Icons.shopping_basket_outlined,color:mirage,),
          ),
          ],

        ),
        body: SingleChildScrollView(
          child: Container(
            // color: appbar2,
            child: Column(
              children: [
                //   SizedBox(height: 15,),
                Stack(

                  children: [
                    Container(

                        width: double.infinity,

                        child:
                        Column(
                          children: [
                            // CarouselSlider.builder(
                            //
                            //
                            //
                            //     options: CarouselOptions(
                            //
                            //       height: 500,
                            //
                            //       aspectRatio: 1/2,
                            //       viewportFraction: 1.0,
                            //       initialPage: 0,
                            //       enableInfiniteScroll: true,
                            //       reverse: false,
                            //       autoPlay: true,
                            //       autoPlayInterval: Duration(seconds: 3),
                            //       autoPlayAnimationDuration: Duration(milliseconds: 800),
                            //       autoPlayCurve: Curves.fastOutSlowIn,
                            //       //enlargeCenterPage: true,
                            //       enlargeFactor: .5,
                            //       // onPageChanged: callbackFunction,
                            //       scrollDirection: Axis.horizontal,
                            //
                            //     ),
                            //
                            //
                            //     itemCount: 1,
                            //     itemBuilder: (BuildContext context,
                            //         int itemIndex,
                            //         int pageViewIndex,
                            //         )
                            //     {
                            //
                            //       return
                            //         Container(
                            //
                            //           width:double.infinity ,
                            //           //  width: screenSize .width,
                            //           //   margin: EdgeInsets.symmetric(horizontal: 5.0),
                            //           decoration: BoxDecoration(
                            //
                            //             image: DecorationImage(
                            //
                            //               image: AssetImage("${productdetails[0]}"),
                            //               fit: BoxFit.fill,
                            //               //
                            //             ),
                            //           ),
                            //
                            //         );
                            //
                            //       //Image.asset("assets/image.png",fit: BoxFit.fill,width: double.infinity,);
                            //
                            //
                            //     }
                            //
                            //
                            //
                            // ),
                            Container(

                              width:double.infinity ,
                              //  width: screenSize .width,
                              //   margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(

                                image: DecorationImage(

                                  image: AssetImage(productdetails[0]),
                                  fit: BoxFit.fill,
                                  //
                                ),
                              ),

                            ),
                            // Padding(
                            //   padding: const EdgeInsets.all(10.0),
                            //   child: DotsIndicator(
                            //     dotsCount: 5,
                            //
                            //   ),
                            // )

                          ],
                        )



                    ),
                    // Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: Container(
                    //     width: 45,
                    //     height: 45,
                    //     decoration: BoxDecoration(
                    //         color: Color(0xFFb12704),
                    //         borderRadius:BorderRadius.circular(35)
                    //
                    //     ),
                    //
                    //
                    //     child: Padding(
                    //       padding: const EdgeInsets.all(4.0),
                    //       child: Text("60%\noff",
                    //         textAlign: TextAlign.center,
                    //         style: TextStyle(
                    //             color: Colors.white,
                    //             fontWeight: FontWeight.bold
                    //         ),),
                    //     ),
                    //     //color: Colors.green,
                    //   ),
                    // ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            //color: Color(0xefc5bbbb),
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                  color: Color(0x3ad9d2d2),
                                  borderRadius:BorderRadius.circular(35)

                              ),
                              child: Icon(Icons.share_outlined))),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(8,450,8,8),
                      child:
                      Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                              color: Color(0x3ad9d2d2),
                              borderRadius:BorderRadius.circular(35)

                          ),

                          child: Icon(Icons.favorite_outline,color: Colors.grey,)),
                    )
                    // padding: const EdgeInsets.fromLTRB(8,470,8,8),
                  ],
                ),
                SizedBox(height: 15,),
                Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8,1,1,1),

                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8,1,1,1),
                        child: ReadMoreText(
                          "${productdetails[1]}",
                          trimLines: 2,
                          trimMode: TrimMode.Line,
                          // trimCollapsedText: 'Show more',
                          // trimExpandedText: 'Show less',
                          moreStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),colorClickableText: Colors.grey,
                          style: TextStyle(
                              fontSize: 25
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(

                        //TextAlign textAlign = TextAlign.start
                          text:  const TextSpan(
                              text: " ₹",style: TextStyle(
                            fontSize: 23,color: Colors.black,

                          ),

                              children: [
                                TextSpan(
                                  text: "479 ",style: TextStyle(
                                    fontSize: 23,color: Colors.black),
                                ),
                                // TextSpan(
                                //   text: "M.R.P: ",
                                //   style: TextStyle(
                                //     color: Colors.grey,
                                //     fontSize: 18,
                                //     // decoration: TextDecoration.lineThrough
                                //   )
                                //
                                //
                                // ),
                                TextSpan(
                                    text: "₹1,199",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 18,
                                        decoration: TextDecoration.lineThrough)


                                ),
                                // TextSpan(
                                //   text: "-60% ",
                                //   style: TextStyle(
                                //       color: Colors.red,fontSize: 15
                                //   ),
                                // ),

                              ]
                          )
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      child: Column(
                        children: [

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text("In stock",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.green
                                    //fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: 100,
                              height: 40,
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white70

                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Qty: ',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                  // SizedBox(height: 10),
                                  // Text(
                                  //
                                  //   selectedValue,
                                  //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                                  // ),
                                  //SizedBox(height: 20),
                                  DropdownButton<String>(
                                    //elevation: 50,
                                    underline: SizedBox(),
                                    //iconDisabledColor:,
                                    value: selectedValue,
                                    onChanged: ( newValue) {
                                      setState(() {
                                        selectedValue = newValue!;
                                      });
                                    },
                                    items: dropdownItems.map((String item) {
                                      return DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(item),
                                      );
                                    }).toList(),
                                  ),



                                ],
                              ),
                            ),
                          ),
                          //DropdownButton(items: items, onChanged: onChanged)
                          // Row(
                          //   children: [
                          //     Text("Qty"),
                          //     DropdownButton(
                          //         value: dropdownValue,
                          //         icon: Icon(Icons.arrow_drop_down_outlined),
                          //         elevation: 15,
                          //         style: TextStyle(color: Colors.black45),
                          //
                          //         onChanged: (String?value){
                          //         setState(() {
                          //         dropdownValue=value!;
                          //         });
                          //         },
                          //
                          //         items: number.map<DropdownMenuItem <String>>(String value){
                          //           return DropdownMenuItem<String>(
                          //           value: value,child:Text(value),
                          //         }).toList(),
                          //         ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(

                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size.fromHeight(50),
                                  primary: buy,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0)
                                  ),



                                ),



                                // style: ElevatedButton.styleFrom(
                                //
                                //     minimumSize: const Size.fromHeight(50),
                                onPressed: (){}, child: Text("Add to Cart",
                              style: TextStyle(
                                  color: Colors.black
                              ),
                            )

                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(

                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size.fromHeight(50),
                                  primary: cart,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0)
                                  ),



                                ),

                                // style: ElevatedButton.styleFrom(
                                //
                                //     minimumSize: const Size.fromHeight(50),
                                onPressed: (){}, child: Text("Buy Now",
                              style: TextStyle(
                                  color: Colors.black
                              ),)

                            ),
                          )


                        ],
                      ),
                    ),
                  ),
                )



              ],

            ),
          ),
        )
    );
  }
}
