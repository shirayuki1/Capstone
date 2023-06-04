import 'package:btms/Widgets/custom_bottom_bar.dart';
import 'package:get/get.dart';

import '../../Services/GlobalStates/share_states.dart';

class AppInit {
  static void init() {
    initMobileAppServices();
  }

  /// Init mobile app services
  static void initMobileAppServices() {
    // Get image from file system
    // Get.lazyPut<ImagePicker>(() => ImagePicker(), fenix: true);
    // Shared states between widget
    Get.lazyPut<SharedStates>(() => SharedStates(), fenix: true);
    // Bottom bar
    Get.lazyPut<CustomBottombarController>(
      () => CustomBottombarController(),
      fenix: true,
    );
  }

  /// Init api services
  // static void initApiServices() {
  //   // Use for calling api
  //   Get.lazyPut<IApiHelper>(() => ApiHelper(), fenix: true);
  //   // Calling api at account service
  //   Get.lazyPut<IAccountService>(() => AccountService(), fenix: true);
  //   // Calling api at edge service
  //   Get.lazyPut<IEdgeService>(() => EdgeService(), fenix: true);
  //   // Calling api at location service
  //   Get.lazyPut<ILocationService>(() => LocationService(), fenix: true);
  //   // Calling api at store service
  //   Get.lazyPut<IStoreService>(() => StoreService(), fenix: true);
  //   // Calling api at product service
  //   Get.lazyPut<IProductService>(() => ProductService(), fenix: true);
  //   // Calling api at coupon service
  //   Get.lazyPut<ICouponService>(() => CouponService(), fenix: true);
  //   // Calling api at FloorPlan service
  //   Get.lazyPut<IFloorPlanService>(() => FloorPlanService(), fenix: true);
  //   // Calling api at couponInUse service
  //   Get.lazyPut<ICouponInUseService>(() => CouponInUseService(), fenix: true);
  //   // Calling api at ProductCategory service
  //   Get.lazyPut<IProductCategoryService>(() => ProductCategoryService(),
  //       fenix: true);
  //   // Calling api at Building service
  //   Get.lazyPut<IBuildingService>(() => BuildingService(), fenix: true);
  //   // Calling api at ShoppingList service
  //   Get.lazyPut<IShoppingListService>(() => ShoppingListService(), fenix: true);
  //   // Calling api at ShoppingItem service
  //   Get.lazyPut<IShoppingItemService>(() => ShoppingItemService(), fenix: true);
  // }
}
