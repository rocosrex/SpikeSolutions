import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'package:bloc_pattern_review/models/mrRestaurant.dart';

@immutable
abstract class mrRestaurantState extends Equatable {}

class Empty extends mrRestaurantState {
  @override
  List<Object> get props => [];
}

class Loading extends mrRestaurantState {
  @override
  List<Object> get props => [];
}

class Error extends mrRestaurantState {
  final String message;

  Error({
    required this.message,
  });

  @override
  List<Object> get props => [this.message];
}

class Loaded extends mrRestaurantState {
  final List<mrRestaurant> mrrestaurants;

  Loaded({
    required this.mrrestaurants,
  });

  @override
  List<Object> get props => [this.mrrestaurants];
}
