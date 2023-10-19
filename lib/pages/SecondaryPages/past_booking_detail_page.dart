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
import 'package:nahsiba/pages/main_page.dart';
import 'package:qr_flutter/qr_flutter.dart';


class PastBookingDetailsPage extends StatefulWidget {
  const PastBookingDetailsPage({super.key});

  @override
  State<PastBookingDetailsPage> createState() => _PastBookingDetailsPageState();
}

class _PastBookingDetailsPageState extends State<PastBookingDetailsPage> {
  String qrData = 'https://www.github.com/kamranhccp';
  final qrText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        padding: const EdgeInsets.fromLTRB(30, 64, 30, 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute
                    (builder: (context) => MainPage()));
                },
                child: Container(
                  //padding: const EdgeInsets.only(left: 16),
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back_rounded, size: 30,color:kPrimaryColor),
                      Expanded(child: Container()),
                      Text(
                        "Booking Details",
                        style: TextStyle(fontSize: 20, color: kPrimaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                      Expanded(child: Container()),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),

              Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 15),
                        width: 600,
                        height: 380,
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
                              left: 15,
                              right: 15,
                              bottom: 0,
                              top: 25,
                              child: Column(
                                children: [

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            "8.30PM",
                                            style: TextStyle(
                                              fontSize: 16,fontWeight: FontWeight.w900,
                                            ),
                                          ),

                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            "6.00AM",
                                            style: TextStyle(
                                              fontSize: 16,fontWeight: FontWeight.w900,
                                            ),
                                          ),

                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Divider(
                                      color: Colors.black
                                  ),

                                  SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            "Jaffna",
                                            style: TextStyle(
                                              fontSize: 16,
                                            ),
                                          ),

                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            "Colombo",
                                            style: TextStyle(
                                              fontSize: 16,
                                            ),
                                          ),

                                        ],
                                      ),
                                    ],
                                  ),

                                  //Date
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              'Date:',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Text(
                                              "13.10.2023",
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(child: Container()),

                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only
                                                (bottom: 5, top: 15),
                                              width: 100,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                color: kPrimaryColor,
                                                borderRadius: BorderRadius
                                                    .circular(18),
                                              ),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: const [
                                                  Text(
                                                    "Seat: 23",
                                                    style: TextStyle(fontSize:
                                                    14, color:bWhite,
                                                        fontWeight: FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),

                                  //Passenger Name
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              'Passenger:',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Text(
                                              "Baveega",
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                    ],
                                  ),

                                  //Passenger Id
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              'Id:',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Text(
                                              "213283****6347",
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(child: Container()),

                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only
                                                (bottom: 5, top: 15,left: 60),
                                              width: 40,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                color: kPrimaryLightColor,
                                                borderRadius: BorderRadius
                                                    .circular(18),
                                              ),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: const [
                                                  Icon(Icons
                                                      .copy,
                                                      size: 20,color:bWhite),

                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
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
                                              width: 300,
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
                                                    16, color:bWhite,
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

              Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 15),
                        width: 600,
                        height: 250,
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
                              left: 15,
                              right: 15,
                              bottom: 0,
                              top: 10,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              'Contact:',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Text(
                                              "+94761234567",
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Text(
                                              'Name:',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Text(
                                              "JGP Travels",
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(child: Container()),

                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            QrImageView(
                                              data: qrData,
                                              version: QrVersions.auto,
                                              size: 100,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),



                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              'Contact:',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Text(
                                              "+94761234567",
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(child: Container()),

                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only
                                                (bottom: 5, top: 15,left: 60),
                                              width: 40,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                color: kPrimaryLightColor,
                                                borderRadius: BorderRadius
                                                    .circular(18),
                                              ),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: const [
                                                  Icon(Icons
                                                      .copy,
                                                      size: 20,color:bWhite),

                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),

                                  //Passenger Id
                                  SizedBox(height: 10,),
                                  Divider(
                                      color: Colors.black
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Icon(Icons
                                              .download,
                                              size: 30,color:kPrimaryColor),

                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Icon(Icons
                                              .info_outline,
                                              size: 30,color:kPrimaryColor),

                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10,),




                                  //Passenger Id



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
      ),
    );
  }
}
