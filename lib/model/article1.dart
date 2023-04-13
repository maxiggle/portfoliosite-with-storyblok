
import 'dart:convert';

class Article1 {
    Article1({
        this.uid,
        this.articleUrl,
        this.articleImage,
        this.articleTitle,
        this.projectHeadline,
        this.articleDescription,
    });

    final String? uid;
    final ArticleUrl? articleUrl;
    final ArticleImage? articleImage;
    final String? articleTitle;
    final String? projectHeadline;
    final String? articleDescription;

    Article1 copyWith({
        String? uid,
        ArticleUrl? articleUrl,
        ArticleImage? articleImage,
        String? articleTitle,
        String? projectHeadline,
        String? articleDescription,
    }) => 
        Article1(
            uid: uid ?? this.uid,
            articleUrl: articleUrl ?? this.articleUrl,
            articleImage: articleImage ?? this.articleImage,
            articleTitle: articleTitle ?? this.articleTitle,
            projectHeadline: projectHeadline ?? this.projectHeadline,
            articleDescription: articleDescription ?? this.articleDescription,
        );

    factory Article1.fromRawJson(String str) => Article1.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Article1.fromJson(Map<String, dynamic> json) => Article1(
        uid: json["_uid"],
        articleUrl: json["article_url"] == null ? null : ArticleUrl.fromJson(json["article_url"]),
        articleImage: json["articleImage"] == null ? null : ArticleImage.fromJson(json["articleImage"]),
        articleTitle: json["article_title"],
        projectHeadline: json["project_headline"],
        articleDescription: json["article_description"],
    );

    Map<String, dynamic> toJson() => {
        "_uid": uid,
        "article_url": articleUrl?.toJson(),
        "articleImage": articleImage?.toJson(),
        "article_title": articleTitle,
        "project_headline": projectHeadline,
        "article_description": articleDescription,
    };
}

class ArticleImage {
    ArticleImage({
        this.filename,
    });

    final String? filename;

    ArticleImage copyWith({
        String? filename,
    }) => 
        ArticleImage(
            filename: filename ?? this.filename,
        );

    factory ArticleImage.fromRawJson(String str) => ArticleImage.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ArticleImage.fromJson(Map<String, dynamic> json) => ArticleImage(
        filename: json["filename"],
    );

    Map<String, dynamic> toJson() => {
        "filename": filename,
    };
}

class ArticleUrl {
    ArticleUrl({
        this.url,
        this.cachedUrl,
    });

    final String? url;
    final String? cachedUrl;

    ArticleUrl copyWith({
        String? url,
        String? cachedUrl,
    }) => 
        ArticleUrl(
            url: url ?? this.url,
            cachedUrl: cachedUrl ?? this.cachedUrl,
        );

    factory ArticleUrl.fromRawJson(String str) => ArticleUrl.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ArticleUrl.fromJson(Map<String, dynamic> json) => ArticleUrl(
        url: json["url"],
        cachedUrl: json["cached_url"],
    );

    Map<String, dynamic> toJson() => {
        "url": url,
        "cached_url": cachedUrl,
    };
}
