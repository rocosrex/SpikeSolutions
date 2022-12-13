import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_pattern_review/blocs/user_account_state.dart';
import 'package:bloc_pattern_review/models/user_account.dart';
import 'package:bloc_pattern_review/repositories/user_account_repository.dart';

class UserAccountCubit extends Cubit<UserAccountState> {
  final UserAccountRepository repository;

  UserAccountCubit({required this.repository}) : super(Empty());

  listUserAccount() async {
    try {
      emit(Loading());

      final resp = await this.repository.listUserAccount();

      final useraccounts = resp
          .map<UserAccount>(
            (e) => UserAccount.fromJson(e),
          )
          .toList();

      emit(Loaded(useraccounts: useraccounts));
    } catch (e) {
      emit(Error(message: e.toString()));
    }
  }

  createUserAccount(String title) async {
    try {
      if (state is Loaded) {
        final parsedState = (state as Loaded);

        //To create object in here
        //for example
        //final newUserAccount = UserAccount(
        //  id: parsedState.useraccounts.length == 0
        //      ? 1
        //      : parsedState.useraccounts[parsedState.useraccounts.length - 1].id + 1,
        //  title: title,
        //  createdAt: DateTime.now().toString(),
        //);
        final newUserAccount = UserAccount(
          userId: 'the string',
          userEmail: 'the string',
          password: 'the string',
          ,
        );

        final prevUserAccounts = [
          ...parsedState.useraccounts,
        ];

        final newUserAccounts = [
          ...prevUserAccounts,
          newUserAccount,
        ];

        emit(Loaded(useraccounts: newUserAccounts));

        final resp = await this.repository.createUserAccount(newUserAccount);

        emit(
          Loaded(
            useraccounts: [
              ...prevUserAccounts,
              UserAccount.fromJson(resp),
            ],
          ),
        );
      }
    } catch (e) {
      emit(Error(message: e.toString()));
    }
  }

  deleteUserAccount(UserAccount useraccount) async {
    try {
      if (state is Loaded) {
        final newUserAccounts = (state as Loaded)
            .useraccounts
            .where((item) => item.id != useraccount.id)
            .toList();

        emit(Loaded(useraccounts: newUserAccounts));

        await repository.deleteUserAccount(useraccount);
      }
    } catch (e) {
      emit(Error(message: e.toString()));
    }
  }
}
