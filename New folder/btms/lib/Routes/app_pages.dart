import 'package:btms/Pages/BirdInfoCheckin/binding/bird_information_checkin_binding.dart';
import 'package:btms/Pages/BirdInfoCheckin/view/bird_information_checkin_screen.dart';
import 'package:btms/Pages/BirdInformation/binding/bird_information_binding.dart';
import 'package:btms/Pages/BirdInformation/view/bird_information_screen.dart';
import 'package:btms/Pages/BirdList/binding/bird_binding.dart';
import 'package:btms/Pages/BirdList/view/bird_screen.dart';
import 'package:btms/Pages/CheckinList/bindding/checkin_binding.dart';
import 'package:btms/Pages/CheckinList/view/checkin_view.dart';
import 'package:btms/Pages/ChooseBird/binding/choose_bird_binding.dart';
import 'package:btms/Pages/ChooseBird/view/choose_bird_screen.dart';
import 'package:btms/Pages/CreateBird/binding/create_bird_binding.dart';
import 'package:btms/Pages/CreateBird/view/create_bird_view.dart';
import 'package:btms/Pages/EditProfile/binding/edit_profile_binding.dart';
import 'package:btms/Pages/EditProfile/view/edit_profile_screen.dart';
import 'package:btms/Pages/ForgotPassword/binding/forgotPassBinding.dart';
import 'package:btms/Pages/ForgotPassword/view/forgotPassScreen.dart';
import 'package:btms/Pages/History/binding/history_binding.dart';
import 'package:btms/Pages/History/view/historyScreen.dart';
import 'package:btms/Pages/ResultBird/binding/result_bird_binding.dart';
import 'package:btms/Pages/ResultBird/view/result_bird_screen.dart';
import 'package:btms/Pages/ResultInfo/binding/result_info_binding.dart';
import 'package:btms/Pages/ResultInfo/view/result_info_screen.dart';
import 'package:btms/Pages/Setting/binding/setting_binding.dart';
import 'package:btms/Pages/Setting/view/setting_screen.dart';
import 'package:btms/Pages/TournamentDetailComingSoon/binding/coming_tournament_detail_binding.dart';
import 'package:btms/Pages/TournamentDetailComingSoon/view/coming_tournament_detail_view.dart';
import 'package:btms/Pages/TournamentDetailOngoing/binding/ongoing_tournament_detail_binding.dart';
import 'package:btms/Pages/TournamentDetailOngoing/view/ongoing_tournament_detail_view.dart';
import 'package:btms/Pages/UpdateBird/binding/update_bird_binding.dart';
import 'package:btms/Pages/UpdateBird/view/update_bird_view.dart';
import 'package:btms/Routes/routes.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import '../Pages/Account/bindding/account_bindding.dart';
import '../Pages/Account/view/account_view.dart';
import '../Pages/Home/binding/home_binding.dart';
import '../Pages/Home/view/homeScreen.dart';
import '../Pages/Login/binding/login_binding.dart';
import '../Pages/Login/view/login_page.dart';
import '../Pages/SignUp/binding/signUp_binding.dart';
import '../Pages/SignUp/view/signUpScreen.dart';
import '../Pages/TournamentJoin/bindding/tournament_bindding.dart';
import '../Pages/TournamentJoin/view/tournament_view.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.login,
      page: () => LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.signUp,
      page: () => SignUpScreen(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: Routes.homeScreen,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.history,
      page: () => HistoryScreen(),
      binding: HistoryBinding(),
    ),
    GetPage(
      name: Routes.tournamentScreen,
      page: () => TournamentScreen(),
      binding: TournamentBinding(),
    ),
    GetPage(
      name: Routes.account,
      page: () => AccountScreen(),
      binding: AccountBinding(),
    ),
    GetPage(
      name: Routes.forgotPass,
      page: () => ForgotPasswordScreen(),
      binding: ForgotPassBinding(),
    ),
    GetPage(
      name: Routes.setting,
      page: () => SettingScreen(),
      binding: SettingBinding(),
    ),
    GetPage(
      name: Routes.listBird,
      page: () => BirdScreen(),
      binding: BirdBinding(),
    ),
    GetPage(
      name: Routes.birdInfo,
      page: () => BirdInformationScreen(),
      binding: BirdInformationBinding(),
    ),
    GetPage(
      name: Routes.editProfile,
      page: () => EditProfileScreen(),
      binding: EditProfileBinding(),
    ),
    GetPage(
      name: Routes.createBird,
      page: () => CreateBirdScreen(),
      binding: CreateBirdBinding(),
    ),
    GetPage(
      name: Routes.updateBird,
      page: () => UpdateBirdScreen(),
      binding: UpdateBirdBinding(),
    ),
    GetPage(
      name: Routes.comingTourDetail,
      page: () => ComingTournamentDetailScreen(),
      binding: ComingTournamentDetailBinding(),
    ),
    GetPage(
      name: Routes.goingTourDetail,
      page: () => OngoingTournamentDetailScreen(),
      binding: OngoingTournamentDetailBinding(),
    ),
    GetPage(
      name: Routes.chooseBird,
      page: () => ChooseBirdScreen(),
      binding: ChooseBirdBinding(),
    ),
    GetPage(
      name: Routes.resultBird,
      page: () => ResultBirdScreen(),
      binding: ResultBirdBinding(),
    ),
    GetPage(
      name: Routes.resultInfoBird,
      page: () => ResultInfoScreen(),
      binding: ResultInfoBinding(),
    ),
    GetPage(
      name: Routes.checkinList,
      page: () => CheckinScreen(),
      binding: CheckinBinding(),
    ),
    GetPage(
      name: Routes.checkinBird,
      page: () => BirdInformationCheckinScreen(),
      binding: BirdInformationCheckinBinding(),
    ),
  ];
}
