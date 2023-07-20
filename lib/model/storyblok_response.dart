import 'dart:convert';
import 'package:flutter/foundation.dart';

class StoryblokResponse {
  final List<Story>? stories;
  final int? cv;

  StoryblokResponse({
    this.stories,
    this.cv,
  });

  StoryblokResponse copyWith({
    List<Story>? stories,
    int? cv,
  }) {
    return StoryblokResponse(
      stories: stories ?? this.stories,
      cv: cv ?? this.cv,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'stories': stories?.map((x) => x.toMap()).toList(),
      'cv': cv,
    };
  }

  factory StoryblokResponse.fromMap(Map<String, dynamic> map) {
    return StoryblokResponse(
      stories: map['stories'] != null
          ? List<Story>.from(map['stories']?.map((x) => Story.fromMap(x)))
          : null,
      cv: map['cv']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory StoryblokResponse.fromJson(String source) =>
      StoryblokResponse.fromMap(json.decode(source));

  @override
  String toString() => 'StoryblokResponse(stories: $stories, cv: $cv)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is StoryblokResponse &&
        listEquals(other.stories, stories) &&
        other.cv == cv;
  }

  @override
  int get hashCode => stories.hashCode ^ cv.hashCode;
}

class Story {
  Story({
    this.name,
    this.createdAt,
    this.publishedAt,
    this.id,
    this.uuid,
    this.content,
    this.slug,
    this.fullSlug,
    this.firstPublishedAt,
  });

  final String? name;
  final DateTime? createdAt;
  final DateTime? publishedAt;
  final int? id;
  final String? uuid;
  final dynamic content;
  final String? slug;
  final String? fullSlug;
  final DateTime? firstPublishedAt;
  Story copyWith({
    String? name,
    DateTime? createdAt,
    DateTime? publishedAt,
    int? id,
    String? uuid,
    dynamic content,
    String? slug,
    String? fullSlug,
    DateTime? firstPublishedAt,
  }) {
    return Story(
      name: name ?? this.name,
      createdAt: createdAt ?? this.createdAt,
      publishedAt: publishedAt ?? this.publishedAt,
      id: id ?? this.id,
      uuid: uuid ?? this.uuid,
      content: content ?? this.content,
      slug: slug ?? this.slug,
      fullSlug: fullSlug ?? this.fullSlug,
      firstPublishedAt: firstPublishedAt ?? this.firstPublishedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'createdAt': createdAt?.millisecondsSinceEpoch,
      'publishedAt': publishedAt?.millisecondsSinceEpoch,
      'id': id,
      'uuid': uuid,
      'content': content,
      'slug': slug,
      'fullSlug': fullSlug,
      'firstPublishedAt': firstPublishedAt?.millisecondsSinceEpoch,
    };
  }

  factory Story.fromMap(Map<String, dynamic> map) {
    return Story(
      name: map['name'],
      createdAt: map['createdAt'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['createdAt'])
          : null,
      publishedAt: map['publishedAt'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['publishedAt'])
          : null,
      id: map['id']?.toInt(),
      uuid: map['uuid'],
      content: map['content'] ?? null,
      slug: map['slug'],
      fullSlug: map['fullSlug'],
      firstPublishedAt: map['firstPublishedAt'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['firstPublishedAt'])
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Story.fromJson(String source) => Story.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Story(name: $name, createdAt: $createdAt, publishedAt: $publishedAt, id: $id, uuid: $uuid, content: $content, slug: $slug, fullSlug: $fullSlug,firstPublishedAt: $firstPublishedAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Story &&
        other.name == name &&
        other.createdAt == createdAt &&
        other.publishedAt == publishedAt &&
        other.id == id &&
        other.uuid == uuid &&
        other.content == content &&
        other.slug == slug &&
        other.fullSlug == fullSlug &&
        other.firstPublishedAt == firstPublishedAt;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        createdAt.hashCode ^
        publishedAt.hashCode ^
        id.hashCode ^
        uuid.hashCode ^
        content.hashCode ^
        slug.hashCode ^
        fullSlug.hashCode ^
        firstPublishedAt.hashCode;
  }
}
