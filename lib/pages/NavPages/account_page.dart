import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:math';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nahsiba/constants/app_colors.dart';
import 'package:nahsiba/pages/NavPages/account_page.dart';
import 'package:nahsiba/pages/NavPages/history_page.dart';
import 'package:nahsiba/pages/NavPages/home_page.dart';
import 'package:nahsiba/pages/NavPages/detail_page.dart';
import 'package:nahsiba/pages/main_page.dart';

import 'package:nahsiba/pages/NavPages/home_screen.dart';
class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  File? image;

  Future selectFromGallery() async {
    try{
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if(image == null) return;

      final imageTemp = File(image.path);

      setState(() => this.image = imageTemp);
    }
    on PlatformException catch(e) {
      print('Failed to pick image: $e');
    }
  }
  @override
  Widget build(BuildContext context) {
    var emailController =  TextEditingController();

    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 64, 30, 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                //Top Gesture Arrow



                //Profile Image
                Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Baveega',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                Icon(Icons
                                    .star,
                                    size: 20,color:Colors.black),
                                Text(
                                  '5.0',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                ),


                              ],
                            )
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
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: kPrimaryLightColor,
                                borderRadius: BorderRadius
                                    .circular(30),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons
                                      .person,
                                      size: 20,color:bWhite),

                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                SizedBox(height: 20,),

                // Buttons
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
                            width: 100,
                            height: 80,
                            decoration: BoxDecoration(
                              color: kPrimaryLightColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Icons.help_outline_rounded, size: 20,color:bWhite),
                                SizedBox(height: 4,),
                                Text(
                                  "Help",
                                  style: TextStyle(fontSize: 12, color:bWhite,
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
                            margin: const EdgeInsets.only(bottom: 10),
                            width: 100,
                            height: 80,
                            decoration: BoxDecoration(
                              color: kPrimaryLightColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Icons.wallet, size: 20,color:bWhite),
                                SizedBox(height: 4,),
                                Text(
                                  "Wallet",
                                  style: TextStyle(fontSize: 12, color:bWhite,
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
                            margin: const EdgeInsets.only(bottom: 10),
                            width: 100,
                            height: 80,
                            decoration: BoxDecoration(
                              color: kPrimaryLightColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Icons.access_time_filled_outlined, size: 20,color:bWhite),
                                SizedBox(height: 4,),
                                Text(
                                  "Trips",
                                  style: TextStyle(fontSize: 12, color:bWhite,
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


                SizedBox(height: 20,),






                SizedBox(height: 15,),
                //Settings
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  width: width * 0.89,
                  height: height * 0.07,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: bWhite.withOpacity(0.8),
                      boxShadow: [
                        BoxShadow(

                            offset: Offset(1,1),
                            color: Colors.grey.withOpacity(0.3)
                        )
                      ]
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(3, 15, 15, 5),
                        child: Row(
                          children: [
                            Icon(Icons.settings, size: 30,color:kPrimaryColor),
                            SizedBox(width: 6,),
                            Text(
                              "Settings",
                              style: TextStyle(fontSize: 20, color: kPrimaryColor,
                                  fontWeight: FontWeight.bold),
                            ),

                            Expanded(child: Container()),
                            Icon(Icons.arrow_forward_ios_rounded, size: 30,color:kPrimaryColor),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 8,),

                //Refer a friend
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  width: width * 0.89,
                  height: height * 0.07,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: bWhite.withOpacity(0.8),
                      boxShadow: [
                        BoxShadow(

                            offset: Offset(1,1),
                            color: Colors.grey.withOpacity(0.3)
                        )
                      ]
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(3, 15, 15, 5),
                        child: Row(
                          children: [
                            Icon(Icons.person_pin, size: 30,color:kPrimaryColor),
                            SizedBox(width: 6,),
                            Text(
                              "Refer a Friend",
                              style: TextStyle(fontSize: 20, color: kPrimaryColor,
                                  fontWeight: FontWeight.bold),
                            ),

                            Expanded(child: Container()),
                            Icon(Icons.arrow_forward_ios_rounded, size: 30,color:kPrimaryColor),

                          ],
                        ),
                      )
                    ],
                  ),
                ),


                SizedBox(height: 8,),

                //Feedbacks
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  width: width * 0.89,
                  height: height * 0.07,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: bWhite.withOpacity(0.8),
                      boxShadow: [
                        BoxShadow(

                            offset: Offset(1,1),
                            color: Colors.grey.withOpacity(0.3)
                        )
                      ]
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(3, 15, 15, 5),
                        child: Row(
                          children: [
                            Icon(Icons.feedback_outlined, size: 30,color:kPrimaryColor),
                            SizedBox(width: 6,),
                            Text(
                              "Feedbacks",
                              style: TextStyle(fontSize: 20, color: kPrimaryColor,
                                  fontWeight: FontWeight.bold),
                            ),

                            Expanded(child: Container()),
                            Icon(Icons.arrow_forward_ios_rounded, size: 30,color:kPrimaryColor),

                          ],
                        ),
                      )
                    ],
                  ),
                ),


                SizedBox(height: 8,),

                //FAQs
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  width: width * 0.89,
                  height: height * 0.07,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: bWhite.withOpacity(0.8),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(1,1),
                            color: Colors.grey.withOpacity(0.3)
                        )
                      ]
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(3, 15, 15, 5),
                        child: Row(
                          children: [
                            Icon(Icons.question_mark_sharp, size: 30,color:kPrimaryColor),
                            SizedBox(width: 6,),
                            Text(
                              "FAQs",
                              style: TextStyle(fontSize: 20, color: kPrimaryColor,
                                  fontWeight: FontWeight.bold),
                            ),

                            Expanded(child: Container()),
                            Icon(Icons.arrow_forward_ios_rounded, size: 30,color:kPrimaryColor),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 8,),

                //Customer Support
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  width: width * 0.89,
                  height: height * 0.07,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: bWhite.withOpacity(0.8),
                      boxShadow: [
                        BoxShadow(

                            offset: Offset(1,1),
                            color: Colors.grey.withOpacity(0.3)
                        )
                      ]
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(3, 15, 15, 5),
                        child: Row(
                          children: [
                            Icon(Icons.support_agent_rounded, size: 30,color:kPrimaryColor),
                            SizedBox(width: 6,),
                            Text(
                              "Customer Support",
                              style: TextStyle(fontSize: 20, color: kPrimaryColor,
                                  fontWeight: FontWeight.bold),
                            ),

                            Expanded(child: Container()),
                            Icon(Icons.arrow_forward_ios_rounded, size: 30,color:kPrimaryColor),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 8,),

                //About Us
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  width: width * 0.89,
                  height: height * 0.07,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: bWhite.withOpacity(0.8),
                      boxShadow: [
                        BoxShadow(

                            offset: Offset(1,1),
                            color: Colors.grey.withOpacity(0.3)
                        )
                      ]
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(3, 15, 15, 5),
                        child: Row(
                          children: [
                            Icon(Icons.history, size: 30,color:kPrimaryColor),
                            SizedBox(width: 6,),
                            Text(
                              "About Us",
                              style: TextStyle(fontSize: 20, color: kPrimaryColor,
                                  fontWeight: FontWeight.bold),
                            ),

                            Expanded(child: Container()),
                            Icon(Icons.arrow_forward_ios_rounded, size: 30,color:kPrimaryColor),

                          ],
                        ),
                      )
                    ],
                  ),
                ),


                SizedBox(height: 8,),

                //Logout
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  width: width * 0.89,
                  height: height * 0.07,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: bWhite.withOpacity(0.8),
                      boxShadow: [
                        BoxShadow(

                            offset: Offset(1,1),
                            color: Colors.grey.withOpacity(0.3)
                        )
                      ]
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(3, 15, 15, 5),
                        child: Row(
                          children: [
                            Icon(Icons.logout, size: 30,color:Colors.red),
                            SizedBox(width: 6,),
                            Text(
                              "Logout",
                              style: TextStyle(fontSize: 20, color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),


                          ],
                        ),
                      )
                    ],
                  ),
                ),



                //Copyright Text
                Container(
                  padding: const EdgeInsets.only(left: 10),
                  width: width * 0.89,
                  height: height * 0.07,

                  child: Stack(
                    children: [
                      Positioned(
                          left: 45,
                          top: 19,
                          child: Icon(Icons.copyright_outlined, size: 14,
                            color:kPrimaryColor.withOpacity(0.7),)),
                      Positioned(
                          left: 60,
                          top: 20,
                          child: Text(
                            "Designed and Developed by Nahsiba",
                            style: TextStyle(fontSize: 12, color: kPrimaryColor.withOpacity(0.7),
                                fontWeight: FontWeight.bold),
                          )),

                    ],
                  ),
                ),

              ],
            ),
          ),

      ),

    );
  }
}
