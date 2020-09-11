// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_photos_bean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomePhotosBean _$_$_HomePhotosBeanFromJson(Map<String, dynamic> json) {
  return _$_HomePhotosBean(
    list: (json['list'] as List)
        ?.map((e) => e == null
            ? null
            : HomePhotoBean.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_HomePhotosBeanToJson(_$_HomePhotosBean instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
