import 'package:btms/Pages/BirdList/controller/bird_controller.dart';
import 'package:btms/Routes/routes.dart';
import 'package:btms/Widgets/fade_amimation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BirdScreen extends GetView<BirdController> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            // Get.back(closeOverlays: true);
            Get.toNamed(Routes.setting);
          },
        ),
        elevation: 1,
        title: Column(
          children: [
            Text(
              'Danh sách chim',
              style: TextStyle(color: Colors.black, fontSize: 40),
            ),
          ],
        ),
      ),
      body: Container(
        // alignment: Alignment.center,
        width: double.infinity,
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.birdInfo);
              },
              child: Container(
                width: screenSize.width * 0.85,
                height: screenSize.height * 0.08,
                // alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black)),
                child: GestureDetector(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Image.network(
                        "https://chimchaomao.vn/upload/baiviet/logomobile-4993.png",
                        width: 30,
                        height: 30,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Chim chào mào một",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.birdInfo);
              },
              child: Container(
                width: screenSize.width * 0.85,
                height: screenSize.height * 0.08,
                // alignment: Alignment.centerRight,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black)),
                child: GestureDetector(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Image.network(
                        "https://chimchaomao.vn/upload/baiviet/logomobile-4993.png",
                        width: 30,
                        height: 30,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Chim chào mào một",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: screenSize.width * 0.85,
              height: screenSize.height * 0.05,
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.createBird);
                },
                child: Text(
                  "Tạo mới hồ sơ chim",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              decoration: BoxDecoration(
                  color: Color(0xff00CC00),
                  borderRadius: BorderRadius.circular(4)),
            ),
          ],
        ),
      ),
    );
  }
}
