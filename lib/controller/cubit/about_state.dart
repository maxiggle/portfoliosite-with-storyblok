// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:portfolio/model/models.dart';

class AboutState extends Equatable {
  const AboutState({
    this.aboutContent,
  });

  final AboutContent? aboutContent;

  @override
  List<Object?> get props => [aboutContent];

  AboutState copyWith({
    AboutContent? aboutContent,
  }) {
    return AboutState(
      aboutContent: aboutContent ?? this.aboutContent,
    );
  }
}
