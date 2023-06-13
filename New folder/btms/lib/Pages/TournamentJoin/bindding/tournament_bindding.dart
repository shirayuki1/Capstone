import 'package:btms/Pages/TournamentJoin/controller/tournament_controller.dart';
import 'package:get/get.dart';

class TournamentBinding extends Bindings {
  @override
  void dependencies() {
    // Bind Building Details controller
    Get.lazyPut<TournamentController>(() => TournamentController());
  }
}
