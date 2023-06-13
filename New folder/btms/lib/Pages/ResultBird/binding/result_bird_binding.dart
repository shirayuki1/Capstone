import 'package:btms/Pages/ResultBird/controller/result_bird_controller.dart';
import 'package:get/get.dart';

class ResultBirdBinding extends Bindings {
  @override
  void dependencies() {
    // Bind Building Details controller
    Get.lazyPut<ResultBirdController>(() => ResultBirdController());
  }
}
