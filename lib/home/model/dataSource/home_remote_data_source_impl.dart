import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_architecture_demo/common/remote/dio_manager.dart';
import 'package:flutter_architecture_demo/home/model/bean/home_photos_bean.dart';
import 'package:flutter_architecture_demo/home/model/dataSource/home_remote_data_source.dart';

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  HomeRemoteDataSourceImpl({@required DioManager dioManager})
      : _dioManager = dioManager;

  final DioManager _dioManager;

  @override
  Future<HomePhotosBean> getNews() async {
    return _dioManager
        .get<List<dynamic>>('/photos',
            options: buildCacheOptions(const Duration(hours: 1)))
        .then((response) {
      Map<String, dynamic> map = new Map<String, dynamic>();
      map['list'] = response.data;
      return HomePhotosBean.fromJson(map);
    });
  }
}
