import 'package:btms/Pages/TournamentDetailComingSoon/controller/coming_tournament_detail_controller.dart';
import 'package:btms/Routes/routes.dart';
import 'package:btms/Services/GlobalStates/share_states.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class ComingTournamentDetailScreen
    extends GetView<ComingTournamentDetailController> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    BorderRadiusGeometry radius = BorderRadius.only(
      topLeft: Radius.circular(24.0),
      topRight: Radius.circular(24.0),
    );

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
            Get.toNamed(Routes.homeScreen);
          },
        ),
        elevation: 1,
        title: Column(
          children: [
            Text(
              'Giải đấu mùa hè',
              style: TextStyle(color: Colors.black87, fontSize: 35),
            ),
          ],
        ),
      ),
      body: SlidingUpPanel(
        body: Container(
          // alignment: Alignment.topCenter,

          // child: Text("This is the Widget behind the sliding panel"),
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 25),
                child: Image.network(
                  "https://static.chotot.com/storage/chotot-kinhnghiem/c2c/2022/05/1e986ed0-chim-chao-mao-an-gi-3.jpg",
                  // height: screenSize.height * 0.3,
                  //width: screenSize.width * 0.9,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 320),
                child: Column(
                  children: [
                    Text(
                      "Mô tả",
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                        child: Text(
                            "NHẰM THỨC ĐẨY PHONG TRÀO CHIM CẢNH CHO ACE NGHỆ NHÂN CẢNH CHO ACE NGHỆ NHÂN Trường Chim TUẤN CÓNG")),
                  ],
                ),
              ),
            ],
          ),
        ),
        panel: Container(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Đăng kí",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
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
                    height: 20,
                  ),
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
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: screenSize.width * 0.55,
                height: screenSize.height * 0.05,
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.chooseBird);
                  },
                  child: Text(
                    "Đăng ký thi đấu",
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
        // collapsed: Container(
        //   decoration:
        //       BoxDecoration(color: Colors.blueGrey, borderRadius: radius),
        //   child: Container(
        //     child: Text(
        //       "This is the collapsed Widget",
        //       style: TextStyle(color: Colors.white),
        //     )
        //     ,child: TournamentTabView(),
        //   ),
        // ),

        borderRadius: radius,
      ),
    );
    // return SafeArea(
    //   child: Scaffold(
    //     // appBar: AppBar(),
    //     body: Container(
    //       child: Column(
    //         children: [
    //           Container(
    //             child: Image.network(
    //                 "https://static.chotot.com/storage/chotot-kinhnghiem/c2c/2022/05/1e986ed0-chim-chao-mao-an-gi-3.jpg"),
    //           ),
    //           SafeArea(
    //             child: Container(
    //               child: Text("A"),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
