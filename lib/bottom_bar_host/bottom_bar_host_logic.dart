import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class BottomBarHostController extends GetxController {
  RxBool home = false.obs;
  RxBool bag = false.obs;
  RxBool handShake = false.obs;
  RxBool letter = false.obs;
  RxBool wallet = false.obs;
  RxBool handshake = false.obs;
  RxBool profile = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    home.value=true;
  }

  makeHome() {
    home.value = true;
    bag.value = false;
    handShake.value = false;
    letter.value = false;
    wallet.value = false;
    profile.value = false;

    update();
  }

  makeBag() {
    home.value = false;
    bag.value = true;
    handShake.value = false;
    letter.value = false;
    wallet.value = false;
    profile.value = false;
    update();
  }

  makeHandShake() {
    home.value = false;
    bag.value = false;
    handShake.value = true;
    letter.value = false;
    wallet.value = false;
    profile.value = false;
    update();
  }

  makeLetter() {
    home.value = false;
    bag.value = false;
    handShake.value = false;
    letter.value = true;
    wallet.value = false;
    profile.value = false;
    update();
  }

  makeProfile() {
    home.value = false;
    bag.value = false;
    handShake.value = false;
    letter.value = false;
    wallet.value = false;
    profile.value = true;
    update();
  }

  makeWallet() {
    home.value = false;
    bag.value = false;
    handShake.value = false;
    letter.value = false;
    wallet.value = true;
    profile.value = false;

    update();
  }
}
