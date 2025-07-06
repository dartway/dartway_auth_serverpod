library protocol;

import 'package:serverpod_auth_server/serverpod_auth_server.dart' as auth;

export 'package:serverpod_auth_server/module.dart' show UserInfo;

export 'src/business/dw_phone_auth.dart';
export 'src/business/dw_phone_auth_config.dart';
export 'src/generated/endpoints.dart';
export 'src/generated/protocol.dart';

final authenticationHandler = auth.authenticationHandler;
