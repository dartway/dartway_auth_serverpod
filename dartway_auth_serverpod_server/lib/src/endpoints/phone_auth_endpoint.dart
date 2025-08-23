import 'package:dartway_auth_serverpod_server/dartway_auth_serverpod_server.dart';
import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/serverpod_auth_server.dart';

/// Endpoint for handling Sign in with phone.
class PhoneAuthEndpoint extends Endpoint {
  /// Initializes the phone verification process.
  /// Calls initVerificationRequestCallback if it is set.
  Future<AuthenticationResponse> requestVerification(
    Session session,
    DwPhoneVerificationRequestType requestType,
    String phoneNumber, {
    Map<String, String>? requestExtraData,
    Map<String, String>? verificationExtraParams,
  }) {
    return DwPhoneAuth.requestVerification(
      session,
      requestType: requestType,
      phoneNumber: phoneNumber,
      requestExtraData: requestExtraData,
      verificationExtraParams: verificationExtraParams,
    );
  }

  /// Verifies phoneNumber with OneTimePassword.
  /// Calls onVerificationSuccessCallback if the verification is successful.
  /// Returns [AuthenticationResponse] with the user information if it was registration or signIn.
  Future<AuthenticationResponse> verifyWithOneTimePassword(
    Session session,
    String phoneNumber,
    String oneTimePassword,
  ) {
    return DwPhoneAuth.verifyWithOneTimePassword(
      session,
      phoneNumber: phoneNumber,
      oneTimePassword: oneTimePassword,
    );
  }

  Stream createVerificationStream(
    Session session, {
    required String phoneNumber,
  }) async* {
    session.log('Creating phone verification stream for $phoneNumber');

    final stream = DwPhoneAuth.createVerificationStream(
      session,
      phoneNumber: phoneNumber,
    );

    await for (var message in stream) {
      yield message;
    }
  }

  Future<AuthenticationResponse> forceVerification(
    Session session, {
    required String phoneNumber,
    bool sendAuthenticationResponseToStream = false,
  }) async {
    final response = await DwPhoneAuth.forceVerification(
      session,
      phoneNumber: phoneNumber,
    );

    if (sendAuthenticationResponseToStream) {
      await DwPhoneAuth.postOnVerificationStream(
        session,
        phoneNumber: phoneNumber,
        message: response,
      );
    }

    return response;
  }
}
