import 'package:freezed_annotation/freezed_annotation.dart';

part 'mrRestaurant.freezed.dart';
part 'mrRestaurant.g.dart';

@freezed
class mrRestaurant with _$mrRestaurant {
  factory mrRestaurant({
    required int id,
    required String name,
    required String address,
    required String phoneNo,
    required String homePage,
    required double lat,
    required double lng,
    required bool reVisit,
    required String userId,
  }) = _mrRestaurant;
factory mrRestaurant.fromJson(Map<String, dynamic> json) => _$mrRestaurantFromJson(json);
}
