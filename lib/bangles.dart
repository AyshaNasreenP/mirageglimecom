import 'package:flutter/material.dart';
import 'package:mirageglimecom/models/bangles.dart';
import 'package:mirageglimecom/product.dart';
import 'package:mirageglimecom/properties.dart';
class bangles extends StatefulWidget {
  const bangles({super.key});

  @override
  State<bangles> createState() => _banglesState();
}

class _banglesState extends State<bangles> {
  @override
  Widget build(BuildContext context) {
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
          title: Center(child: Text("BANGLES",
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
        body:  Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: Container(
            //height:400,
            //height: 380,
            width: 400,


            child:
            GridView.builder(
              //physics: NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 1 / 1,
                  //crossAxisSpacing: 10,
                  mainAxisSpacing: 10,

                ),

                itemCount:Banglescolletions.length,
                itemBuilder: (BuildContext ctx, index) {
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> product(
                            image: Banglescolletions[index].image,
                            description: Banglescolletions[index].description,
                            price: Banglescolletions[index].price,
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
                                      image: AssetImage(Banglescolletions[index].image),
                                      //image: AssetImage(lis[index].image),
                                      fit: BoxFit.fill,
                                    ),
                                    // color: Colors.amber,

                                    borderRadius: BorderRadius.circular(5)),
                                //child: Image.asset("assets/image.png",fit: BoxFit.fill,),

                              ),
                            ),
                            Text(Banglescolletions[index].description,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),),

                            Text(Banglescolletions[index].price,
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
      ),
    );
  }
}
