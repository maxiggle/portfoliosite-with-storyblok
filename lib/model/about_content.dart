// ignore_for_file: public_member_api_docs, sort_constructors_first
// To parse this JSON data, do
//
//     final aboutContent = aboutContentFromJson(jsonString);

import 'dart:convert';

class AboutContent {
  AboutContent({
    this.uid,
    this.myImage,
    this.aboutMe,
    this.headline,
    this.component,
  });

  final String? uid;
  final MyImage? myImage;
  final String? aboutMe;
  final String? headline;
  final String? component;

  AboutContent copyWith({
    String? uid,
    MyImage? myImage,
    String? aboutMe,
    String? headline,
    String? component,
  }) =>
      AboutContent(
        uid: uid ?? this.uid,
        myImage: myImage ?? this.myImage,
        aboutMe: aboutMe ?? this.aboutMe,
        headline: headline ?? this.headline,
        component: component ?? this.component,
      );

  factory AboutContent.fromRawJson(String str) =>
      AboutContent.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AboutContent.fromJson(Map<String, dynamic> json) => AboutContent(
        uid: json["_uid"],
        myImage:
            json["myImage"] == null ? null : MyImage.fromJson(json["myImage"]),
        aboutMe: json["about_me"],
        headline: json["headline"],
        component: json["component"],
      );

  Map<String, dynamic> toJson() => {
        "_uid": uid,
        "myImage": myImage?.toJson(),
        "about_me": aboutMe,
        "headline": headline,
        "component": component,
      };

  @override
  String toString() {
    return 'AboutContent(myImage: $myImage)';
  }
}

class MyImage {
  MyImage({
    this.filename,
  });

  final String? filename;

  MyImage copyWith({
    String? filename,
  }) =>
      MyImage(
        filename: filename ?? this.filename,
      );

  factory MyImage.fromRawJson(String str) => MyImage.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MyImage.fromJson(Map<String, dynamic> json) => MyImage(
        filename: json["filename"],
      );

  Map<String, dynamic> toJson() => {
        "filename": filename,
      };

  @override
  String toString() => 'MyImage(filename: $filename)';
}
