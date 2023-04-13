// To parse this JSON data, do
//
//     final contactContent = contactContentFromJson(jsonString);

import 'dart:convert';

ContactContent contactContentFromJson(String str) =>
    ContactContent.fromJson(json.decode(str));

String contactContentToJson(ContactContent data) => json.encode(data.toJson());

class ContactContent {
  ContactContent({
    this.uid,
    this.button,
    this.headline,
    this.subText,
    this.component,
  });

  final String? uid;
  final List<dynamic>? button;
  final String? headline;
  final String? subText;
  final String? component;

  ContactContent copyWith({
    String? uid,
    List<dynamic>? button,
    String? headline,
    String? subText,
    String? component,
  }) =>
      ContactContent(
        uid: uid ?? this.uid,
        button: button ?? this.button,
        headline: headline ?? this.headline,
        subText: subText ?? this.subText,
        component: component ?? this.component,
      );

  factory ContactContent.fromJson(Map<String, dynamic> json) => ContactContent(
        uid: json["_uid"],
        button: json["button"] == null
            ? []
            : List<dynamic>.from(json["button"]!.map((x) => x)),
        headline: json["headline"],
        subText: json["sub_text"],
        component: json["component"],
      );

  Map<String, dynamic> toJson() => {
        "_uid": uid,
        "button":
            button == null ? [] : List<dynamic>.from(button!.map((x) => x)),
        "headline": headline,
        "sub_text": subText,
        "component": component,
      };

  @override
  String toString() {
    return 'ContactContent(uid: $uid, button: $button, headline: $headline, subText: $subText, component: $component)';
  }
}
