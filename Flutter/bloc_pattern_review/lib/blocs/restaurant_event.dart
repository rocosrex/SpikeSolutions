import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'package:bloc_pattern_review/models/restaurant.dart';

@immutable
abstract class RestaurantEvent extends Equatable {}

class ListRestaurantsEvent extends RestaurantEvent {
  @override
  List<Object> get props => [];
}

class CreateRestaurantEvent extends RestaurantEvent {
  final String title;

  CreateRestaurantEvent({
    required this.title,
  });

  @override
  List<Object> get props => [this.title];
}

class DeleteRestaurantEvent extends RestaurantEvent {
  final Restaurant restaurant;

  DeleteRestaurantEvent({
    required this.restaurant,
  });

  @override
  List<Object> get props => [this.restaurant];
}
