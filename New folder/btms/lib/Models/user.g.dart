// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    user_id: json['id'] as int?,
    email: json['Email'] as String?,
    password: json['Password'] as String?,
    dayOfBirth: json['DayOfBirth'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    createDate: json['CreatedDate'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    emailVerified: json['EmailVertify'] as bool?,
    phoneVerfied: json['PhoneVertify'] as bool?,
    phone: json['Phone'] as String?,
    imageUrl: json['Image'] as String?,
    fullname: json['FullName'] as String?,
    isActive: json['IsActive'] as bool?,
    role: json['Role'] as String?,
    accessToken: json['User_Id'] as String?,
    refreshToken: json['refreshToken'] as String?,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'User_Id': instance.user_id,
      'Email': instance.email,
      'Password': instance.password,
      'DayOfBirth': instance.dayOfBirth,
      'CreatedDate': instance.createDate,
      'EmailVertify': instance.emailVerified,
      'PhoneVertify': instance.phoneVerfied,
      'Phone': instance.phone,
      'Image': instance.imageUrl,
      'FullName': instance.fullname,
      'IsActive': instance.isActive,
      'Role': instance.role,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
