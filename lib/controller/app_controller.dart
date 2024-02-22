import 'package:get/get.dart';

class AppController extends GetxController {
  RxInt selectedSize = 2.obs;
  RxInt quantity = 1.obs;

  void reset() {
    selectedSize = 2.obs;
    quantity = 1.obs;
  }
}
