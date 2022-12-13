import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_account.freezed.dart';
part 'user_account.g.dart';

@freezed
class UserAccount with _$UserAccount {
  factory UserAccount({
    required String userId,
    required String userEmail,
    required String password,
    required DateTime registerDate,
  }) = _UserAccount;
factory UserAccount.fromJson(Map<String, dynamic> json) => _$UserAccountFromJson(json);
}
