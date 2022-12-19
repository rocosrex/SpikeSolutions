
import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant.freezed.dart';
part 'restaurant.g.dart';

enum VisitKind { interestVisit, noReVisit, willVisit }

@freezed
class Restaurant with _$Restaurant {
  factory Restaurant({
    required int id,
    required String name,
    required String address,
    required String phoneNo,
    required String homePage,
    required String kindOf,
    required double lat,
    required double lng,
    required String subject,
    required VisitKind visitKind,
    required String userId,
  }) = _Restaurant;

factory Restaurant.fromJson(Map<String, dynamic> json) => _$RestaurantFromJson(json);
}

