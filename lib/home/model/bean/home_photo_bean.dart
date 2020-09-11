import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'home_photo_bean.freezed.dart';

part 'home_photo_bean.g.dart';

@freezed
abstract class HomePhotoBean with _$HomePhotoBean {
  factory HomePhotoBean({
    @required int albumId,
    @required int id,
    @required String title,
    @required String url,
    @required String thumbnailUrl,
  }) = _HomePhotoBean;

  factory HomePhotoBean.fromJson(Map<String, dynamic> json) {
    return _$HomePhotoBeanFromJson(json);
  }
}
