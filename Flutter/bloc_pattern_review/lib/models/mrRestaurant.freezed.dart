// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mrRestaurant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

mrRestaurant _$mrRestaurantFromJson(Map<String, dynamic> json) {
  return _mrRestaurant.fromJson(json);
}

/// @nodoc
mixin _$mrRestaurant {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get phoneNo => throw _privateConstructorUsedError;
  String get homePage => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;
  bool get reVisit => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $mrRestaurantCopyWith<mrRestaurant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $mrRestaurantCopyWith<$Res> {
  factory $mrRestaurantCopyWith(
          mrRestaurant value, $Res Function(mrRestaurant) then) =
      _$mrRestaurantCopyWithImpl<$Res, mrRestaurant>;
  @useResult
  $Res call(
      {int id,
      String name,
      String address,
      String phoneNo,
      String homePage,
      double lat,
      double lng,
      bool reVisit,
      String userId});
}

/// @nodoc
class _$mrRestaurantCopyWithImpl<$Res, $Val extends mrRestaurant>
    implements $mrRestaurantCopyWith<$Res> {
  _$mrRestaurantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
    Object? phoneNo = null,
    Object? homePage = null,
    Object? lat = null,
    Object? lng = null,
    Object? reVisit = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNo: null == phoneNo
          ? _value.phoneNo
          : phoneNo // ignore: cast_nullable_to_non_nullable
              as String,
      homePage: null == homePage
          ? _value.homePage
          : homePage // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      reVisit: null == reVisit
          ? _value.reVisit
          : reVisit // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_mrRestaurantCopyWith<$Res>
    implements $mrRestaurantCopyWith<$Res> {
  factory _$$_mrRestaurantCopyWith(
          _$_mrRestaurant value, $Res Function(_$_mrRestaurant) then) =
      __$$_mrRestaurantCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String address,
      String phoneNo,
      String homePage,
      double lat,
      double lng,
      bool reVisit,
      String userId});
}

/// @nodoc
class __$$_mrRestaurantCopyWithImpl<$Res>
    extends _$mrRestaurantCopyWithImpl<$Res, _$_mrRestaurant>
    implements _$$_mrRestaurantCopyWith<$Res> {
  __$$_mrRestaurantCopyWithImpl(
      _$_mrRestaurant _value, $Res Function(_$_mrRestaurant) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
    Object? phoneNo = null,
    Object? homePage = null,
    Object? lat = null,
    Object? lng = null,
    Object? reVisit = null,
    Object? userId = null,
  }) {
    return _then(_$_mrRestaurant(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNo: null == phoneNo
          ? _value.phoneNo
          : phoneNo // ignore: cast_nullable_to_non_nullable
              as String,
      homePage: null == homePage
          ? _value.homePage
          : homePage // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      reVisit: null == reVisit
          ? _value.reVisit
          : reVisit // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_mrRestaurant implements _mrRestaurant {
  _$_mrRestaurant(
      {required this.id,
      required this.name,
      required this.address,
      required this.phoneNo,
      required this.homePage,
      required this.lat,
      required this.lng,
      required this.reVisit,
      required this.userId});

  factory _$_mrRestaurant.fromJson(Map<String, dynamic> json) =>
      _$$_mrRestaurantFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String address;
  @override
  final String phoneNo;
  @override
  final String homePage;
  @override
  final double lat;
  @override
  final double lng;
  @override
  final bool reVisit;
  @override
  final String userId;

  @override
  String toString() {
    return 'mrRestaurant(id: $id, name: $name, address: $address, phoneNo: $phoneNo, homePage: $homePage, lat: $lat, lng: $lng, reVisit: $reVisit, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_mrRestaurant &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phoneNo, phoneNo) || other.phoneNo == phoneNo) &&
            (identical(other.homePage, homePage) ||
                other.homePage == homePage) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.reVisit, reVisit) || other.reVisit == reVisit) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, address, phoneNo,
      homePage, lat, lng, reVisit, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_mrRestaurantCopyWith<_$_mrRestaurant> get copyWith =>
      __$$_mrRestaurantCopyWithImpl<_$_mrRestaurant>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_mrRestaurantToJson(
      this,
    );
  }
}

abstract class _mrRestaurant implements mrRestaurant {
  factory _mrRestaurant(
      {required final int id,
      required final String name,
      required final String address,
      required final String phoneNo,
      required final String homePage,
      required final double lat,
      required final double lng,
      required final bool reVisit,
      required final String userId}) = _$_mrRestaurant;

  factory _mrRestaurant.fromJson(Map<String, dynamic> json) =
      _$_mrRestaurant.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get address;
  @override
  String get phoneNo;
  @override
  String get homePage;
  @override
  double get lat;
  @override
  double get lng;
  @override
  bool get reVisit;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$_mrRestaurantCopyWith<_$_mrRestaurant> get copyWith =>
      throw _privateConstructorUsedError;
}
