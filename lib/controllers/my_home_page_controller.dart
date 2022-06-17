import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../models/RandomUser.dart';

class MyHomePageController extends GetxController {
  RxObjectMixin<RandomUser> randomUserData = RandomUser().obs;

  @override
  void onInit() {
    _getRandomUserData();
    super.onInit();
  }

  void _getRandomUserData() async {
    Dio _dio = Dio();
    var myUrl = "https://randomuser.me/api/?result=2";

    try {
      var response = await _dio.get(myUrl);

      if (response.statusCode == 200) {
        var _data = response.data;
        randomUserData.value = RandomUser.fromJson(_data);
      } else {}
    } catch (e) {
      print(e);
    }
  }
}
