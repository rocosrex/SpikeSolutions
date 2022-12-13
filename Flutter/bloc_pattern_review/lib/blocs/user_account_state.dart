import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'package:bloc_pattern_review/models/user_account.dart';

@immutable
abstract class UserAccountState extends Equatable {}

class Empty extends UserAccountState {
  @override
  List<Object> get props => [];
}

class Loading extends UserAccountState {
  @override
  List<Object> get props => [];
}

class Error extends UserAccountState {
  final String message;

  Error({
    required this.message,
  });

  @override
  List<Object> get props => [this.message];
}

class Loaded extends UserAccountState {
  final List<UserAccount> useraccounts;

  Loaded({
    required this.useraccounts,
  });

  @override
  List<Object> get props => [this.useraccounts];
}
