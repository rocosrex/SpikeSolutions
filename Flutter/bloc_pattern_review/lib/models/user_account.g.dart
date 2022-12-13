// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserAccount _$$_UserAccountFromJson(Map<String, dynamic> json) =>
    _$_UserAccount(
      userId: json['userId'] as String,
      userEmail: json['userEmail'] as String,
      password: json['password'] as String,
      registerDate: DateTime.parse(json['registerDate'] as String),
    );

Map<String, dynamic> _$$_UserAccountToJson(_$_UserAccount instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'userEmail': instance.userEmail,
      'password': instance.password,
      'registerDate': instance.registerDate.toIso8601String(),
    };
