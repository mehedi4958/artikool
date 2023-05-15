/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Article extends _i1.TableRow {
  Article({
    int? id,
    required this.title,
    required this.content,
    required this.publishedOn,
    required this.isPrime,
  }) : super(id);

  factory Article.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Article(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      title:
          serializationManager.deserialize<String>(jsonSerialization['title']),
      content: serializationManager
          .deserialize<String>(jsonSerialization['content']),
      publishedOn: serializationManager
          .deserialize<DateTime>(jsonSerialization['publishedOn']),
      isPrime:
          serializationManager.deserialize<bool>(jsonSerialization['isPrime']),
    );
  }

  static final t = ArticleTable();

  String title;

  String content;

  DateTime publishedOn;

  bool isPrime;

  @override
  String get tableName => 'article';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'publishedOn': publishedOn,
      'isPrime': isPrime,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'publishedOn': publishedOn,
      'isPrime': isPrime,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'publishedOn': publishedOn,
      'isPrime': isPrime,
    };
  }

  @override
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'title':
        title = value;
        return;
      case 'content':
        content = value;
        return;
      case 'publishedOn':
        publishedOn = value;
        return;
      case 'isPrime':
        isPrime = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Article>> find(
    _i1.Session session, {
    ArticleExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Article>(
      where: where != null ? where(Article.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Article?> findSingleRow(
    _i1.Session session, {
    ArticleExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Article>(
      where: where != null ? where(Article.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Article?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Article>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required ArticleExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Article>(
      where: where(Article.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Article row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Article row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Article row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    ArticleExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Article>(
      where: where != null ? where(Article.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef ArticleExpressionBuilder = _i1.Expression Function(ArticleTable);

class ArticleTable extends _i1.Table {
  ArticleTable() : super(tableName: 'article');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final title = _i1.ColumnString('title');

  final content = _i1.ColumnString('content');

  final publishedOn = _i1.ColumnDateTime('publishedOn');

  final isPrime = _i1.ColumnBool('isPrime');

  @override
  List<_i1.Column> get columns => [
        id,
        title,
        content,
        publishedOn,
        isPrime,
      ];
}

@Deprecated('Use ArticleTable.t instead.')
ArticleTable tArticle = ArticleTable();
