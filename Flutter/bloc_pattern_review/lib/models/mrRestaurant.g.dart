// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mrRestaurant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_mrRestaurant _$$_mrRestaurantFromJson(Map<String, dynamic> json) =>
    _$_mrRestaurant(
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

Map<String, dynamic> _$$_mrRestaurantToJson(_$_mrRestaurant instance) =>
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
