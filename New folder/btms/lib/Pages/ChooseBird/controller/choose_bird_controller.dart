import 'package:btms/Data/bird.dart';
import 'package:get/get.dart';

class ChooseBirdController extends GetxController {
  // List<bool> selected = List.generate(100, (i) => false).obs;
  List<Bird> list = [];

  @override
  void onInit() {
    super.onInit();
    List.generate(
        20,
        (index) => list
            .add(Bird(name: "Chim chào mào $index", isSelected: false.obs)));
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
