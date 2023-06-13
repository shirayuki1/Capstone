import 'package:btms/Pages/TournamentDetailOngoing/controller/ongoing_tournament_detail_controller.dart';
import 'package:get/get.dart';

class OngoingTournamentDetailBinding extends Bindings {
  @override
  void dependencies() {
    // Bind Building Details controller
    Get.lazyPut<OngoingTournamentDetailController>(
        () => OngoingTournamentDetailController());
  }
}
