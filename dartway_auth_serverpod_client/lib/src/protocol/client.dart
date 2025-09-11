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
import 'dart:async' as _i2;
import 'package:serverpod_serialization/src/serialization.dart' as _i3;
import 'package:dartway_auth_serverpod_client/src/protocol/phone/dw_phone_verification_request_type.dart'
    as _i4;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i5;

/// Endpoint for handling Sign in with phone.
/// {@category Endpoint}
class EndpointPhoneAuth extends _i1.EndpointRef {
  EndpointPhoneAuth(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'dartway_auth_serverpod.phoneAuth';

  _i2.Stream<_i3.SerializableModel> startVerification({
    required _i4.DwPhoneVerificationRequestType requestType,
    required String phoneNumber,
    Map<String, String>? requestExtraData,
    Map<String, String>? verificationExtraParams,
  }) =>
      caller.callStreamingServerEndpoint<_i2.Stream<_i3.SerializableModel>,
          _i3.SerializableModel>(
        'dartway_auth_serverpod.phoneAuth',
        'startVerification',
        {
          'requestType': requestType,
          'phoneNumber': phoneNumber,
          'requestExtraData': requestExtraData,
          'verificationExtraParams': verificationExtraParams,
        },
        {},
      );

  /// Verifies phoneNumber with OneTimePassword.
  /// Calls onVerificationSuccessCallback if the verification is successful.
  /// Returns [AuthenticationResponse] with the user information if it was registration or signIn.
  _i2.Future<_i5.AuthenticationResponse> verifyWithOneTimePassword(
    String phoneNumber,
    String oneTimePassword,
  ) =>
      caller.callServerEndpoint<_i5.AuthenticationResponse>(
        'dartway_auth_serverpod.phoneAuth',
        'verifyWithOneTimePassword',
        {
          'phoneNumber': phoneNumber,
          'oneTimePassword': oneTimePassword,
        },
      );

  _i2.Future<_i5.AuthenticationResponse> forceVerification({
    required String phoneNumber,
    required bool sendAuthenticationResponseToStream,
  }) =>
      caller.callServerEndpoint<_i5.AuthenticationResponse>(
        'dartway_auth_serverpod.phoneAuth',
        'forceVerification',
        {
          'phoneNumber': phoneNumber,
          'sendAuthenticationResponseToStream':
              sendAuthenticationResponseToStream,
        },
      );
}

class Caller extends _i1.ModuleEndpointCaller {
  Caller(_i1.ServerpodClientShared client) : super(client) {
    phoneAuth = EndpointPhoneAuth(this);
  }

  late final EndpointPhoneAuth phoneAuth;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup =>
      {'dartway_auth_serverpod.phoneAuth': phoneAuth};
}
