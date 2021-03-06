import 'package:commute/controller/controller.dart';
import 'package:commute/data/apis/api.dart';
import 'package:commute/data/repository/user_repository.dart';
import 'package:commute/url/url.dart';
import 'package:get/get.dart';

class MainBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<AController>(() => AController(userRepository: UserRepository(httpApi: HttpApi(URL))));
  }
}