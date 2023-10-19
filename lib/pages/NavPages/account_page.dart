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
      body: Column(
        children: [
          Container(
            height: 120,
            child: Stack(
              children: [
                Positioned(
                    left: 10,
                    top: 60,
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MainPage()));
                            },
                            icon: Icon(
                              Icons.chevron_left_rounded,
                              color: kPrimaryColor,
                              size: 39,
                            )),
                      ],
                    )),

                Positioned(
                    left: 168,
                    top: 75,
                    child: Text(
                      "Profile",
                      style: TextStyle(fontSize: 20, color: kPrimaryColor,
                          fontWeight: FontWeight.bold),
                    )),

                Positioned(
                    left: 330,
                    top: 60,
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BusBookingHomeScreen()));
                            },
                            icon: Icon(
                              Icons.settings,
                              color: kPrimaryColor,
                              size: 39,
                            )),
                      ],
                    )),

              ],
            ),
          ),
          //Profile Image
          Container(
            padding: const EdgeInsets.only(left: 10),
            width: width * 0.7,
            height: height * 0.14,

            child: Stack(
              children: [

                Positioned(
                    left:0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 56,
                      backgroundColor: Colors.grey.shade200,
                      child: Padding(
                        padding: const EdgeInsets.all(8), // Border radius
                        child: ClipOval(child:image != null ? Image.file(image!): Image
                            .network
                          ('https://img1'
                            '.hscicdn.com/image/upload/f_auto,t_ds_square_w_320,q_50/lsci/db/PICTURES/CMS/316500/316500.png')),
                      ),
                    )
                ),

                Positioned(
                    left: 155,
                    top: 90,
                    child: GestureDetector(
                      //  onTap: () => selectFromGallery(),
                      child: Icon(Icons.camera_enhance_outlined, size: 24,
                          color:kPrimaryColor.withOpacity(0.4)),
                    )),

              ],
            ),
          ),

          SizedBox(height: 15,),

          //Edit Profile
          Container(
            padding: const EdgeInsets.only(left: 10),
            width: width * 0.7,
            height: height * 0.07,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: kPrimaryColor.withOpacity(0.8),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 7,
                      offset: Offset(1,1),
                      color: Colors.grey.withOpacity(0.3)
                  )
                ]
            ),
            child: Stack(
              children: [

                Positioned(
                    left: 85,
                    top: 20,
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(fontSize: 18, color: bWhite,
                          fontWeight: FontWeight.bold),
                    )),

              ],
            ),
          ),

          SizedBox(height: 15,),
          //Privacy
          Container(
            padding: const EdgeInsets.only(left: 10),
            width: width * 0.89,
            height: height * 0.07,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: bWhite.withOpacity(0.8),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 7,
                      offset: Offset(1,1),
                      color: Colors.grey.withOpacity(0.3)
                  )
                ]
            ),
            child: Stack(
              children: [
                Positioned(
                    left: 20,
                    top: 19,
                    child: Icon(Icons.privacy_tip_outlined, size: 24, color:
                    kPrimaryColor,)),
                Positioned(
                    left: 60,
                    top: 20,
                    child: Text(
                      "Privacy",
                      style: TextStyle(fontSize: 18, color: kPrimaryColor,
                          fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    right: 15,
                    top: 14,
                    child: Icon(Icons.chevron_right_outlined, size: 36, color:
                    kPrimaryColor,)),
              ],
            ),
          ),

          SizedBox(height: 15,),

          //Settings
          Container(
            padding: const EdgeInsets.only(left: 10),
            width: width * 0.89,
            height: height * 0.07,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: bWhite.withOpacity(0.8),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 7,
                      offset: Offset(1,1),
                      color: Colors.grey.withOpacity(0.3)
                  )
                ]
            ),
            child: Stack(
              children: [
                Positioned(
                    left: 20,
                    top: 19,
                    child: Icon(Icons.settings_outlined, size: 24, color:
                    kPrimaryColor,)),
                Positioned(
                    left: 60,
                    top: 20,
                    child: Text(
                      "Settings",
                      style: TextStyle(fontSize: 18, color: kPrimaryColor,
                          fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    right: 15,
                    top: 14,
                    child: Icon(Icons.chevron_right_outlined, size: 36, color:
                    kPrimaryColor,)),
              ],
            ),
          ),

          SizedBox(height: 15,),

          //Help and Support
          Container(
            padding: const EdgeInsets.only(left: 10),
            width: width * 0.89,
            height: height * 0.07,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: bWhite.withOpacity(0.8),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 7,
                      offset: Offset(1,1),
                      color: Colors.grey.withOpacity(0.3)
                  )
                ]
            ),
            child: Stack(
              children: [
                Positioned(
                    left: 20,
                    top: 19,
                    child: Icon(Icons.help_outline_sharp, size: 24, color:
                    kPrimaryColor,)),
                Positioned(
                    left: 60,
                    top: 20,
                    child: Text(
                      "Help & Support",
                      style: TextStyle(fontSize: 18, color: kPrimaryColor,
                          fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    right: 15,
                    top: 14,
                    child: Icon(Icons.chevron_right_outlined, size: 36, color:
                    kPrimaryColor,)),
              ],
            ),
          ),

          SizedBox(height: 15,),

          //Invite a Friend
          Container(
            padding: const EdgeInsets.only(left: 10),
            width: width * 0.89,
            height: height * 0.07,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: bWhite.withOpacity(0.8),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 7,
                      offset: Offset(1,1),
                      color: Colors.grey.withOpacity(0.3)
                  )
                ]
            ),
            child: Stack(
              children: [
                Positioned(
                    left: 20,
                    top: 19,
                    child: Icon(Icons.supervised_user_circle_outlined, size: 24, color:
                    kPrimaryColor,)),
                Positioned(
                    left: 60,
                    top: 20,
                    child: Text(
                      "Invite a Friend",
                      style: TextStyle(fontSize: 18, color: kPrimaryColor,
                          fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    right: 15,
                    top: 14,
                    child: Icon(Icons.chevron_right_outlined, size: 36, color:
                    kPrimaryColor,)),
              ],
            ),
          ),

          SizedBox(height: 15,),

          //Logout
          Container(
            padding: const EdgeInsets.only(left: 10),
            width: width * 0.89,
            height: height * 0.07,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: bWhite.withOpacity(0.8),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 7,
                      offset: Offset(1,1),
                      color: Colors.grey.withOpacity(0.3)
                  )
                ]
            ),
            child: GestureDetector(
              // onTap: (){
              //   AuthController.instance.logOut();
              // },
              child: Stack(
                children: [
                  Positioned(
                      left: 20,
                      top: 19,
                      child: Icon(Icons.logout_outlined, size: 24, color:
                      Colors.red,)),
                  Positioned(
                      left: 60,
                      top: 20,
                      child: Text(
                        "Logout",
                        style: TextStyle(fontSize: 18, color: Colors.red,
                            fontWeight: FontWeight.bold),
                      )),

                ],
              ),
            ),
          ),


          SizedBox(height: 15,),

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

    );
  }
}
