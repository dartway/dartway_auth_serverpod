/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/phone_auth_endpoint.dart' as _i2;
import 'package:dartway_auth_serverpod_server/src/generated/phone/dw_phone_verification_request_type.dart'
    as _i3;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i4;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'phoneAuth': _i2.PhoneAuthEndpoint()
        ..initialize(
          server,
          'phoneAuth',
          'dartway_auth_serverpod',
        )
    };
    connectors['phoneAuth'] = _i1.EndpointConnector(
      name: 'phoneAuth',
      endpoint: endpoints['phoneAuth']!,
      methodConnectors: {
        'requestVerification': _i1.MethodConnector(
          name: 'requestVerification',
          params: {
            'requestType': _i1.ParameterDescription(
              name: 'requestType',
              type: _i1.getType<_i3.DwPhoneVerificationRequestType>(),
              nullable: false,
            ),
            'phoneNumber': _i1.ParameterDescription(
              name: 'phoneNumber',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'requestExtraData': _i1.ParameterDescription(
              name: 'requestExtraData',
              type: _i1.getType<Map<String, String>?>(),
              nullable: true,
            ),
            'verificationExtraParams': _i1.ParameterDescription(
              name: 'verificationExtraParams',
              type: _i1.getType<Map<String, String>?>(),
              nullable: true,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['phoneAuth'] as _i2.PhoneAuthEndpoint)
                  .requestVerification(
            session,
            params['requestType'],
            params['phoneNumber'],
            requestExtraData: params['requestExtraData'],
            verificationExtraParams: params['verificationExtraParams'],
          ),
        ),
        'verifyWithOneTimePassword': _i1.MethodConnector(
          name: 'verifyWithOneTimePassword',
          params: {
            'phoneNumber': _i1.ParameterDescription(
              name: 'phoneNumber',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'oneTimePassword': _i1.ParameterDescription(
              name: 'oneTimePassword',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['phoneAuth'] as _i2.PhoneAuthEndpoint)
                  .verifyWithOneTimePassword(
            session,
            params['phoneNumber'],
            params['oneTimePassword'],
          ),
        ),
        'forceVerification': _i1.MethodConnector(
          name: 'forceVerification',
          params: {
            'phoneNumber': _i1.ParameterDescription(
              name: 'phoneNumber',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'sendAuthenticationResponseToStream': _i1.ParameterDescription(
              name: 'sendAuthenticationResponseToStream',
              type: _i1.getType<bool>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['phoneAuth'] as _i2.PhoneAuthEndpoint)
                  .forceVerification(
            session,
            phoneNumber: params['phoneNumber'],
            sendAuthenticationResponseToStream:
                params['sendAuthenticationResponseToStream'],
          ),
        ),
        'createVerificationStream': _i1.MethodStreamConnector(
          name: 'createVerificationStream',
          params: {
            'phoneNumber': _i1.ParameterDescription(
              name: 'phoneNumber',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          streamParams: {},
          returnType: _i1.MethodStreamReturnType.streamType,
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
            Map<String, Stream> streamParams,
          ) =>
              (endpoints['phoneAuth'] as _i2.PhoneAuthEndpoint)
                  .createVerificationStream(
            session,
            phoneNumber: params['phoneNumber'],
          ),
        ),
      },
    );
    modules['serverpod_auth'] = _i4.Endpoints()..initializeEndpoints(server);
  }
}
