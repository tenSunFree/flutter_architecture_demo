// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'home_photos_bean.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
HomePhotosBean _$HomePhotosBeanFromJson(Map<String, dynamic> json) {
  return _HomePhotosBean.fromJson(json);
}

class _$HomePhotosBeanTearOff {
  const _$HomePhotosBeanTearOff();

// ignore: unused_element
  _HomePhotosBean call({@required List<HomePhotoBean> list}) {
    return _HomePhotosBean(
      list: list,
    );
  }
}

// ignore: unused_element
const $HomePhotosBean = _$HomePhotosBeanTearOff();

mixin _$HomePhotosBean {
  List<HomePhotoBean> get list;

  Map<String, dynamic> toJson();
  $HomePhotosBeanCopyWith<HomePhotosBean> get copyWith;
}

abstract class $HomePhotosBeanCopyWith<$Res> {
  factory $HomePhotosBeanCopyWith(
          HomePhotosBean value, $Res Function(HomePhotosBean) then) =
      _$HomePhotosBeanCopyWithImpl<$Res>;
  $Res call({List<HomePhotoBean> list});
}

class _$HomePhotosBeanCopyWithImpl<$Res>
    implements $HomePhotosBeanCopyWith<$Res> {
  _$HomePhotosBeanCopyWithImpl(this._value, this._then);

  final HomePhotosBean _value;
  // ignore: unused_field
  final $Res Function(HomePhotosBean) _then;

  @override
  $Res call({
    Object list = freezed,
  }) {
    return _then(_value.copyWith(
      list: list == freezed ? _value.list : list as List<HomePhotoBean>,
    ));
  }
}

abstract class _$HomePhotosBeanCopyWith<$Res>
    implements $HomePhotosBeanCopyWith<$Res> {
  factory _$HomePhotosBeanCopyWith(
          _HomePhotosBean value, $Res Function(_HomePhotosBean) then) =
      __$HomePhotosBeanCopyWithImpl<$Res>;
  @override
  $Res call({List<HomePhotoBean> list});
}

class __$HomePhotosBeanCopyWithImpl<$Res>
    extends _$HomePhotosBeanCopyWithImpl<$Res>
    implements _$HomePhotosBeanCopyWith<$Res> {
  __$HomePhotosBeanCopyWithImpl(
      _HomePhotosBean _value, $Res Function(_HomePhotosBean) _then)
      : super(_value, (v) => _then(v as _HomePhotosBean));

  @override
  _HomePhotosBean get _value => super._value as _HomePhotosBean;

  @override
  $Res call({
    Object list = freezed,
  }) {
    return _then(_HomePhotosBean(
      list: list == freezed ? _value.list : list as List<HomePhotoBean>,
    ));
  }
}

@JsonSerializable()
class _$_HomePhotosBean
    with DiagnosticableTreeMixin
    implements _HomePhotosBean {
  _$_HomePhotosBean({@required this.list}) : assert(list != null);

  factory _$_HomePhotosBean.fromJson(Map<String, dynamic> json) =>
      _$_$_HomePhotosBeanFromJson(json);

  @override
  final List<HomePhotoBean> list;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomePhotosBean(list: $list)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomePhotosBean'))
      ..add(DiagnosticsProperty('list', list));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomePhotosBean &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(list);

  @override
  _$HomePhotosBeanCopyWith<_HomePhotosBean> get copyWith =>
      __$HomePhotosBeanCopyWithImpl<_HomePhotosBean>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HomePhotosBeanToJson(this);
  }
}

abstract class _HomePhotosBean implements HomePhotosBean {
  factory _HomePhotosBean({@required List<HomePhotoBean> list}) =
      _$_HomePhotosBean;

  factory _HomePhotosBean.fromJson(Map<String, dynamic> json) =
      _$_HomePhotosBean.fromJson;

  @override
  List<HomePhotoBean> get list;
  @override
  _$HomePhotosBeanCopyWith<_HomePhotosBean> get copyWith;
}
