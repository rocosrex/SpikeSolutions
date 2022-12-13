// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Restaurant _$$_RestaurantFromJson(Map<String, dynamic> json) =>
    _$_Restaurant(
      id: json['id'] as int,
      name: json['name'] as String,
      address: json['address'] as String,
      phoneNo: json['phoneNo'] as String,
      homePage: json['homePage'] as String,
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      reVisit: json['reVisit'] as bool,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$_RestaurantToJson(_$_Restaurant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'phoneNo': instance.phoneNo,
      'homePage': instance.homePage,
      'lat': instance.lat,
      'lng': instance.lng,
      'reVisit': instance.reVisit,
      'userId': instance.userId,
    };
