import 'package:btms/Pages/Payment/controller/payment_controller.dart';
import 'package:get/get.dart';

class PaymentBinding extends Bindings {
  @override
  void dependencies() {
    // Bind Building Details controller
    Get.lazyPut<PaymentController>(() => PaymentController());
  }
}
