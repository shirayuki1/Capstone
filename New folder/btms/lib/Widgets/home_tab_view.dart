import 'package:btms/Routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tab_indicator_styler/flutter_tab_indicator_styler.dart';
import 'package:get/get.dart';

import '../Pages/Home/controller/homeController.dart';

class HomeTabView extends GetView<HomeController> {
  // final String buildingName;
  // HomeSearchBar({
  //   required this.buildingName,
  // });

  @override
  Widget build(BuildContext context) {
    // final screen = MediaQuery.of(context).size;
    return Container(
      child: Column(children: [
        SizedBox(
          height: 100,
        ),
        Container(
          // padding: const EdgeInsets.only(bottom: 10),
          margin: const EdgeInsets.only(bottom: 5, right: 10, top: 90),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey.shade400, width: 0.5),
            ),
          ),
          child: TabBar(
            //automaticIndicatorColorAdjustment: true,
            indicatorColor: Colors.green.shade100,
            unselectedLabelColor: Colors.black,
            unselectedLabelStyle: TextStyle(overflow: TextOverflow.clip),
            // indicator: BoxDecoration(
            //   border: Border.all(color: Colors.white),
            //   borderRadius: BorderRadius.circular(10),
            //   color: Colors.white,
            //   boxShadow: [
            //     BoxShadow(
            //       color: Colors.grey.shade200,
            //       blurRadius: 4.0,
            //       offset: Offset(0, 0),
            //     ),
            //   ],
            // ),
            //indicatorWeight: 10,
            tabs: [
              Container(
                width: 120,
                margin: EdgeInsets.only(
                  bottom: 20,
                ),
                child: Tab(
                  // text: "Đang diễn ra",
                  child: Text(
                    "Đang diễn ra",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                  // icon: Icon(
                  //   Icons.file_copy_outlined,
                  //   color: Colors.grey,
                  // ),
                  //child: Expanded(child: Text),
                ),
              ),
              Container(
                width: 120,
                margin: EdgeInsets.only(
                  bottom: 20,
                ),
                child: Tab(
                  // text: "Đang diễn ra",
                  child: Text(
                    "Sắp diễn ra",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              // Container(
              //   width: 100,
              //   child: Tab(
              //     text: "Nhận xét",
              //     // icon: Icon(
              //     //   Icons.paste_outlined,
              //     //   color: Colors.grey,
              //     // ),
              //   ),
              // ),
            ],
            labelColor: Color(0xFF0C9869),
            indicatorPadding: const EdgeInsets.all(10),
            indicatorSize: TabBarIndicatorSize.tab,
            //padding: EdgeInsetsGeometry.lerp(EdgeInsets.only(left: 10), EdgeInsets.only(left: 10), 30),

            indicator: MaterialIndicator(
              height: 5,
              topLeftRadius: 8,
              topRightRadius: 8,
              horizontalPadding: 30,
              tabPosition: TabPosition.bottom,
            ),
          ),
        ),
        Expanded(
          child: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              // _buildReports(),
              _onGoing(),
              _inComing(),
              // _buildGalleries(),
              // _buildComment(),
            ],
          ),
        ),
      ]),
    );
  }

  Widget _onGoing() {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(right: 20, left: 20),
            child: GestureDetector(
              onTap: () {
                // Get.toNamed(Routes.birdInfo);
                Get.toNamed(Routes.goingTourDetail);
              },
              child: Container(
                height: 150,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black)),
                child: GestureDetector(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        // height: 100,
                        // width: 100,
                        child: Image.network(
                          "https://cdn.wikifarm.vn/2023/03/chim-chao-mao-7.jpg",
                          width: 100,
                          height: 100,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Giải đấu mùa hè",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Ngày diễn ra:",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "02 - 06 -2023",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Địa điểm:",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "FPT University",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Giờ thi đấu:",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "8h30",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _inComing() {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(right: 20, left: 20),
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                // Get.toNamed(Routes.birdInfo);
                Get.toNamed(Routes.comingTourDetail);
              },
              child: Container(
                height: 140,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black)),
                child: GestureDetector(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 130,
                        width: 90,
                        child: Image.network(
                          "https://cdn.wikifarm.vn/2023/03/chim-chao-mao-7.jpg",
                          width: 90,
                          height: 130,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Giải đấu mùa hè",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Ngày diễn ra:",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "02 - 06 -2023",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Địa điểm:",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "FPT University",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Giờ thi đấu:",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "8h30",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
