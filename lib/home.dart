
import 'package:flutter/material.dart';
import 'package:mirageglimecom/bangles.dart';
import 'package:mirageglimecom/bracelets.dart';
import 'package:mirageglimecom/clips.dart';
import 'package:mirageglimecom/earRing.dart';
import 'package:mirageglimecom/product.dart';
import 'package:mirageglimecom/properties.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:mirageglimecom/rings.dart';
import 'package:mirageglimecom/models.dart';


import 'chains.dart';
import 'models.dart';
import 'models/chains.dart';
import 'models/trending.dart';
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  // get numberTruthList => null;
  // final _image=[
  //
  // ];

  @override
  Widget build(BuildContext context) {
    Size screenSize=MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[appbar1,appbar2])
            ),
          ),
          title: Center(child: Text("MIRAGEGLIM",
          style: TextStyle(
            color: mirage,
            fontStyle: FontStyle.italic
          ),)),
          actions: [Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Icon(Icons.shopping_basket_outlined,color:mirage,),
          ),
          ],

        ),

        body: SingleChildScrollView(
      
          child: Column(
            children: [
      
      
              Container(
                height: 110,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: lis.length,
                    itemBuilder: (BuildContext con,index)
                    {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GestureDetector(
                          onTap: (){
                            navigateToPage(index);
                            // Navigator.push(context,
                            //   MaterialPageRoute(builder: (context) => chains()),
                            // );
      
                          },
                          child: Container(
                              height: 70,
                              width: 70,
                              // color: Colors.cyan,
      
                              child:  Column(
                                children: [
                                  Container(
                                    height: 69,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: AssetImage(lis[index].image),
                                            fit: BoxFit.fill
                                        )
                                    ),
                                  ),
                                  Text(lis[index].text)
                                ],
                              )
      
      
                          ),
                        ),
                      );
                    }
                ),
              ),
              Divider(),
      
              //ListView(),
              // Size screensize =MediaQuery.of(context).size;
              Container(
      
                width: double.infinity,
      
                child:
                CarouselSlider.builder(
      
      
      
                    options: CarouselOptions(
      
                      height: 300,
      
                      aspectRatio: 1/2,
                      viewportFraction: 1.0,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      //enlargeCenterPage: true,
                      enlargeFactor: .5,
                      // onPageChanged: callbackFunction,
                      scrollDirection: Axis.horizontal,
      
                    ),
      
      
                    itemCount: sale.length,
                    itemBuilder: (BuildContext context,
                        int itemIndex,
                        int pageViewIndex,
      
                        )
                    {
      
                      return
                        GestureDetector(
                          onTap: ()
                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => product(
                                image: Trendingcollection[itemIndex].image,
                                description: Trendingcollection[itemIndex].description,
                                price: Trendingcollection[itemIndex].price,
                               )),
                            );
                            ///carosal
                          },
                          child: Container(
                            //
                            //  width: screenSize .width,
                            //   margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
      
                              image: DecorationImage(
      
      
                                //filterQuality: FilterQuality.low,
                                // colorFilter: ColorFilter.mode(
                                //     crsl.withOpacity(0.5),
                                //     BlendMode.softLight),
      
      
      
                                image: AssetImage(sale[itemIndex].image),
                                // image: AssetImage(lis[index].image),
                                fit: BoxFit.cover,
                                //
                              ),
                              gradient: LinearGradient(
                                  begin: Alignment.center,
                                  end: Alignment.bottomCenter,
                                  colors: <Color> [crsl, white]),
                              //
                              // //Image.asset("assets/image.png",fit: BoxFit.fitWidth,width: double.infinity,);
                            ),
      
      
      
      
      
                          ),
                        );
                      //Image.asset("assets/image.png",fit: BoxFit.fill,width: double.infinity,);
      
      
                    }
      
      
      
                ),
      
      
              ),
              Divider(),
      
              Container(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: lis.length,
                    itemExtent:150.0,
                    itemBuilder: (BuildContext con,index)
                    {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(4,0,4,8),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => product(
                                  image: Trendingcollection[index].image,
                                  description: Trendingcollection[index].description,
                                  price: Trendingcollection[index].price,

                                  )));
                          },
                          child: Container(
      
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                    image: AssetImage(lis[index].image),
                                    fit: BoxFit.cover,
                                  ),
                                  boxShadow: [BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 1,
                                    offset: Offset(0, 3),
                                  )
                                  ]
      
      
                                //color: Colors.cyan,
      
                                // child:  Column(
                                //   children: [
                                //
                                //     Container(
                                //        // decoration: BoxDecoration(
                                //        //  borderRadius: BorderRadius.circular(5),
                                //        //   image: DecorationImage(
                                //        //       image: AssetImage("assets/image.png")),
                                //       child: Image.asset("assets/image.png")
                                //       ),
                                //
                                //
                                //
                                //     //),
                                //
                                //
                                //
                                //   ],
                                // )
      
                              )
                          ),
                        ),
                      );
                    }
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("NEW COLLECTION",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
      
                ),
              ),
      
      
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                child: Container(
                  height:400,
                  //height: 380,
                  width: 400,
      
      
                  child:
                  GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        childAspectRatio: 1 / 1,
                        //crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
      
                      ),
      
                      itemCount:NewCollection.length,
                      itemBuilder: (BuildContext ctx, index) {
                        return GestureDetector(
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=> product(

                                  image: Trendingcollection[index].image,
                                  description: Trendingcollection[index].description,
                                  price: Trendingcollection[index].price,

                                )));
                          },
                          child: Container(
                            //color: Colors.black,
                              height: 600,
                              width: 500,
      
                              child: Column(
                                children: [
      
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(5,0,5,0),
                                    child:
      
                                    Container(
                                      height: 150,
                                      alignment: Alignment.topRight,
                                      width: 150,
                                      decoration: BoxDecoration(
                                          image:  DecorationImage(
                                            image: AssetImage(NewCollection[index].image),
                                            //image: AssetImage(lis[index].image),
                                            fit: BoxFit.fill,
                                          ),
                                          // color: Colors.amber,
      
                                          borderRadius: BorderRadius.circular(5)),
                                      //child: Image.asset("assets/image.png",fit: BoxFit.fill,),
      
                                    ),
                                  ),
                                  Text(NewCollection[index].text,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),),
      
      
      
      
                                ],
      
                              )
      
                          ),
                        );
      
      
      
      
                      }
      
                  ),
      
                ),
              ),
      
      
            ],
          ),
      
        ),
      ),
    );
  }
  void navigateToPage(int index) {
    if (index == 0) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => chain()));
    } else if (index == 1) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => bracelet()));
    }
    else if (index == 2) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => bangles()));
    } else if (index == 3) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => rings()));
    }
    else if (index == 4) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => earRing()));
    } else if (index == 5) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => clips()));
    }

    // Add more conditions as needed for other pages
  }
}
