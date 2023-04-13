// To parse this JSON data, do
//
//     final experienceContent = experienceContentFromJson(jsonString);

import 'dart:convert';

ExperienceContent experienceContentFromJson(String str) =>
    ExperienceContent.fromJson(json.decode(str));

String experienceContentToJson(ExperienceContent data) =>
    json.encode(data.toJson());

class ExperienceContent {
  ExperienceContent({
    this.uid,
    this.company,
    this.duration,
    this.headline,
    this.component,
    this.workTitle,
  });

  final String? uid;
  final String? company;
  final String? duration;
  final String? headline;
  final String? component;
  final String? workTitle;

  ExperienceContent copyWith({
    String? uid,
    String? company,
    String? duration,
    String? headline,
    String? component,
    String? workTitle,
  }) =>
      ExperienceContent(
        uid: uid ?? this.uid,
        company: company ?? this.company,
        duration: duration ?? this.duration,
        headline: headline ?? this.headline,
        component: component ?? this.component,
        workTitle: workTitle ?? this.workTitle,
      );

  factory ExperienceContent.fromJson(Map<String, dynamic> json) =>
      ExperienceContent(
        uid: json["_uid"],
        company: json["company"],
        duration: json["duration"],
        headline: json["headline"],
        component: json["component"],
        workTitle: json["work_title"],
      );

  Map<String, dynamic> toJson() => {
        "_uid": uid,
        "company": company,
        "duration": duration,
        "headline": headline,
        "component": component,
        "work_title": workTitle,
      };

  @override
  String toString() {
    return 'ExperienceContent(uid: $uid, company: $company, duration: $duration, headline: $headline, component: $component, workTitle: $workTitle)';
  }
}
