import 'package:btms/Widgets/custom_search_bar.dart';
import 'package:btms/Widgets/home_tab_view.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tab_indicator_styler/flutter_tab_indicator_styler.dart';
import 'package:get/get.dart';
import '../../../Widgets/custom_bottom_bar.dart';
import '../controller/homeController.dart';

class HomeScreen extends GetView<HomeController> {
  final double _minValue = 8.0;
  // final controller = Get.put(HomeController());
  ScrollController tcontroller = ScrollController();
  ScrollPhysics t = ScrollPhysics();

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    // return Obx(() {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            // appBar: AppBar(
            //   // backgroundColor: Color(0xFF0C9869).withOpacity(0.5),
            //   // foregroundColor: Color(0xFF0C9869).withOpacity(0.05),
            //   backgroundColor: Color(0xFFffffff),
            //   foregroundColor: Color(0xFFffffff),
            //   toolbarHeight: 100,
            //   centerTitle: true,
            //   title: Text(
            //     'Tournament',
            //     textAlign: TextAlign.center,
            //     style: TextStyle(
            //         color: Color(0xff000000),
            //         fontSize: 40,
            //         fontWeight: FontWeight.bold),
            //   ),
            //   // bottom: PreferredSize(
            //   //   child: HomeSearchBar(),
            //   //   preferredSize: Size.fromHeight(5),
            //   // ),
            // ),
            // body: Container(
            //   child: Column(
            //     children: [Container(child: Text(
            //           "Giải đấu chào mào",
            //           textAlign: TextAlign.center,
            //           style: TextStyle(
            //             fontSize: 40,
            //             fontWeight: FontWeight.bold,
            //           ),
            //         ),)],
            //   ),
            // ),
            body: Container(
              child: Stack(
                fit: StackFit.loose,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    width: 450,
                    child: Text(
                      "Giải đấu chào mào",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 120),
                    child: HomeSearchBar(),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: HomeTabView(),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: CustomBottombar(),
          ),
        ),
      ),
    );
    // });
  }
}
