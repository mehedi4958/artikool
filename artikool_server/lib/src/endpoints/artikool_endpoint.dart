import 'package:artikool_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class ArtikoolEndpoint extends Endpoint {
  /// fetch article from DB
  Future<List<Article>> getArticles(Session session, {String? keyword}) async {
    return await Article.find(
      session,
      where: (t) =>
          keyword != null ? t.title.like('%keyword%') : Constant(true),
    );
  }

  /// add article in DB
  Future<bool> addArticle(Session session, Article article) async {
    await Article.insert(session, article);
    return true;
  }

  /// update article
  Future<bool> updateArticle(Session session, Article article) async {
    var result = await Article.update(session, article);
    return result;
  }
}
