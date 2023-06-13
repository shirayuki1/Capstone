import 'package:btms/Pages/TournamentDetailOngoing/controller/ongoing_tournament_detail_controller.dart';
import 'package:btms/Routes/routes.dart';
import 'package:btms/Services/GlobalStates/share_states.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:timeline_tile/timeline_tile.dart';

class OngoingTournamentDetailScreen
    extends GetView<OngoingTournamentDetailController> {
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
                margin: EdgeInsets.only(top: 320, left: 10, right: 10),
                child: Column(
                  children: [
                    Text(
                      "Mô tả",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        Text(
                            "NHẰM THỨC ĐẨY PHONG TRÀO CHIM CẢNH CHO ACE NGHỆ NHÂN CẢNH CHO ACE NGHỆ NHÂN Trường Chim TUẤN CÓNG"),
                        Text(
                            "NHẰM THỨC ĐẨY PHONG TRÀO CHIM CẢNH CHO ACE NGHỆ NHÂN CẢNH CHO ACE NGHỆ NHÂN Trường Chim TUẤN CÓNG"),
                      ],
                    )),
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
                "Kết quả thi đấu",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // SizedBox(
              //   height: 20,
              // ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.resultBird);
                    },
                    child: Container(
                      width: screenSize.width * 0.85,
                      height: screenSize.height * 0.08,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black)),
                      child: GestureDetector(
                        child: Text(
                          "Vòng loại số 1",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
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
