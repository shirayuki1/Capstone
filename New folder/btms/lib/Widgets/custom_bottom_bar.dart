import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import '../Common/constants.dart';
import '../Routes/routes.dart';
import '../Services/GlobalStates/share_states.dart';

class CustomBottombarController extends GetxController {
  final SharedStates states = Get.find();
  Future<void> changeSelected(int index) async {
    Get.offAndToNamed(items[index].route);
    states.bottomBarSelectedIndex.value = index;
  }
}

class BottomItem extends SalomonBottomBarItem {
  final String route;
  final String text;
  final Icon icon;
  final Color color;

  BottomItem({
    required this.route,
    required this.text,
    required this.icon,
    this.color = AppColors.primary,
  }) : super(
          title: Text(text),
          icon: icon,
          selectedColor: color,
        );
}

final items = [
  BottomItem(
    text: 'Home',
    icon: Icon(Icons.home),
    route: Routes.homeScreen,
  ),
  BottomItem(
    text: 'Touranament',
    icon: Icon(Icons.storage_sharp),
    route: Routes.tournamentScreen,
  ),
  BottomItem(
    text: 'History',
    icon: Icon(Icons.work_history_sharp),
    route: Routes.history,
  ),
  BottomItem(
    text: 'Account',
    icon: Icon(Icons.manage_accounts_rounded),
    route: Routes.setting,
  ),
];

class CustomBottombar extends GetView<CustomBottombarController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade300),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 4.0,
              offset: Offset(-2, 0),
            ),
          ],
        ),
        child: SalomonBottomBar(
          currentIndex: controller.states.bottomBarSelectedIndex.value,
          //currentIndex: bottomBarSelectedIndex.value,
          onTap: (i) => controller.changeSelected(i),
          items: items,
        ),
      );
    });
  }
}
