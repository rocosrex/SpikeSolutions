import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'package:bloc_pattern_review/models/mrRestaurant.dart';

@immutable
abstract class mrRestaurantEvent extends Equatable {}

class ListmrRestaurantsEvent extends mrRestaurantEvent {
  @override
  List<Object> get props => [];
}

class CreatemrRestaurantEvent extends mrRestaurantEvent {
  final String title;

  CreatemrRestaurantEvent({
    required this.title,
  });

  @override
  List<Object> get props => [this.title];
}

class DeletemrRestaurantEvent extends mrRestaurantEvent {
  final mrRestaurant mrrestaurant;

  DeletemrRestaurantEvent({
    required this.mrrestaurant,
  });

  @override
  List<Object> get props => [this.mrrestaurant];
}
