/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dw_auth_data_stash.dart' as _i2;
import 'phone/dw_phone_failed_sign_in.dart' as _i3;
import 'phone/dw_phone_verification_request.dart' as _i4;
import 'phone/dw_phone_verification_request_type.dart' as _i5;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i6;
export 'dw_auth_data_stash.dart';
export 'phone/dw_phone_failed_sign_in.dart';
export 'phone/dw_phone_verification_request.dart';
export 'phone/dw_phone_verification_request_type.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i2.DwAuthDataStash) {
      return _i2.DwAuthDataStash.fromJson(data) as T;
    }
    if (t == _i3.DwPhoneFailedSignIn) {
      return _i3.DwPhoneFailedSignIn.fromJson(data) as T;
    }
    if (t == _i4.DwPhoneVerificationRequest) {
      return _i4.DwPhoneVerificationRequest.fromJson(data) as T;
    }
    if (t == _i5.DwPhoneVerificationRequestType) {
      return _i5.DwPhoneVerificationRequestType.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.DwAuthDataStash?>()) {
      return (data != null ? _i2.DwAuthDataStash.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.DwPhoneFailedSignIn?>()) {
      return (data != null ? _i3.DwPhoneFailedSignIn.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i4.DwPhoneVerificationRequest?>()) {
      return (data != null
          ? _i4.DwPhoneVerificationRequest.fromJson(data)
          : null) as T;
    }
    if (t == _i1.getType<_i5.DwPhoneVerificationRequestType?>()) {
      return (data != null
          ? _i5.DwPhoneVerificationRequestType.fromJson(data)
          : null) as T;
    }
    if (t == Map<String, String>) {
      return (data as Map).map((k, v) =>
          MapEntry(deserialize<String>(k), deserialize<String>(v))) as T;
    }
    if (t == _i1.getType<Map<String, String>?>()) {
      return (data != null
          ? (data as Map).map((k, v) =>
              MapEntry(deserialize<String>(k), deserialize<String>(v)))
          : null) as T;
    }
    try {
      return _i6.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i2.DwAuthDataStash) {
      return 'DwAuthDataStash';
    }
    if (data is _i3.DwPhoneFailedSignIn) {
      return 'DwPhoneFailedSignIn';
    }
    if (data is _i4.DwPhoneVerificationRequest) {
      return 'DwPhoneVerificationRequest';
    }
    if (data is _i5.DwPhoneVerificationRequestType) {
      return 'DwPhoneVerificationRequestType';
    }
    className = _i6.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'DwAuthDataStash') {
      return deserialize<_i2.DwAuthDataStash>(data['data']);
    }
    if (dataClassName == 'DwPhoneFailedSignIn') {
      return deserialize<_i3.DwPhoneFailedSignIn>(data['data']);
    }
    if (dataClassName == 'DwPhoneVerificationRequest') {
      return deserialize<_i4.DwPhoneVerificationRequest>(data['data']);
    }
    if (dataClassName == 'DwPhoneVerificationRequestType') {
      return deserialize<_i5.DwPhoneVerificationRequestType>(data['data']);
    }
    if (dataClassName.startsWith('serverpod_auth.')) {
      data['className'] = dataClassName.substring(15);
      return _i6.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }
}
