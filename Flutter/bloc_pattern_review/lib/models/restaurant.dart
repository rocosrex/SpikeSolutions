import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant.freezed.dart';
part 'restaurant.g.dart';

@freezed
class Restaurant with _$Restaurant {
  factory Restaurant({
    required int id,
    required String name,
    required String address,
    required String phoneNo,
    required String homePage,
    required double lat,
    required double lng,
    required bool reVisit,
    required String userId,
  }) = _Restaurant;
factory Restaurant.fromJson(Map<String, dynamic> json) => _$RestaurantFromJson(json);
}
