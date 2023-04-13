// To parse this JSON data, do
//
//     final technicalArticlesContent = technicalArticlesContentFromJson(jsonString);

import 'dart:convert';

TechnicalArticlesContent technicalArticlesContentFromJson(String str) =>
    TechnicalArticlesContent.fromJson(json.decode(str));

String technicalArticlesContentToJson(TechnicalArticlesContent data) =>
    json.encode(data.toJson());

class TechnicalArticlesContent {
  TechnicalArticlesContent({
    this.uid,
    this.component,
    this.toolsUsed,
    this.articleUrl,
    this.articleHeadline,
    this.articleDesccription,
  });

  final String? uid;
  final String? component;
  final ToolsUsed? toolsUsed;
  final ArticleUrl? articleUrl;
  final String? articleHeadline;
  final String? articleDesccription;

  TechnicalArticlesContent copyWith({
    String? uid,
    String? component,
    ToolsUsed? toolsUsed,
    ArticleUrl? articleUrl,
    String? articleHeadline,
    String? articleDesccription,
  }) =>
      TechnicalArticlesContent(
        uid: uid ?? this.uid,
        component: component ?? this.component,
        toolsUsed: toolsUsed ?? this.toolsUsed,
        articleUrl: articleUrl ?? this.articleUrl,
        articleHeadline: articleHeadline ?? this.articleHeadline,
        articleDesccription: articleDesccription ?? this.articleDesccription,
      );

  factory TechnicalArticlesContent.fromJson(Map<String, dynamic> json) =>
      TechnicalArticlesContent(
        uid: json["_uid"],
        component: json["component"],
        toolsUsed: json["tools_used"] == null
            ? null
            : ToolsUsed.fromJson(json["tools_used"]),
        articleUrl: json["article_url"] == null
            ? null
            : ArticleUrl.fromJson(json["article_url"]),
        articleHeadline: json["article_headline"],
        articleDesccription: json["article_desccription"],
      );

  Map<String, dynamic> toJson() => {
        "_uid": uid,
        "component": component,
        "tools_used": toolsUsed?.toJson(),
        "article_url": articleUrl?.toJson(),
        "article_headline": articleHeadline,
        "article_desccription": articleDesccription,
      };

  @override
  String toString() {
    return 'TechnicalArticlesContent(uid: $uid, component: $component, toolsUsed: $toolsUsed, articleUrl: $articleUrl, articleHeadline: $articleHeadline, articleDesccription: $articleDesccription)';
  }
}

class ArticleUrl {
  ArticleUrl({
    this.id,
    this.url,
    this.linktype,
    this.fieldtype,
    this.cachedUrl,
  });

  final String? id;
  final String? url;
  final String? linktype;
  final String? fieldtype;
  final String? cachedUrl;

  ArticleUrl copyWith({
    String? id,
    String? url,
    String? linktype,
    String? fieldtype,
    String? cachedUrl,
  }) =>
      ArticleUrl(
        id: id ?? this.id,
        url: url ?? this.url,
        linktype: linktype ?? this.linktype,
        fieldtype: fieldtype ?? this.fieldtype,
        cachedUrl: cachedUrl ?? this.cachedUrl,
      );

  factory ArticleUrl.fromJson(Map<String, dynamic> json) => ArticleUrl(
        id: json["id"],
        url: json["url"],
        linktype: json["linktype"],
        fieldtype: json["fieldtype"],
        cachedUrl: json["cached_url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "url": url,
        "linktype": linktype,
        "fieldtype": fieldtype,
        "cached_url": cachedUrl,
      };
}

class ToolsUsed {
  ToolsUsed({
    this.id,
    this.alt,
    this.name,
    this.focus,
    this.title,
    this.filename,
    this.copyright,
    this.fieldtype,
  });

  final String? id;
  final String? alt;
  final String? name;
  final dynamic focus;
  final String? title;
  final String? filename;
  final String? copyright;
  final String? fieldtype;

  ToolsUsed copyWith({
    String? id,
    String? alt,
    String? name,
    dynamic focus,
    String? title,
    String? filename,
    String? copyright,
    String? fieldtype,
  }) =>
      ToolsUsed(
        id: id ?? this.id,
        alt: alt ?? this.alt,
        name: name ?? this.name,
        focus: focus ?? this.focus,
        title: title ?? this.title,
        filename: filename ?? this.filename,
        copyright: copyright ?? this.copyright,
        fieldtype: fieldtype ?? this.fieldtype,
      );

  factory ToolsUsed.fromJson(Map<String, dynamic> json) => ToolsUsed(
        id: json["id"],
        alt: json["alt"],
        name: json["name"],
        focus: json["focus"],
        title: json["title"],
        filename: json["filename"],
        copyright: json["copyright"],
        fieldtype: json["fieldtype"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "alt": alt,
        "name": name,
        "focus": focus,
        "title": title,
        "filename": filename,
        "copyright": copyright,
        "fieldtype": fieldtype,
      };
}
