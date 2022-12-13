import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'package:bloc_pattern_review/models/restaurant.dart';

@immutable
abstract class RestaurantState extends Equatable {}

class Empty extends RestaurantState {
  @override
  List<Object> get props => [];
}

class Loading extends RestaurantState {
  @override
  List<Object> get props => [];
}

class Error extends RestaurantState {
  final String message;

  Error({
    required this.message,
  });

  @override
  List<Object> get props => [this.message];
}

class Loaded extends RestaurantState {
  final List<Restaurant> restaurants;

  Loaded({
    required this.restaurants,
  });

  @override
  List<Object> get props => [this.restaurants];
}
