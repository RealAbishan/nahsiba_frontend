import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nahsiba/constants/app_colors.dart';
import 'package:nahsiba/widgets/app_large_text.dart';
import 'package:searchfield/searchfield.dart';
import 'package:intl/intl.dart';
import 'package:nahsiba/pages/NavPages/select_page.dart';
import 'package:nahsiba/pages/NavPages/detail_page.dart';
import 'package:nahsiba/pages/NavPages/home_screen.dart';
import 'package:nahsiba/pages/SecondaryPages/past_booking_detail_page.dart';

class BusBookingDetailPage extends StatefulWidget {
  const BusBookingDetailPage({Key? key}) : super(key: key);

  @override
  State<BusBookingDetailPage> createState() => _BusBookingDetailPageState();
}

class _BusBookingDetailPageState extends State<BusBookingDetailPage> {

  TextEditingController dateInput = TextEditingController();
  bool tripType = false;
  int _counter = 0;
  final TextEditingController _fromTec = TextEditingController();
  final TextEditingController _toTec = TextEditingController();

  String dropDownValue = 'Jaffna';

  @override
  void initState() {
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 64, 30, 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            //Top Bar
            GestureDetector(
              // onTap: (){
              //   AuthController.instance.logOut();
              // },
              child: Container(
                //padding: const EdgeInsets.only(left: 16),
                child: Row(
                  children: [
                    Icon(Icons.arrow_back_rounded, size: 30,color:kPrimaryColor),
                    Expanded(child: Container()),
                    Text(
                      "",
                      style: TextStyle(fontSize: 20, color: kPrimaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                     Expanded(child: Container()),
                    Container(
                      //margin:const EdgeInsets.only(right: 20),
                      child: Icon(Icons.notifications, size: 30, color:
                      kPrimaryColor,),


                    )
                  ],
                ),
              ),
            ),

            SizedBox(height: 20,),

            //Filter Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  // onTap:(){
                  //   Navigator.push(context, MaterialPageRoute
                  //     (builder: (context) => BusBookingSelectPage()));
                  // },
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.apps_rounded, size: 20,color:bWhite),
                          ],
                        ),
                      ),
                      Text(
                        "All",
                        style: TextStyle(fontSize: 12, color:Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),

                GestureDetector(
                  // onTap:(){
                  //   Navigator.push(context, MaterialPageRoute
                  //     (builder: (context) => BusBookingSelectPage()));
                  // },
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: kPrimaryColor.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.train, size: 20,color:Colors.black),
                          ],
                        ),
                      ),
                      Text(
                        "Train",
                        style: TextStyle(fontSize: 12, color:Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),

                GestureDetector(
                  // onTap:(){
                  //   Navigator.push(context, MaterialPageRoute
                  //     (builder: (context) => BusBookingSelectPage()));
                  // },
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: kPrimaryColor.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.directions_bus_rounded, size: 20,color:Colors.black),
                          ],
                        ),
                      ),
                      Text(
                        "Bus",
                        style: TextStyle(fontSize: 12, color:Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),

                GestureDetector(
                  // onTap:(){
                  //   Navigator.push(context, MaterialPageRoute
                  //     (builder: (context) => BusBookingSelectPage()));
                  // },
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: kPrimaryColor.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.local_taxi, size: 20,color:Colors.black),
                          ],
                        ),
                      ),
                      Text(
                        "Taxi",
                        style: TextStyle(fontSize: 12, color:Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),

              ],
            ),

            SizedBox(height: 20,),

            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      width: 600,
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: bWhite,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 15,
                                spreadRadius: 1,
                                offset: Offset(1, 1),
                                color: Colors.grey.withOpacity(0.2))
                          ]),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 10,
                            right: 10,
                            bottom: 0,
                            top: 15,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric
                                    (vertical: 6),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(right: 8.0),
                                        child: Icon(Icons.directions_bus_rounded),
                                      ),
                                      Text(
                                        "Ratna Travels",
                                        style: TextStyle(fontSize: 14,
                                            color:Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "Departure",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            vertical: 6,
                                          ),
                                          child: Text(
                                            "6:30 AM",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "Jaffna",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: const [
                                        Text(
                                          "Arrival",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            vertical: 4,
                                          ),
                                          child: Text(
                                            "5:30 PM",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "Colombo",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      onTap:(){
                                        Navigator.push(context, MaterialPageRoute
                                          (builder: (context) => PastBookingDetailsPage()));
                                      },
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only
                                              (bottom: 5, top: 15),
                                            width: 150,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: kPrimaryColor,
                                              borderRadius: BorderRadius
                                                  .circular(30),
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: const [
                                                Text(
                                                  "View Details",
                                                  style: TextStyle(fontSize:
                                                  14, color:bWhite,
                                                      fontWeight: FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),

                                    GestureDetector(
                                      // onTap:(){
                                      //   Navigator.push(context, MaterialPageRoute
                                      //     (builder: (context) => BusBookingSelectPage()));
                                      // },
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only
                                              (bottom: 5, top: 15),
                                            width: 150,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: kPrimaryColor,
                                              borderRadius: BorderRadius
                                                  .circular(30),
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: const [
                                                Text(
                                                  "Book Again",
                                                  style: TextStyle(fontSize:
                                                  14, color:bWhite,
                                                      fontWeight: FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),



                                  ],
                                ),


                              ],
                            ),
                          ),

                        ],
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      width: 600,
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: bWhite,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 15,
                                spreadRadius: 1,
                                offset: Offset(1, 1),
                                color: Colors.grey.withOpacity(0.2))
                          ]),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 10,
                            right: 10,
                            bottom: 0,
                            top: 15,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric
                                    (vertical: 6),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(right: 8.0),
                                        child: Icon(Icons.directions_bus_rounded),
                                      ),
                                      Text(
                                        "Ratna Travels",
                                        style: TextStyle(fontSize: 14,
                                            color:Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "Departure",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            vertical: 6,
                                          ),
                                          child: Text(
                                            "6:30 AM",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "Jaffna",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: const [
                                        Text(
                                          "Arrival",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            vertical: 4,
                                          ),
                                          child: Text(
                                            "5:30 PM",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "Colombo",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      // onTap:(){
                                      //   Navigator.push(context, MaterialPageRoute
                                      //     (builder: (context) => BusBookingSelectPage()));
                                      // },
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only
                                              (bottom: 5, top: 15),
                                            width: 150,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: kPrimaryColor,
                                              borderRadius: BorderRadius
                                                  .circular(30),
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: const [
                                                Text(
                                                  "View Details",
                                                  style: TextStyle(fontSize:
                                                  14, color:bWhite,
                                                      fontWeight: FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),

                                    GestureDetector(
                                      // onTap:(){
                                      //   Navigator.push(context, MaterialPageRoute
                                      //     (builder: (context) => BusBookingSelectPage()));
                                      // },
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only
                                              (bottom: 5, top: 15),
                                            width: 150,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: kPrimaryColor,
                                              borderRadius: BorderRadius
                                                  .circular(30),
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: const [
                                                Text(
                                                  "Book Again",
                                                  style: TextStyle(fontSize:
                                                  14, color:bWhite,
                                                      fontWeight: FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),



                                  ],
                                ),


                              ],
                            ),
                          ),

                        ],
                      ),
                    ),


                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      width: 600,
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: bWhite,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 15,
                                spreadRadius: 1,
                                offset: Offset(1, 1),
                                color: Colors.grey.withOpacity(0.2))
                          ]),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 10,
                            right: 10,
                            bottom: 0,
                            top: 15,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric
                                    (vertical: 6),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(right: 8.0),
                                        child: Icon(Icons.directions_bus_rounded),
                                      ),
                                      Text(
                                        "Ratna Travels",
                                        style: TextStyle(fontSize: 14,
                                            color:Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "Departure",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            vertical: 6,
                                          ),
                                          child: Text(
                                            "6:30 AM",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "Jaffna",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: const [
                                        Text(
                                          "Arrival",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            vertical: 4,
                                          ),
                                          child: Text(
                                            "5:30 PM",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "Colombo",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      // onTap:(){
                                      //   Navigator.push(context, MaterialPageRoute
                                      //     (builder: (context) => BusBookingSelectPage()));
                                      // },
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only
                                              (bottom: 5, top: 15),
                                            width: 150,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: kPrimaryColor,
                                              borderRadius: BorderRadius
                                                  .circular(30),
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: const [
                                                Text(
                                                  "View Details",
                                                  style: TextStyle(fontSize:
                                                  14, color:bWhite,
                                                      fontWeight: FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),

                                    GestureDetector(
                                      // onTap:(){
                                      //   Navigator.push(context, MaterialPageRoute
                                      //     (builder: (context) => BusBookingSelectPage()));
                                      // },
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only
                                              (bottom: 5, top: 15),
                                            width: 150,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: kPrimaryColor,
                                              borderRadius: BorderRadius
                                                  .circular(30),
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: const [
                                                Text(
                                                  "Book Again",
                                                  style: TextStyle(fontSize:
                                                  14, color:bWhite,
                                                      fontWeight: FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),



                                  ],
                                ),


                              ],
                            ),
                          ),

                        ],
                      ),
                    ),


                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      width: 600,
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: bWhite,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 15,
                                spreadRadius: 1,
                                offset: Offset(1, 1),
                                color: Colors.grey.withOpacity(0.2))
                          ]),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 10,
                            right: 10,
                            bottom: 0,
                            top: 15,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric
                                    (vertical: 6),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(right: 8.0),
                                        child: Icon(Icons.directions_bus_rounded),
                                      ),
                                      Text(
                                        "Ratna Travels",
                                        style: TextStyle(fontSize: 14,
                                            color:Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "Departure",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            vertical: 6,
                                          ),
                                          child: Text(
                                            "6:30 AM",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "Jaffna",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: const [
                                        Text(
                                          "Arrival",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            vertical: 4,
                                          ),
                                          child: Text(
                                            "5:30 PM",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "Colombo",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      // onTap:(){
                                      //   Navigator.push(context, MaterialPageRoute
                                      //     (builder: (context) => BusBookingSelectPage()));
                                      // },
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only
                                              (bottom: 5, top: 15),
                                            width: 150,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: kPrimaryColor,
                                              borderRadius: BorderRadius
                                                  .circular(30),
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: const [
                                                Text(
                                                  "View Details",
                                                  style: TextStyle(fontSize:
                                                  14, color:bWhite,
                                                      fontWeight: FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),

                                    GestureDetector(
                                      // onTap:(){
                                      //   Navigator.push(context, MaterialPageRoute
                                      //     (builder: (context) => BusBookingSelectPage()));
                                      // },
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only
                                              (bottom: 5, top: 15),
                                            width: 150,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: kPrimaryColor,
                                              borderRadius: BorderRadius
                                                  .circular(30),
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: const [
                                                Text(
                                                  "Book Again",
                                                  style: TextStyle(fontSize:
                                                  14, color:bWhite,
                                                      fontWeight: FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),



                                  ],
                                ),


                              ],
                            ),
                          ),

                        ],
                      ),
                    ),



                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      width: 600,
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: bWhite,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 15,
                                spreadRadius: 1,
                                offset: Offset(1, 1),
                                color: Colors.grey.withOpacity(0.2))
                          ]),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 10,
                            right: 10,
                            bottom: 0,
                            top: 15,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric
                                    (vertical: 6),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(right: 8.0),
                                        child: Icon(Icons.directions_bus_rounded),
                                      ),
                                      Text(
                                        "Ratna Travels",
                                        style: TextStyle(fontSize: 14,
                                            color:Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "Departure",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            vertical: 6,
                                          ),
                                          child: Text(
                                            "6:30 AM",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "Jaffna",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: const [
                                        Text(
                                          "Arrival",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            vertical: 4,
                                          ),
                                          child: Text(
                                            "5:30 PM",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "Colombo",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      // onTap:(){
                                      //   Navigator.push(context, MaterialPageRoute
                                      //     (builder: (context) => BusBookingSelectPage()));
                                      // },
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only
                                              (bottom: 5, top: 15),
                                            width: 150,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: kPrimaryColor,
                                              borderRadius: BorderRadius
                                                  .circular(30),
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: const [
                                                Text(
                                                  "View Details",
                                                  style: TextStyle(fontSize:
                                                  14, color:bWhite,
                                                      fontWeight: FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),

                                    GestureDetector(
                                      // onTap:(){
                                      //   Navigator.push(context, MaterialPageRoute
                                      //     (builder: (context) => BusBookingSelectPage()));
                                      // },
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only
                                              (bottom: 5, top: 15),
                                            width: 150,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: kPrimaryColor,
                                              borderRadius: BorderRadius
                                                  .circular(30),
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: const [
                                                Text(
                                                  "Book Again",
                                                  style: TextStyle(fontSize:
                                                  14, color:bWhite,
                                                      fontWeight: FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),



                                  ],
                                ),


                              ],
                            ),
                          ),

                        ],
                      ),
                    ),


                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      width: 600,
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: bWhite,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 15,
                                spreadRadius: 1,
                                offset: Offset(1, 1),
                                color: Colors.grey.withOpacity(0.2))
                          ]),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 10,
                            right: 10,
                            bottom: 0,
                            top: 15,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric
                                    (vertical: 6),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(right: 8.0),
                                        child: Icon(Icons.directions_bus_rounded),
                                      ),
                                      Text(
                                        "Ratna Travels",
                                        style: TextStyle(fontSize: 14,
                                            color:Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "Departure",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            vertical: 6,
                                          ),
                                          child: Text(
                                            "6:30 AM",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "Jaffna",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: const [
                                        Text(
                                          "Arrival",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            vertical: 4,
                                          ),
                                          child: Text(
                                            "5:30 PM",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "Colombo",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      // onTap:(){
                                      //   Navigator.push(context, MaterialPageRoute
                                      //     (builder: (context) => BusBookingSelectPage()));
                                      // },
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only
                                              (bottom: 5, top: 15),
                                            width: 150,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: kPrimaryColor,
                                              borderRadius: BorderRadius
                                                  .circular(30),
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: const [
                                                Text(
                                                  "View Details",
                                                  style: TextStyle(fontSize:
                                                  14, color:bWhite,
                                                      fontWeight: FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),

                                    GestureDetector(
                                      // onTap:(){
                                      //   Navigator.push(context, MaterialPageRoute
                                      //     (builder: (context) => BusBookingSelectPage()));
                                      // },
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only
                                              (bottom: 5, top: 15),
                                            width: 150,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: kPrimaryColor,
                                              borderRadius: BorderRadius
                                                  .circular(30),
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: const [
                                                Text(
                                                  "Book Again",
                                                  style: TextStyle(fontSize:
                                                  14, color:bWhite,
                                                      fontWeight: FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),



                                  ],
                                ),


                              ],
                            ),
                          ),

                        ],
                      ),
                    ),




                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
