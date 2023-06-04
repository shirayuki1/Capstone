import 'package:btms/Pages/CheckinList/controller/checkin_controller.dart';
import 'package:btms/Routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckinScreen extends GetView<CheckinController> {
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
            Get.back(closeOverlays: true);
          },
        ),
        elevation: 1,
        title: Column(
          children: [
            Text(
              "Điểm danh",
              style: TextStyle(color: Colors.black, fontSize: 35),
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
                Get.toNamed(Routes.checkinBird);
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
                Get.toNamed(Routes.checkinBird);
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
          ],
        ),
      ),
    );
  }
}
