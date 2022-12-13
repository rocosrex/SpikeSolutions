import '../models/user_account.dart';

/// GET - ListUserAccount
/// POST - CreateUserAccount
/// DELETE - DeleteUserAccount
class UserAccountRepository {
  Future<List<Map<String, dynamic>>> listUserAccount() async {
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

  Future<Map<String, dynamic>> createUserAccount(UserAccount useraccount) async {
    /// body - request - response - return
    await Future.delayed(Duration(seconds: 1));

    return useraccount.toJson();
  }

  Future<Map<String, dynamic>> deleteUserAccount(UserAccount useraccount) async {
    await Future.delayed(Duration(seconds: 1));

    return useraccount.toJson();
  }
}
