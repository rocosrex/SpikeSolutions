import '../models/mrRestaurant.dart';

/// GET - ListmrRestaurant
/// POST - CreatemrRestaurant
/// DELETE - DeletemrRestaurant
class mrRestaurantRepository {
  Future<List<Map<String, dynamic>>> listmrRestaurant() async {
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

  Future<Map<String, dynamic>> createmrRestaurant(mrRestaurant mrrestaurant) async {
    /// body - request - response - return
    await Future.delayed(Duration(seconds: 1));

    return mrrestaurant.toJson();
  }

  Future<Map<String, dynamic>> deletemrRestaurant(mrRestaurant mrrestaurant) async {
    await Future.delayed(Duration(seconds: 1));

    return mrrestaurant.toJson();
  }
}
