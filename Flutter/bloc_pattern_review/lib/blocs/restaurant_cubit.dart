import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_pattern_review/blocs/restaurant_state.dart';
import 'package:bloc_pattern_review/models/restaurant.dart';
import 'package:bloc_pattern_review/repositories/restaurant_repository.dart';

class RestaurantCubit extends Cubit<RestaurantState> {
  final RestaurantRepository repository;

  RestaurantCubit({required this.repository}) : super(Empty());

  listRestaurant() async {
    try {
      emit(Loading());

      final resp = await this.repository.listRestaurant();

      final restaurants = resp
          .map<Restaurant>(
            (e) => Restaurant.fromJson(e),
          )
          .toList();

      emit(Loaded(restaurants: restaurants));
    } catch (e) {
      emit(Error(message: e.toString()));
    }
  }

  createRestaurant(String title) async {
    try {
      if (state is Loaded) {
        final parsedState = (state as Loaded);

        //To create object in here
        //for example
        //final newRestaurant = Restaurant(
        //  id: parsedState.restaurants.length == 0
        //      ? 1
        //      : parsedState.restaurants[parsedState.restaurants.length - 1].id + 1,
        //  title: title,
        //  createdAt: DateTime.now().toString(),
        //);
        final newRestaurant = Restaurant(
          id: 0,
          name: 'the string',
          address: 'the string',
          phoneNo: 'the string',
          homePage: 'the string',
          kindOf: 'the string',
          lat: 0.0,
          lng: 0.0,
          subject: 'the string',
          visitKind: VisitKind.interestVisit,
          userId: 'the string',
        );

        final prevRestaurants = [
          ...parsedState.restaurants,
        ];

        final newRestaurants = [
          ...prevRestaurants,
          newRestaurant,
        ];

        emit(Loaded(restaurants: newRestaurants));

        final resp = await this.repository.createRestaurant(newRestaurant);

        emit(
          Loaded(
            restaurants: [
              ...prevRestaurants,
              Restaurant.fromJson(resp),
            ],
          ),
        );
      }
    } catch (e) {
      emit(Error(message: e.toString()));
    }
  }

  deleteRestaurant(Restaurant restaurant) async {
    try {
      if (state is Loaded) {
        final newRestaurants = (state as Loaded)
            .restaurants
            .where((item) => item.id != restaurant.id)
            .toList();

        emit(Loaded(restaurants: newRestaurants));

        await repository.deleteRestaurant(restaurant);
      }
    } catch (e) {
      emit(Error(message: e.toString()));
    }
  }
}
