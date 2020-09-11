import 'package:flutter_architecture_demo/home/model/bean/home_photo_bean.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'home_photos_bean.freezed.dart';

part 'home_photos_bean.g.dart';

@freezed
abstract class HomePhotosBean with _$HomePhotosBean {
  factory HomePhotosBean({@required List<HomePhotoBean> list}) =
      _HomePhotosBean;

  factory HomePhotosBean.fromJson(Map<String, dynamic> json) {
    return _$HomePhotosBeanFromJson(json);
  }
}
