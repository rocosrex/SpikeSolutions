import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'package:bloc_pattern_review/models/user_account.dart';

@immutable
abstract class UserAccountEvent extends Equatable {}

class ListUserAccountsEvent extends UserAccountEvent {
  @override
  List<Object> get props => [];
}

class CreateUserAccountEvent extends UserAccountEvent {
  final String title;

  CreateUserAccountEvent({
    required this.title,
  });

  @override
  List<Object> get props => [this.title];
}

class DeleteUserAccountEvent extends UserAccountEvent {
  final UserAccount useraccount;

  DeleteUserAccountEvent({
    required this.useraccount,
  });

  @override
  List<Object> get props => [this.useraccount];
}
