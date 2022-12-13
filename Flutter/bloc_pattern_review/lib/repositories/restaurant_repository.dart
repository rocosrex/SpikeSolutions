import '../models/restaurant.dart';

/// GET - ListRestaurant
/// POST - CreateRestaurant
/// DELETE - DeleteRestaurant
class RestaurantRepository {
  Future<List<Map<String, dynamic>>> listRestaurant() async {
    await Future.delayed(Duration(seconds: 1));

    //Delete the below codes and put your code
    return [
      {
        'id': 1,
        'title': 'Flutter 배우기',
        'createdAt': DateTime.now().toString(),
      },
      {
        'id': 2,
        'title': 'Dart 배우기',
        'createdAt': DateTime.now().toString(),
      },
    ];
  }

  Future<Map<String, dynamic>> createRestaurant(Restaurant restaurant) async {
    /// body - request - response - return
    await Future.delayed(Duration(seconds: 1));

    return restaurant.toJson();
  }

  Future<Map<String, dynamic>> deleteRestaurant(Restaurant restaurant) async {
    await Future.delayed(Duration(seconds: 1));

    return restaurant.toJson();
  }
}
