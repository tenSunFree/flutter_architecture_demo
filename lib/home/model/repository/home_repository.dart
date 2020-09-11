import 'package:flutter_architecture_demo/home/model/bean/home_photos_bean.dart';

abstract class HomeRepository {
  Future<HomePhotosBean> getNews();
}
