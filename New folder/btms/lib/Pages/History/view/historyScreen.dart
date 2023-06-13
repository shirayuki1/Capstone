import 'package:btms/Pages/History/controller/history_controller.dart';
import 'package:btms/Widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HistoryScreen extends GetView<HistoryController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Size screenSize = MediaQuery.of(context).size;
    // return Obx(() {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Text('Count: ${controller.count.value}'),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottombar(),
    );
    // });
  }
}
