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
      kindOf: json['kindOf'] as String,
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      subject: json['subject'] as String,
      visitKind: $enumDecode(_$VisitKindEnumMap, json['visitKind']),
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$_RestaurantToJson(_$_Restaurant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'phoneNo': instance.phoneNo,
      'homePage': instance.homePage,
      'kindOf': instance.kindOf,
      'lat': instance.lat,
      'lng': instance.lng,
      'subject': instance.subject,
      'visitKind': _$VisitKindEnumMap[instance.visitKind]!,
      'userId': instance.userId,
    };

const _$VisitKindEnumMap = {
  VisitKind.interestVisit: 'interestVisit',
  VisitKind.noReVisit: 'noReVisit',
  VisitKind.willVisit: 'willVisit',
};
