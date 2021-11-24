import 'package:NBD/screens/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'expert_system.dart';
import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  // static String routeName = "/profile";
  // final _picker = ImagePicker();
  // Future getimage() async {
  //   PickedFile image = await _picker.getImage(source: ImageSource.gallery);
  // }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "Online Detection",
            icon: "assets/icons/Camera Icon.svg",
            press: (){Navigator.pushNamed(context, ExpertSystem.routeName);},
          ),
          ProfileMenu(
            text: "My Account",
            icon: "assets/icons/User Icon.svg",
            press: () => {},
          ),
          ProfileMenu(
            text: "Notifications",
            icon: "assets/icons/Bell.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Settings",
            icon: "assets/icons/Settings.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Help Center",
            icon: "assets/icons/Question mark.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press: () {Navigator.pushNamed(context, SignInScreen.routeName);},
          ),
        ],
      ),
    );
  }
}
