import 'package:btms/Pages/Setting/controller/setting_controller.dart';
import 'package:btms/Routes/routes.dart';
import 'package:btms/Widgets/custom_bottom_bar.dart';
import 'package:btms/Widgets/setting_title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class SettingScreen extends GetView<SettingController> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    // return Obx(() {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Settings",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 30),
              SettingsTile(
                color: Colors.blue,
                icon: Ionicons.person_circle_outline,
                title: "User Profile",
                onTap: () {
                  Get.toNamed(Routes.account);
                },
              ),
              SizedBox(
                height: 15,
              ),
              SettingsTile(
                color: Colors.green,
                icon: Icons.pets_outlined,
                title: "Bird List",
                onTap: () {
                  Get.toNamed(Routes.listBird);
                },
              ),

              // const SizedBox(
              //   height: 40,
              // ),
              // SettingsTile(
              //   color: Colors.black,
              //   icon: Ionicons.moon_outline,
              //   title: "Theme",
              //   onTap: () {},
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              // SettingsTile(
              //   color: Colors.purple,
              //   icon: Ionicons.language_outline,
              //   title: "Language",
              //   onTap: () {},
              // ),
              const SizedBox(
                height: 40,
              ),
              SettingsTile(
                color: Colors.red,
                icon: Ionicons.log_out_outline,
                title: "Logout",
                onTap: () {
                  controller.logOut();
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottombar(),
    );
    // });
  }
}
