// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'article_cubit.dart';

class ProjectsState extends Equatable {
  final Article1? article1;
  ProjectsState({this.article1});

  @override
  List<Object?> get props => [article1];

  ProjectsState copyWith({
    Article1? article1,
  }) {
    return ProjectsState(
      article1:
          article1 ?? this.article1,
    );
  }
}
