//import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Book extends StatefulWidget {
  const Book({Key? key}) : super(key: key);

  @override
  State<Book> createState() => _BookState();
}

class _BookState extends State<Book> {
  var detailsColor = Colors.blue;
  var customsize = 16;
  var customcolor = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //This is first Row of the Screen
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("My Diary",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  Row(
                    children: [
                      Icon(Icons.arrow_back_ios),
                      Icon(Icons.calendar_month),
                      Text(
                        "15 May",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ],
              ),

              const SizedBox(
                height: 20,
              ),
              

              //This is Second row of the screen
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Mediterrranean diet",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      InkWell(
                          onTap: () {
                            setState(() {
                              detailsColor = Colors.red;
                            });
                          },
                          onDoubleTap: () {
                            setState(() {
                              detailsColor = Colors.blue;
                            });
                          },
                          child: Text("Details",
                              style: TextStyle(color: detailsColor))),
                      const Icon(Icons.arrow_forward)
                    ],
                  ),
                ],
              ),

              const SizedBox(
                height: 10,
              ),


            //Below is the size box inside which the card is placed
              SizedBox(
               
                height: 310,
                child: Card(
                  shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.only(
                        topRight: Radius.circular(60),
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)
                        ),
                  ),
                
                  elevation: 7,
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 15, left: 8, right: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 170,
                              width: 140,
                              child: Column(
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      border: Border(
                                          left: BorderSide(
                                        color: Colors.blue,
                                        width: 2,
                                      )),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Eaten",style: TextStyle(fontWeight: FontWeight.bold)),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Icon(
                                                Icons.water_drop,
                                                color: Colors.blue,
                                              ),
                                              Text(
                                                "1127",
                                                style: TextStyle(
                                                    fontSize: 25,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text("kcal")
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(
                                      border: Border(
                                          left: BorderSide(
                                        color: Colors.amber,
                                        width: 2,
                                      )),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Burned",style: TextStyle(fontWeight: FontWeight.bold),),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Icon(Icons.local_fire_department,
                                                  color: Colors.red),
                                              Text("102",
                                                  style: TextStyle(
                                                      fontSize: 25,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Text("kcal")
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),

                            // progression bar container
                            SizedBox(
                              height: 170,
                              width: 170,
                              child: CircularPercentIndicator( 
                                circularStrokeCap: CircularStrokeCap.round,
                                backgroundWidth: 2,
                                progressColor: Colors.blue,
                                radius: 80,
                                lineWidth: 12,
                                percent: .5,
                                center: const Padding(
                                  padding: EdgeInsets.only(top: 50, bottom: 50),
                                  child: Column(
                                    children: [
                                      Text(
                                        "1503",
                                        style: TextStyle(
                                            fontSize: 28,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "kcal left",
                                        style: TextStyle(),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 0.5,
                        color: Colors.black,
                      ),

                     
                      SizedBox(height: 10),

                       //Last Row of the card
                      const Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Carbs",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                  width: 80,
                                  child: LinearProgressIndicator(
                                    value: 0.7,
                                    color: Colors.blue,
                                    backgroundColor:
                                        Color.fromARGB(255, 141, 197, 242),
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text("12g left"),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Protein",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                  width: 90,
                                  child: LinearProgressIndicator(
                                    value: 0.4,
                                    color: Colors.pink,
                                    backgroundColor:
                                        Color.fromARGB(255, 240, 139, 173),
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text("30g left"),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Fat",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                  width: 60,
                                  child: LinearProgressIndicator(
                                    value: 0.5,
                                    color: Colors.amber,
                                    backgroundColor:
                                        Color.fromARGB(255, 239, 212, 130),
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text("10g left"),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Meals today",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      InkWell(
                          onTap: () {
                            setState(() {
                              customcolor = Colors.green;
                            });
                          },
                          onDoubleTap: () {
                            setState(() {
                              customcolor = Colors.blue;
                            });
                          },
                          child: Text("customize",
                              style: TextStyle(color: customcolor))),
                      const Icon(Icons.arrow_forward)
                    ],
                  ),
                ],
              ),

            //Taken size box to place three container in row (in list view )
              SizedBox(
                height: 310,
                width: 380,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [

                        //First contaiiner of the row
                        SizedBox(
                          height: 300,
                          width: 160,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Container(
                                height: 250,
                                width: 160,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(70),
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  gradient: LinearGradient(
                                    colors: [
                                      Color.fromARGB(255, 252, 127, 59),
                                      Color.fromARGB(255, 255, 168, 122),
                                    ],
                                  ),
                                ),
                                child: const Stack(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 20,
                                          top: 60,
                                          right: 8,
                                          bottom: 8),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Breakfast",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white)),
                                          SizedBox(height: 15),
                                          Text("Bread",
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white)),
                                          Text("Peanut butter",
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white)),
                                          Text("Apple",
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white)),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            children: [
                                              Text("525",
                                                  style: TextStyle(
                                                      fontSize: 40,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.white)),
                                              SizedBox(width: 5),
                                              Text("kcal",
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.white))
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 105,
                                    width: 105,
                                    decoration: BoxDecoration(
                                        color: Colors.white30,
                                        borderRadius:
                                            BorderRadius.circular(60)),
                                    child: Image.asset(
                                        "assets/images/food7.png"),
                                  )),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),

                        //Second contaiiner of the row
                        SizedBox(
                          height: 300,
                          width: 160,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Container(
                                height: 250,
                                width: 160,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(70),
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.indigo,
                                      Color.fromARGB(255, 157, 168, 255),
                                    ],
                                  ),
                                ),
                                child: const Stack(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 20,
                                          top: 60,
                                          right: 8,
                                          bottom: 8),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Lunch",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white)),
                                          SizedBox(height: 15),
                                          Text("solmon",
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white)),
                                          Text("Mixed veggies",
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white)),
                                          Text("Avacado",
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white)),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            children: [
                                              Text("602",
                                                  style: TextStyle(
                                                      fontSize: 40,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.white)),
                                              SizedBox(width: 5),
                                              Text("kcal",
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.white))
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 105,
                                    width: 105,
                                    decoration: BoxDecoration(
                                        color: Colors.white30,
                                        borderRadius:
                                            BorderRadius.circular(60)),
                                    child:
                                        Image.asset("assets/images/food4.png"),
                                  )),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),

                        //Third contaiiner of the row
                        SizedBox(
                          height: 300,
                          width: 160,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Container(
                                height: 250,
                                width: 160,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(70),
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  gradient: LinearGradient(
                                    colors: [
                                      Color.fromARGB(255, 234, 82, 133),
                                      Color.fromARGB(255, 255, 161, 192),
                                    ],
                                  ),
                                ),
                                child: const Stack(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 20,
                                          top: 60,
                                          right: 8,
                                          bottom: 8),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Snack",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white)),
                                          SizedBox(height: 15),
                                          Text("Recomendation",
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white)),
                                          Text("800 kcal",
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white)),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Icon(
                                            Icons.add_box_rounded,
                                            size: 50,
                                            color: Colors.white,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    height: 105,
                                    width: 105,
                                    decoration: BoxDecoration(
                                        color: Colors.white30,
                                        borderRadius:
                                            BorderRadius.circular(60)),
                                    child: Image.asset(
                                      "assets/images/food3.png",
                                      height: 10,
                                      width: 10,
                                    ),
                                  )),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Body measurement",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text("Today", style: TextStyle(color: Colors.blue)),
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
