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

abstract class DwAuthDataStash
    implements _i1.TableRow, _i1.ProtocolSerialization {
  DwAuthDataStash._({
    this.id,
    required this.type,
    required this.identifier,
    required this.createdAt,
    required this.data,
  });

  factory DwAuthDataStash({
    int? id,
    required String type,
    required String identifier,
    required DateTime createdAt,
    required Map<String, String> data,
  }) = _DwAuthDataStashImpl;

  factory DwAuthDataStash.fromJson(Map<String, dynamic> jsonSerialization) {
    return DwAuthDataStash(
      id: jsonSerialization['id'] as int?,
      type: jsonSerialization['type'] as String,
      identifier: jsonSerialization['identifier'] as String,
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      data: (jsonSerialization['data'] as Map).map((k, v) => MapEntry(
            k as String,
            v as String,
          )),
    );
  }

  static final t = DwAuthDataStashTable();

  static const db = DwAuthDataStashRepository._();

  @override
  int? id;

  String type;

  String identifier;

  DateTime createdAt;

  Map<String, String> data;

  @override
  _i1.Table get table => t;

  DwAuthDataStash copyWith({
    int? id,
    String? type,
    String? identifier,
    DateTime? createdAt,
    Map<String, String>? data,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'type': type,
      'identifier': identifier,
      'createdAt': createdAt.toJson(),
      'data': data.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'type': type,
      'identifier': identifier,
      'createdAt': createdAt.toJson(),
      'data': data.toJson(),
    };
  }

  static DwAuthDataStashInclude include() {
    return DwAuthDataStashInclude._();
  }

  static DwAuthDataStashIncludeList includeList({
    _i1.WhereExpressionBuilder<DwAuthDataStashTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DwAuthDataStashTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DwAuthDataStashTable>? orderByList,
    DwAuthDataStashInclude? include,
  }) {
    return DwAuthDataStashIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(DwAuthDataStash.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(DwAuthDataStash.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _DwAuthDataStashImpl extends DwAuthDataStash {
  _DwAuthDataStashImpl({
    int? id,
    required String type,
    required String identifier,
    required DateTime createdAt,
    required Map<String, String> data,
  }) : super._(
          id: id,
          type: type,
          identifier: identifier,
          createdAt: createdAt,
          data: data,
        );

  @override
  DwAuthDataStash copyWith({
    Object? id = _Undefined,
    String? type,
    String? identifier,
    DateTime? createdAt,
    Map<String, String>? data,
  }) {
    return DwAuthDataStash(
      id: id is int? ? id : this.id,
      type: type ?? this.type,
      identifier: identifier ?? this.identifier,
      createdAt: createdAt ?? this.createdAt,
      data: data ??
          this.data.map((
                key0,
                value0,
              ) =>
                  MapEntry(
                    key0,
                    value0,
                  )),
    );
  }
}

class DwAuthDataStashTable extends _i1.Table {
  DwAuthDataStashTable({super.tableRelation})
      : super(tableName: 'dw_auth_data_stash') {
    type = _i1.ColumnString(
      'type',
      this,
    );
    identifier = _i1.ColumnString(
      'identifier',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
    data = _i1.ColumnSerializable(
      'data',
      this,
    );
  }

  late final _i1.ColumnString type;

  late final _i1.ColumnString identifier;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnSerializable data;

  @override
  List<_i1.Column> get columns => [
        id,
        type,
        identifier,
        createdAt,
        data,
      ];
}

class DwAuthDataStashInclude extends _i1.IncludeObject {
  DwAuthDataStashInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => DwAuthDataStash.t;
}

class DwAuthDataStashIncludeList extends _i1.IncludeList {
  DwAuthDataStashIncludeList._({
    _i1.WhereExpressionBuilder<DwAuthDataStashTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(DwAuthDataStash.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => DwAuthDataStash.t;
}

class DwAuthDataStashRepository {
  const DwAuthDataStashRepository._();

  Future<List<DwAuthDataStash>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DwAuthDataStashTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DwAuthDataStashTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DwAuthDataStashTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<DwAuthDataStash>(
      where: where?.call(DwAuthDataStash.t),
      orderBy: orderBy?.call(DwAuthDataStash.t),
      orderByList: orderByList?.call(DwAuthDataStash.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<DwAuthDataStash?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DwAuthDataStashTable>? where,
    int? offset,
    _i1.OrderByBuilder<DwAuthDataStashTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DwAuthDataStashTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<DwAuthDataStash>(
      where: where?.call(DwAuthDataStash.t),
      orderBy: orderBy?.call(DwAuthDataStash.t),
      orderByList: orderByList?.call(DwAuthDataStash.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<DwAuthDataStash?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<DwAuthDataStash>(
      id,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<DwAuthDataStash>> insert(
    _i1.Session session,
    List<DwAuthDataStash> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<DwAuthDataStash>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<DwAuthDataStash> insertRow(
    _i1.Session session,
    DwAuthDataStash row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<DwAuthDataStash>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<DwAuthDataStash>> update(
    _i1.Session session,
    List<DwAuthDataStash> rows, {
    _i1.ColumnSelections<DwAuthDataStashTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<DwAuthDataStash>(
      rows,
      columns: columns?.call(DwAuthDataStash.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<DwAuthDataStash> updateRow(
    _i1.Session session,
    DwAuthDataStash row, {
    _i1.ColumnSelections<DwAuthDataStashTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<DwAuthDataStash>(
      row,
      columns: columns?.call(DwAuthDataStash.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<DwAuthDataStash>> delete(
    _i1.Session session,
    List<DwAuthDataStash> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<DwAuthDataStash>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<DwAuthDataStash> deleteRow(
    _i1.Session session,
    DwAuthDataStash row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<DwAuthDataStash>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<DwAuthDataStash>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<DwAuthDataStashTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<DwAuthDataStash>(
      where: where(DwAuthDataStash.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DwAuthDataStashTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<DwAuthDataStash>(
      where: where?.call(DwAuthDataStash.t),
      limit: limit,
      transaction: transaction ?? session.transaction,
    );
  }
}
