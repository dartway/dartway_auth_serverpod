/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: invalid_use_of_visible_for_testing_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../protocol.dart' as _i2;

/// Database bindings for a sign in with phone.
abstract class DwPhoneVerificationRequest
    implements _i1.TableRow, _i1.ProtocolSerialization {
  DwPhoneVerificationRequest._({
    this.id,
    required this.requestType,
    required this.phoneNumber,
    required this.hash,
    DateTime? createdAt,
    required this.expirationTime,
    this.stashDataId,
    this.stashData,
    bool? isUsed,
  })  : createdAt = createdAt ?? DateTime.now(),
        isUsed = isUsed ?? false;

  factory DwPhoneVerificationRequest({
    int? id,
    required _i2.DwPhoneVerificationRequestType requestType,
    required String phoneNumber,
    required String hash,
    DateTime? createdAt,
    required DateTime expirationTime,
    int? stashDataId,
    _i2.DwAuthDataStash? stashData,
    bool? isUsed,
  }) = _DwPhoneVerificationRequestImpl;

  factory DwPhoneVerificationRequest.fromJson(
      Map<String, dynamic> jsonSerialization) {
    return DwPhoneVerificationRequest(
      id: jsonSerialization['id'] as int?,
      requestType: _i2.DwPhoneVerificationRequestType.fromJson(
          (jsonSerialization['requestType'] as String)),
      phoneNumber: jsonSerialization['phoneNumber'] as String,
      hash: jsonSerialization['hash'] as String,
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      expirationTime: _i1.DateTimeJsonExtension.fromJson(
          jsonSerialization['expirationTime']),
      stashDataId: jsonSerialization['stashDataId'] as int?,
      stashData: jsonSerialization['stashData'] == null
          ? null
          : _i2.DwAuthDataStash.fromJson(
              (jsonSerialization['stashData'] as Map<String, dynamic>)),
      isUsed: jsonSerialization['isUsed'] as bool,
    );
  }

  static final t = DwPhoneVerificationRequestTable();

  static const db = DwPhoneVerificationRequestRepository._();

  @override
  int? id;

  /// The type of request, e.g. registration, signIn, passwordReset, changePhoneNumber, other
  /// See [DwPhoneVerificationRequestType](dw_phone_verification_request_type.spy.yaml)
  _i2.DwPhoneVerificationRequestType requestType;

  /// The phoneNumber for verification
  String phoneNumber;

  /// The hashed otp
  String hash;

  /// The expiration time of the otp
  DateTime createdAt;

  DateTime expirationTime;

  int? stashDataId;

  _i2.DwAuthDataStash? stashData;

  /// If the otp has been used
  bool isUsed;

  @override
  _i1.Table get table => t;

  DwPhoneVerificationRequest copyWith({
    int? id,
    _i2.DwPhoneVerificationRequestType? requestType,
    String? phoneNumber,
    String? hash,
    DateTime? createdAt,
    DateTime? expirationTime,
    int? stashDataId,
    _i2.DwAuthDataStash? stashData,
    bool? isUsed,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'requestType': requestType.toJson(),
      'phoneNumber': phoneNumber,
      'hash': hash,
      'createdAt': createdAt.toJson(),
      'expirationTime': expirationTime.toJson(),
      if (stashDataId != null) 'stashDataId': stashDataId,
      if (stashData != null) 'stashData': stashData?.toJson(),
      'isUsed': isUsed,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'requestType': requestType.toJson(),
      'phoneNumber': phoneNumber,
      'hash': hash,
      'createdAt': createdAt.toJson(),
      'expirationTime': expirationTime.toJson(),
      if (stashDataId != null) 'stashDataId': stashDataId,
      if (stashData != null) 'stashData': stashData?.toJsonForProtocol(),
      'isUsed': isUsed,
    };
  }

  static DwPhoneVerificationRequestInclude include(
      {_i2.DwAuthDataStashInclude? stashData}) {
    return DwPhoneVerificationRequestInclude._(stashData: stashData);
  }

  static DwPhoneVerificationRequestIncludeList includeList({
    _i1.WhereExpressionBuilder<DwPhoneVerificationRequestTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DwPhoneVerificationRequestTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DwPhoneVerificationRequestTable>? orderByList,
    DwPhoneVerificationRequestInclude? include,
  }) {
    return DwPhoneVerificationRequestIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(DwPhoneVerificationRequest.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(DwPhoneVerificationRequest.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _DwPhoneVerificationRequestImpl extends DwPhoneVerificationRequest {
  _DwPhoneVerificationRequestImpl({
    int? id,
    required _i2.DwPhoneVerificationRequestType requestType,
    required String phoneNumber,
    required String hash,
    DateTime? createdAt,
    required DateTime expirationTime,
    int? stashDataId,
    _i2.DwAuthDataStash? stashData,
    bool? isUsed,
  }) : super._(
          id: id,
          requestType: requestType,
          phoneNumber: phoneNumber,
          hash: hash,
          createdAt: createdAt,
          expirationTime: expirationTime,
          stashDataId: stashDataId,
          stashData: stashData,
          isUsed: isUsed,
        );

  @override
  DwPhoneVerificationRequest copyWith({
    Object? id = _Undefined,
    _i2.DwPhoneVerificationRequestType? requestType,
    String? phoneNumber,
    String? hash,
    DateTime? createdAt,
    DateTime? expirationTime,
    Object? stashDataId = _Undefined,
    Object? stashData = _Undefined,
    bool? isUsed,
  }) {
    return DwPhoneVerificationRequest(
      id: id is int? ? id : this.id,
      requestType: requestType ?? this.requestType,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      hash: hash ?? this.hash,
      createdAt: createdAt ?? this.createdAt,
      expirationTime: expirationTime ?? this.expirationTime,
      stashDataId: stashDataId is int? ? stashDataId : this.stashDataId,
      stashData: stashData is _i2.DwAuthDataStash?
          ? stashData
          : this.stashData?.copyWith(),
      isUsed: isUsed ?? this.isUsed,
    );
  }
}

class DwPhoneVerificationRequestTable extends _i1.Table {
  DwPhoneVerificationRequestTable({super.tableRelation})
      : super(tableName: 'dw_phone_verification_request') {
    requestType = _i1.ColumnEnum(
      'requestType',
      this,
      _i1.EnumSerialization.byName,
    );
    phoneNumber = _i1.ColumnString(
      'phoneNumber',
      this,
    );
    hash = _i1.ColumnString(
      'hash',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
    expirationTime = _i1.ColumnDateTime(
      'expirationTime',
      this,
    );
    stashDataId = _i1.ColumnInt(
      'stashDataId',
      this,
    );
    isUsed = _i1.ColumnBool(
      'isUsed',
      this,
      hasDefault: true,
    );
  }

  /// The type of request, e.g. registration, signIn, passwordReset, changePhoneNumber, other
  /// See [DwPhoneVerificationRequestType](dw_phone_verification_request_type.spy.yaml)
  late final _i1.ColumnEnum<_i2.DwPhoneVerificationRequestType> requestType;

  /// The phoneNumber for verification
  late final _i1.ColumnString phoneNumber;

  /// The hashed otp
  late final _i1.ColumnString hash;

  /// The expiration time of the otp
  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime expirationTime;

  late final _i1.ColumnInt stashDataId;

  _i2.DwAuthDataStashTable? _stashData;

  /// If the otp has been used
  late final _i1.ColumnBool isUsed;

  _i2.DwAuthDataStashTable get stashData {
    if (_stashData != null) return _stashData!;
    _stashData = _i1.createRelationTable(
      relationFieldName: 'stashData',
      field: DwPhoneVerificationRequest.t.stashDataId,
      foreignField: _i2.DwAuthDataStash.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.DwAuthDataStashTable(tableRelation: foreignTableRelation),
    );
    return _stashData!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        requestType,
        phoneNumber,
        hash,
        createdAt,
        expirationTime,
        stashDataId,
        isUsed,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'stashData') {
      return stashData;
    }
    return null;
  }
}

class DwPhoneVerificationRequestInclude extends _i1.IncludeObject {
  DwPhoneVerificationRequestInclude._({_i2.DwAuthDataStashInclude? stashData}) {
    _stashData = stashData;
  }

  _i2.DwAuthDataStashInclude? _stashData;

  @override
  Map<String, _i1.Include?> get includes => {'stashData': _stashData};

  @override
  _i1.Table get table => DwPhoneVerificationRequest.t;
}

class DwPhoneVerificationRequestIncludeList extends _i1.IncludeList {
  DwPhoneVerificationRequestIncludeList._({
    _i1.WhereExpressionBuilder<DwPhoneVerificationRequestTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(DwPhoneVerificationRequest.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => DwPhoneVerificationRequest.t;
}

class DwPhoneVerificationRequestRepository {
  const DwPhoneVerificationRequestRepository._();

  final attachRow = const DwPhoneVerificationRequestAttachRowRepository._();

  final detachRow = const DwPhoneVerificationRequestDetachRowRepository._();

  Future<List<DwPhoneVerificationRequest>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DwPhoneVerificationRequestTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DwPhoneVerificationRequestTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DwPhoneVerificationRequestTable>? orderByList,
    _i1.Transaction? transaction,
    DwPhoneVerificationRequestInclude? include,
  }) async {
    return session.db.find<DwPhoneVerificationRequest>(
      where: where?.call(DwPhoneVerificationRequest.t),
      orderBy: orderBy?.call(DwPhoneVerificationRequest.t),
      orderByList: orderByList?.call(DwPhoneVerificationRequest.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? session.transaction,
      include: include,
    );
  }

  Future<DwPhoneVerificationRequest?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DwPhoneVerificationRequestTable>? where,
    int? offset,
    _i1.OrderByBuilder<DwPhoneVerificationRequestTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DwPhoneVerificationRequestTable>? orderByList,
    _i1.Transaction? transaction,
    DwPhoneVerificationRequestInclude? include,
  }) async {
    return session.db.findFirstRow<DwPhoneVerificationRequest>(
      where: where?.call(DwPhoneVerificationRequest.t),
      orderBy: orderBy?.call(DwPhoneVerificationRequest.t),
      orderByList: orderByList?.call(DwPhoneVerificationRequest.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? session.transaction,
      include: include,
    );
  }

  Future<DwPhoneVerificationRequest?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    DwPhoneVerificationRequestInclude? include,
  }) async {
    return session.db.findById<DwPhoneVerificationRequest>(
      id,
      transaction: transaction ?? session.transaction,
      include: include,
    );
  }

  Future<List<DwPhoneVerificationRequest>> insert(
    _i1.Session session,
    List<DwPhoneVerificationRequest> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<DwPhoneVerificationRequest>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<DwPhoneVerificationRequest> insertRow(
    _i1.Session session,
    DwPhoneVerificationRequest row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<DwPhoneVerificationRequest>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<DwPhoneVerificationRequest>> update(
    _i1.Session session,
    List<DwPhoneVerificationRequest> rows, {
    _i1.ColumnSelections<DwPhoneVerificationRequestTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<DwPhoneVerificationRequest>(
      rows,
      columns: columns?.call(DwPhoneVerificationRequest.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<DwPhoneVerificationRequest> updateRow(
    _i1.Session session,
    DwPhoneVerificationRequest row, {
    _i1.ColumnSelections<DwPhoneVerificationRequestTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<DwPhoneVerificationRequest>(
      row,
      columns: columns?.call(DwPhoneVerificationRequest.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<DwPhoneVerificationRequest>> delete(
    _i1.Session session,
    List<DwPhoneVerificationRequest> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<DwPhoneVerificationRequest>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<DwPhoneVerificationRequest> deleteRow(
    _i1.Session session,
    DwPhoneVerificationRequest row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<DwPhoneVerificationRequest>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<DwPhoneVerificationRequest>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<DwPhoneVerificationRequestTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<DwPhoneVerificationRequest>(
      where: where(DwPhoneVerificationRequest.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DwPhoneVerificationRequestTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<DwPhoneVerificationRequest>(
      where: where?.call(DwPhoneVerificationRequest.t),
      limit: limit,
      transaction: transaction ?? session.transaction,
    );
  }
}

class DwPhoneVerificationRequestAttachRowRepository {
  const DwPhoneVerificationRequestAttachRowRepository._();

  Future<void> stashData(
    _i1.Session session,
    DwPhoneVerificationRequest dwPhoneVerificationRequest,
    _i2.DwAuthDataStash stashData, {
    _i1.Transaction? transaction,
  }) async {
    if (dwPhoneVerificationRequest.id == null) {
      throw ArgumentError.notNull('dwPhoneVerificationRequest.id');
    }
    if (stashData.id == null) {
      throw ArgumentError.notNull('stashData.id');
    }

    var $dwPhoneVerificationRequest =
        dwPhoneVerificationRequest.copyWith(stashDataId: stashData.id);
    await session.db.updateRow<DwPhoneVerificationRequest>(
      $dwPhoneVerificationRequest,
      columns: [DwPhoneVerificationRequest.t.stashDataId],
      transaction: transaction ?? session.transaction,
    );
  }
}

class DwPhoneVerificationRequestDetachRowRepository {
  const DwPhoneVerificationRequestDetachRowRepository._();

  Future<void> stashData(
    _i1.Session session,
    DwPhoneVerificationRequest dwphoneverificationrequest, {
    _i1.Transaction? transaction,
  }) async {
    if (dwphoneverificationrequest.id == null) {
      throw ArgumentError.notNull('dwphoneverificationrequest.id');
    }

    var $dwphoneverificationrequest =
        dwphoneverificationrequest.copyWith(stashDataId: null);
    await session.db.updateRow<DwPhoneVerificationRequest>(
      $dwphoneverificationrequest,
      columns: [DwPhoneVerificationRequest.t.stashDataId],
      transaction: transaction ?? session.transaction,
    );
  }
}
