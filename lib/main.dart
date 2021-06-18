// @dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'data.dart';

void main()=>runApp(MaterialApp(debugShowCheckedModeBanner: false,home:HomePage()));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView(
          children: [
              for(int title = 0;title<news_headlines.length;title++)
                for(int content = 0;content<news_headlines.length;content++)
            Container(
            child: SingleChildScrollView(
              child: Column(
                children:[

                  SizedBox(
                    height: 250,
                    width: double.infinity,
                    child: Carousel(
                      dotSize: 4.0,
                      dotSpacing: 15,
                      dotBgColor: Colors.transparent,
                      dotColor: Colors.grey,
                      indicatorBgPadding: 5.0,
                      dotVerticalPadding: 5.0,
                      dotPosition: DotPosition.bottomRight,
                      autoplay: false,
                      images: images1
                    )
                  ),

                  SizedBox(height: 5,),

                  Row(
                      children:[
                        SizedBox(width: 10,),
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 28,
                    ),

                        SizedBox(width: 8,),

                  Icon(Icons.share),
                ]
            ),

                  SizedBox(height: 10,),

                  Container(
                      padding: EdgeInsets.only(left: 13,right: 13),
                    child:Column(
                      children:[
                        Align(
                          alignment: Alignment.topLeft,
                          child:
                          Text("Date - 17/06/2021",
                            style: TextStyle(color: Colors.grey),),
                        ),

                        SizedBox(height: 10,),

                  Align(
                    alignment: Alignment.topLeft,
                      child: Text(
                          news_headlines[title],
                        style: TextStyle(
                            fontSize:18,
                            fontWeight: FontWeight.bold,
                        ),),),

                  SizedBox(
                    height: 10,
                  ),

                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        news_data[content],
                        textAlign: TextAlign.justify,
                        textDirection: TextDirection.ltr,
                        style: TextStyle(fontSize:15),
                      )),

                        SizedBox(height: 15,),

                        Image(image: AssetImage("images/tweet.PNG"),),

                        SizedBox(height: 15,),

                      Align(
                          alignment: Alignment.topLeft,
                          child:
                        Text("It cannot be said with certainty but it does appear that former New Zealand pacer and now a renowned broadcaster Simon Doull was amongst the firsts to share the first look of the Southampton pitch for the WTC final.Just 1 more sleep. @ICC WTC final with @BLACKCAPS and @BCCI. No need to mow that I don’t think @DineshKarthik,” tweeted Doull on Thursday with the photograph of the 22 yards that appeared to have a decent covering of grass.",
                      textAlign: TextAlign.justify,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(fontSize:15),
                      ))

                    ]
                    ))
                 ]
              )),
            ),
          ],
        ),
      ),
    );
  }
}
