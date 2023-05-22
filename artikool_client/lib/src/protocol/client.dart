/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:artikool_client/src/protocol/article_class.dart' as _i3;
import 'dart:io' as _i4;
import 'protocol.dart' as _i5;

class _EndpointArtikool extends _i1.EndpointRef {
  _EndpointArtikool(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'artikool';

  /// fetch article from DB
  _i2.Future<List<_i3.Article>> getArticles({String? keyword}) =>
      caller.callServerEndpoint<List<_i3.Article>>(
        'artikool',
        'getArticles',
        {'keyword': keyword},
      );

  /// add article in DB
  _i2.Future<bool> addArticle(_i3.Article article) =>
      caller.callServerEndpoint<bool>(
        'artikool',
        'addArticle',
        {'article': article},
      );

  /// update article
  _i2.Future<bool> updateArticle(_i3.Article article) =>
      caller.callServerEndpoint<bool>(
        'artikool',
        'updateArticle',
        {'article': article},
      );

  /// delete article
  _i2.Future<bool> deleteArticle(int id) => caller.callServerEndpoint<bool>(
        'artikool',
        'deleteArticle',
        {'id': id},
      );
}

class _EndpointExample extends _i1.EndpointRef {
  _EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    _i4.SecurityContext? context,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
  }) : super(
          host,
          _i5.Protocol(),
          context: context,
          authenticationKeyManager: authenticationKeyManager,
        ) {
    artikool = _EndpointArtikool(this);
    example = _EndpointExample(this);
  }

  late final _EndpointArtikool artikool;

  late final _EndpointExample example;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'artikool': artikool,
        'example': example,
      };
  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
