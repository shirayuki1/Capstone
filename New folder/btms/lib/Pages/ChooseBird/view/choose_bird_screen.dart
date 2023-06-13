import 'package:btms/Pages/ChooseBird/controller/choose_bird_controller.dart';
import 'package:btms/Routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChooseBirdScreen extends GetView<ChooseBirdController> {
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
              'Danh sách chim',
              style: TextStyle(color: Colors.black, fontSize: 35),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 20,
            ),
            height: screenSize.height * 0.7,
            child: ListView.builder(
              itemCount: controller.list.length,
              itemBuilder: ((context, index) {
                return Obx(() => Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            controller.list[index].isSelected.value =
                                !controller.list[index].isSelected.value;
                          },
                          child: Container(
                            width: screenSize.width * 0.9,
                            margin: const EdgeInsets.only(
                              left: 15,
                              right: 15,
                              bottom: 8,
                              top: 4,
                            ),
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: controller.list[index].isSelected.value
                                  ? Colors.green[200]
                                  : Colors.white,
                            ),
                            child: Text(
                              controller.list[index].name,
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ));
              }),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              bottom: 50,
            ),
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 170,
                  height: 50,
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.createBird);
                    },
                    child: Text(
                      "Tạo hồ sơ chim",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xffFF0000),
                      borderRadius: BorderRadius.circular(4)),
                ),
                SizedBox(
                  width: 38,
                ),
                Container(
                  width: 170,
                  height: 50,
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      // Get.toNamed(Routes.updateBird);
                    },
                    child: Text(
                      "Thanh toán",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xffFFBF00),
                      borderRadius: BorderRadius.circular(4)),
                ),
              ],
            ),
          ),
        ],
      ),

      // body: Container(
      //   // alignment: Alignment.center,
      //   width: double.infinity,
      //   padding: EdgeInsets.only(left: 16, top: 25, right: 16),
      //   child: Column(
      //     children: [
      //       GestureDetector(
      //         onTap: () {
      //           Get.toNamed(Routes.birdInfo);
      //         },
      //         child: Container(
      //           width: screenSize.width * 0.85,
      //           height: screenSize.height * 0.08,
      //           // alignment: Alignment.center,
      //           decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(20),
      //               border: Border.all(color: Colors.black)),
      //           child: GestureDetector(
      //             child: Row(
      //               children: [
      //                 SizedBox(
      //                   width: 20,
      //                 ),
      //                 Image.network(
      //                   "https://chimchaomao.vn/upload/baiviet/logomobile-4993.png",
      //                   width: 30,
      //                   height: 30,
      //                 ),
      //                 SizedBox(
      //                   width: 20,
      //                 ),
      //                 Text(
      //                   "Chim chào mào một",
      //                   textAlign: TextAlign.right,
      //                   style: TextStyle(
      //                       fontSize: 20, fontWeight: FontWeight.w500),
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //       ),
      //       SizedBox(
      //         height: 10,
      //       ),
      //       GestureDetector(
      //         onTap: () {
      //           Get.toNamed(Routes.birdInfo);
      //         },
      //         child: Container(
      //           width: screenSize.width * 0.85,
      //           height: screenSize.height * 0.08,
      //           // alignment: Alignment.centerRight,
      //           decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(20),
      //               border: Border.all(color: Colors.black)),
      //           child: GestureDetector(
      //             child: Row(
      //               children: [
      //                 SizedBox(
      //                   width: 20,
      //                 ),
      //                 Image.network(
      //                   "https://chimchaomao.vn/upload/baiviet/logomobile-4993.png",
      //                   width: 30,
      //                   height: 30,
      //                 ),
      //                 SizedBox(
      //                   width: 20,
      //                 ),
      //                 Text(
      //                   "Chim chào mào một",
      //                   textAlign: TextAlign.right,
      //                   style: TextStyle(
      //                       fontSize: 20, fontWeight: FontWeight.w500),
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //       ),
      //       SizedBox(
      //         height: 20,
      //       ),
      //       Row(
      //         children: [
      //           Container(
      //             width: 170,
      //             height: 50,
      //             alignment: Alignment.center,
      //             child: GestureDetector(
      //               onTap: () {
      //                 Get.toNamed(Routes.createBird);
      //               },
      //               child: Text(
      //                 "Tạo hồ sơ chim",
      //                 textAlign: TextAlign.center,
      //                 style: TextStyle(
      //                     color: Colors.white,
      //                     fontSize: 20,
      //                     fontWeight: FontWeight.w500),
      //               ),
      //             ),
      //             decoration: BoxDecoration(
      //                 color: Color(0xffFF0000),
      //                 borderRadius: BorderRadius.circular(4)),
      //           ),
      //           SizedBox(
      //             width: 38,
      //           ),
      //           Container(
      //             width: 170,
      //             height: 50,
      //             alignment: Alignment.center,
      //             child: GestureDetector(
      //               onTap: () {
      //                 // Get.toNamed(Routes.updateBird);
      //               },
      //               child: Text(
      //                 "Thanh toán",
      //                 textAlign: TextAlign.center,
      //                 style: TextStyle(
      //                     color: Colors.white,
      //                     fontSize: 20,
      //                     fontWeight: FontWeight.w500),
      //               ),
      //             ),
      //             decoration: BoxDecoration(
      //                 color: Color(0xffFFBF00),
      //                 borderRadius: BorderRadius.circular(4)),
      //           ),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
