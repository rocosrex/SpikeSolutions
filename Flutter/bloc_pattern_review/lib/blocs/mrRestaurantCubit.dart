import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_pattern_review/blocs/mrRestaurantState.dart';
import 'package:bloc_pattern_review/models/mrRestaurant.dart';
import 'package:bloc_pattern_review/repositories/mrRestaurantRepository.dart';

class mrRestaurantCubit extends Cubit<mrRestaurantState> {
  final mrRestaurantRepository repository;

  mrRestaurantCubit({required this.repository}) : super(Empty());

  listmrRestaurant() async {
    try {
      emit(Loading());

      final resp = await this.repository.listmrRestaurant();

      final mrrestaurants = resp
          .map<mrRestaurant>(
            (e) => mrRestaurant.fromJson(e),
          )
          .toList();

      emit(Loaded(mrrestaurants: mrrestaurants));
    } catch (e) {
      emit(Error(message: e.toString()));
    }
  }

  createmrRestaurant(String title) async {
    try {
      if (state is Loaded) {
        final parsedState = (state as Loaded);

        //To create object in here
        //for example
        //final newmrRestaurant = mrRestaurant(
        //  id: parsedState.mrrestaurants.length == 0
        //      ? 1
        //      : parsedState.mrrestaurants[parsedState.mrrestaurants.length - 1].id + 1,
        //  title: title,
        //  createdAt: DateTime.now().toString(),
        //);
        final newmrRestaurant = mrRestaurant(
          id: 0,
          name: 'the string',
          address: 'the string',
          phoneNo: 'the string',
          homePage: 'the string',
          lat: 0.0,
          lng: 0.0,
          reVisit: true,
          userId: 'the string',
        );

        final prevmrRestaurants = [
          ...parsedState.mrrestaurants,
        ];

        final newmrRestaurants = [
          ...prevmrRestaurants,
          newmrRestaurant,
        ];

        emit(Loaded(mrrestaurants: newmrRestaurants));

        final resp = await this.repository.createmrRestaurant(newmrRestaurant);

        emit(
          Loaded(
            mrrestaurants: [
              ...prevmrRestaurants,
              mrRestaurant.fromJson(resp),
            ],
          ),
        );
      }
    } catch (e) {
      emit(Error(message: e.toString()));
    }
  }

  deletemrRestaurant(mrRestaurant mrrestaurant) async {
    try {
      if (state is Loaded) {
        final newmrRestaurants = (state as Loaded)
            .mrrestaurants
            .where((item) => item.id != mrrestaurant.id)
            .toList();

        emit(Loaded(mrrestaurants: newmrRestaurants));

        await repository.deletemrRestaurant(mrrestaurant);
      }
    } catch (e) {
      emit(Error(message: e.toString()));
    }
  }
}
