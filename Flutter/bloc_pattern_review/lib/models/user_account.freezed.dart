// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserAccount _$UserAccountFromJson(Map<String, dynamic> json) {
  return _UserAccount.fromJson(json);
}

/// @nodoc
mixin _$UserAccount {
  String get userId => throw _privateConstructorUsedError;
  String get userEmail => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  DateTime get registerDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAccountCopyWith<UserAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAccountCopyWith<$Res> {
  factory $UserAccountCopyWith(
          UserAccount value, $Res Function(UserAccount) then) =
      _$UserAccountCopyWithImpl<$Res, UserAccount>;
  @useResult
  $Res call(
      {String userId,
      String userEmail,
      String password,
      DateTime registerDate});
}

/// @nodoc
class _$UserAccountCopyWithImpl<$Res, $Val extends UserAccount>
    implements $UserAccountCopyWith<$Res> {
  _$UserAccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userEmail = null,
    Object? password = null,
    Object? registerDate = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      registerDate: null == registerDate
          ? _value.registerDate
          : registerDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserAccountCopyWith<$Res>
    implements $UserAccountCopyWith<$Res> {
  factory _$$_UserAccountCopyWith(
          _$_UserAccount value, $Res Function(_$_UserAccount) then) =
      __$$_UserAccountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String userEmail,
      String password,
      DateTime registerDate});
}

/// @nodoc
class __$$_UserAccountCopyWithImpl<$Res>
    extends _$UserAccountCopyWithImpl<$Res, _$_UserAccount>
    implements _$$_UserAccountCopyWith<$Res> {
  __$$_UserAccountCopyWithImpl(
      _$_UserAccount _value, $Res Function(_$_UserAccount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userEmail = null,
    Object? password = null,
    Object? registerDate = null,
  }) {
    return _then(_$_UserAccount(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      registerDate: null == registerDate
          ? _value.registerDate
          : registerDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserAccount implements _UserAccount {
  _$_UserAccount(
      {required this.userId,
      required this.userEmail,
      required this.password,
      required this.registerDate});

  factory _$_UserAccount.fromJson(Map<String, dynamic> json) =>
      _$$_UserAccountFromJson(json);

  @override
  final String userId;
  @override
  final String userEmail;
  @override
  final String password;
  @override
  final DateTime registerDate;

  @override
  String toString() {
    return 'UserAccount(userId: $userId, userEmail: $userEmail, password: $password, registerDate: $registerDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserAccount &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userEmail, userEmail) ||
                other.userEmail == userEmail) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.registerDate, registerDate) ||
                other.registerDate == registerDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, userEmail, password, registerDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserAccountCopyWith<_$_UserAccount> get copyWith =>
      __$$_UserAccountCopyWithImpl<_$_UserAccount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserAccountToJson(
      this,
    );
  }
}

abstract class _UserAccount implements UserAccount {
  factory _UserAccount(
      {required final String userId,
      required final String userEmail,
      required final String password,
      required final DateTime registerDate}) = _$_UserAccount;

  factory _UserAccount.fromJson(Map<String, dynamic> json) =
      _$_UserAccount.fromJson;

  @override
  String get userId;
  @override
  String get userEmail;
  @override
  String get password;
  @override
  DateTime get registerDate;
  @override
  @JsonKey(ignore: true)
  _$$_UserAccountCopyWith<_$_UserAccount> get copyWith =>
      throw _privateConstructorUsedError;
}
