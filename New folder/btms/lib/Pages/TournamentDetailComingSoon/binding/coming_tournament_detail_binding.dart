import 'package:btms/Pages/TournamentDetailComingSoon/controller/coming_tournament_detail_controller.dart';
import 'package:get/get.dart';

class ComingTournamentDetailBinding extends Bindings {
  @override
  void dependencies() {
    // Bind Building Details controller
    Get.lazyPut<ComingTournamentDetailController>(
        () => ComingTournamentDetailController());
  }
}
