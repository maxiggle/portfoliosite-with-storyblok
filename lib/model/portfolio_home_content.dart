// ignore_for_file: public_member_api_docs, sort_constructors_first
// To parse this JSON data, do
//
//     final portfolioHomeContent = portfolioHomeContentFromJson(jsonString);

import 'dart:convert';

PortfolioHomeContent portfolioHomeContentFromJson(String str) =>
    PortfolioHomeContent.fromJson(json.decode(str));

String portfolioHomeContentToJson(PortfolioHomeContent data) =>
    json.encode(data.toJson());

class PortfolioHomeContent {
  PortfolioHomeContent(
      {this.uid,
      this.button,
      this.urlText,
      this.component,
      this.headline1,
      this.headline2,
      this.headline3,
      this.myDescription,
      this.myName,
      this.currentOrgName
      });

  final String? uid;
  final List<Button>? button;
  final String? urlText;
  final String? component;
  final String? headline1;
  final String? headline2;
  final String? headline3;
  final String? myDescription;
  final String? myName;
  final String? currentOrgName;

  PortfolioHomeContent copyWith({
    String? uid,
    List<Button>? button,
    String? urlText,
    String? component,
    String? headline1,
    String? headline2,
    String? headline3,
    String? myDescription,
    String? myName,
    String? currentOrgName
  }) =>
      PortfolioHomeContent(
        uid: uid ?? this.uid,
        button: button ?? this.button,
        urlText: urlText ?? this.urlText,
        component: component ?? this.component,
        headline1: headline1 ?? this.headline1,
        headline2: headline2 ?? this.headline2,
        headline3: headline3 ?? this.headline3,
        myDescription: myDescription ?? this.myDescription,
        myName: myName ?? this.myName,
        currentOrgName: currentOrgName ?? currentOrgName
      );

  factory PortfolioHomeContent.fromJson(Map<String, dynamic> json) =>
      PortfolioHomeContent(
        uid: json["_uid"],
        button: json["Button"] == null
            ? []
            : List<Button>.from(json["Button"]!.map((x) => Button.fromJson(x))),
        urlText: json["url_text"],
        component: json["component"],
        headline1: json["headline1"],
        headline2: json["headline2"],
        headline3: json["headline3"],
        myDescription: json["my_description"],
        myName: json["myName"],
        currentOrgName: json["currentOrgName"]
      );

  Map<String, dynamic> toJson() => {
        "_uid": uid,
        "Button": button == null
            ? []
            : List<dynamic>.from(button!.map((x) => x.toJson())),
        "url_text": urlText,
        "component": component,
        "headline1": headline1,
        "headline2": headline2,
        "headline3": headline3,
        "my_description": myDescription,
        "myName": myName,
        "currentOrgName":currentOrgName
      };

  @override
  String toString() {
    return 'PortfolioHomeContent(uid: $uid, button: $button, urlText: $urlText, component: $component, headline1: $headline1, headline2: $headline2, headline3: $headline3, myDescription: $myDescription, myName:$myName, currentOrgName:$currentOrgName)';
  }
}

class Button {
  Button({
    this.uid,
    this.name,
    this.component,
  });

  final String? uid;
  final String? name;
  final String? component;

  Button copyWith({
    String? uid,
    String? name,
    String? component,
  }) =>
      Button(
        uid: uid ?? this.uid,
        name: name ?? this.name,
        component: component ?? this.component,
      );

  factory Button.fromJson(Map<String, dynamic> json) => Button(
        uid: json["_uid"],
        name: json["name"],
        component: json["component"],
      );

  Map<String, dynamic> toJson() => {
        "_uid": uid,
        "name": name,
        "component": component,
      };
}
