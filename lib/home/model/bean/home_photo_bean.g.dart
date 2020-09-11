// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_photo_bean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomePhotoBean _$_$_HomePhotoBeanFromJson(Map<String, dynamic> json) {
  return _$_HomePhotoBean(
    albumId: json['albumId'] as int,
    id: json['id'] as int,
    title: json['title'] as String,
    url: json['url'] as String,
    thumbnailUrl: json['thumbnailUrl'] as String,
  );
}

Map<String, dynamic> _$_$_HomePhotoBeanToJson(_$_HomePhotoBean instance) =>
    <String, dynamic>{
      'albumId': instance.albumId,
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'thumbnailUrl': instance.thumbnailUrl,
    };
