// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'home_photo_bean.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
HomePhotoBean _$HomePhotoBeanFromJson(Map<String, dynamic> json) {
  return _HomePhotoBean.fromJson(json);
}

class _$HomePhotoBeanTearOff {
  const _$HomePhotoBeanTearOff();

// ignore: unused_element
  _HomePhotoBean call(
      {@required int albumId,
      @required int id,
      @required String title,
      @required String url,
      @required String thumbnailUrl}) {
    return _HomePhotoBean(
      albumId: albumId,
      id: id,
      title: title,
      url: url,
      thumbnailUrl: thumbnailUrl,
    );
  }
}

// ignore: unused_element
const $HomePhotoBean = _$HomePhotoBeanTearOff();

mixin _$HomePhotoBean {
  int get albumId;
  int get id;
  String get title;
  String get url;
  String get thumbnailUrl;

  Map<String, dynamic> toJson();
  $HomePhotoBeanCopyWith<HomePhotoBean> get copyWith;
}

abstract class $HomePhotoBeanCopyWith<$Res> {
  factory $HomePhotoBeanCopyWith(
          HomePhotoBean value, $Res Function(HomePhotoBean) then) =
      _$HomePhotoBeanCopyWithImpl<$Res>;
  $Res call(
      {int albumId, int id, String title, String url, String thumbnailUrl});
}

class _$HomePhotoBeanCopyWithImpl<$Res>
    implements $HomePhotoBeanCopyWith<$Res> {
  _$HomePhotoBeanCopyWithImpl(this._value, this._then);

  final HomePhotoBean _value;
  // ignore: unused_field
  final $Res Function(HomePhotoBean) _then;

  @override
  $Res call({
    Object albumId = freezed,
    Object id = freezed,
    Object title = freezed,
    Object url = freezed,
    Object thumbnailUrl = freezed,
  }) {
    return _then(_value.copyWith(
      albumId: albumId == freezed ? _value.albumId : albumId as int,
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      url: url == freezed ? _value.url : url as String,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl as String,
    ));
  }
}

abstract class _$HomePhotoBeanCopyWith<$Res>
    implements $HomePhotoBeanCopyWith<$Res> {
  factory _$HomePhotoBeanCopyWith(
          _HomePhotoBean value, $Res Function(_HomePhotoBean) then) =
      __$HomePhotoBeanCopyWithImpl<$Res>;
  @override
  $Res call(
      {int albumId, int id, String title, String url, String thumbnailUrl});
}

class __$HomePhotoBeanCopyWithImpl<$Res>
    extends _$HomePhotoBeanCopyWithImpl<$Res>
    implements _$HomePhotoBeanCopyWith<$Res> {
  __$HomePhotoBeanCopyWithImpl(
      _HomePhotoBean _value, $Res Function(_HomePhotoBean) _then)
      : super(_value, (v) => _then(v as _HomePhotoBean));

  @override
  _HomePhotoBean get _value => super._value as _HomePhotoBean;

  @override
  $Res call({
    Object albumId = freezed,
    Object id = freezed,
    Object title = freezed,
    Object url = freezed,
    Object thumbnailUrl = freezed,
  }) {
    return _then(_HomePhotoBean(
      albumId: albumId == freezed ? _value.albumId : albumId as int,
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      url: url == freezed ? _value.url : url as String,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl as String,
    ));
  }
}

@JsonSerializable()
class _$_HomePhotoBean with DiagnosticableTreeMixin implements _HomePhotoBean {
  _$_HomePhotoBean(
      {@required this.albumId,
      @required this.id,
      @required this.title,
      @required this.url,
      @required this.thumbnailUrl})
      : assert(albumId != null),
        assert(id != null),
        assert(title != null),
        assert(url != null),
        assert(thumbnailUrl != null);

  factory _$_HomePhotoBean.fromJson(Map<String, dynamic> json) =>
      _$_$_HomePhotoBeanFromJson(json);

  @override
  final int albumId;
  @override
  final int id;
  @override
  final String title;
  @override
  final String url;
  @override
  final String thumbnailUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomePhotoBean(albumId: $albumId, id: $id, title: $title, url: $url, thumbnailUrl: $thumbnailUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomePhotoBean'))
      ..add(DiagnosticsProperty('albumId', albumId))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('thumbnailUrl', thumbnailUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomePhotoBean &&
            (identical(other.albumId, albumId) ||
                const DeepCollectionEquality()
                    .equals(other.albumId, albumId)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnailUrl, thumbnailUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(albumId) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(thumbnailUrl);

  @override
  _$HomePhotoBeanCopyWith<_HomePhotoBean> get copyWith =>
      __$HomePhotoBeanCopyWithImpl<_HomePhotoBean>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HomePhotoBeanToJson(this);
  }
}

abstract class _HomePhotoBean implements HomePhotoBean {
  factory _HomePhotoBean(
      {@required int albumId,
      @required int id,
      @required String title,
      @required String url,
      @required String thumbnailUrl}) = _$_HomePhotoBean;

  factory _HomePhotoBean.fromJson(Map<String, dynamic> json) =
      _$_HomePhotoBean.fromJson;

  @override
  int get albumId;
  @override
  int get id;
  @override
  String get title;
  @override
  String get url;
  @override
  String get thumbnailUrl;
  @override
  _$HomePhotoBeanCopyWith<_HomePhotoBean> get copyWith;
}
