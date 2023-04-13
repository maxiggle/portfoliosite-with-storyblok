import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:portfolio/api_service.dart';
import 'package:portfolio/model/experience_content.dart';
import 'package:portfolio/storyblok_extensions.dart';
import 'package:riverbloc/riverbloc.dart';


part 'experience_state.dart';

class ExperienceCubit extends Cubit<ExperienceState> {
  ExperienceCubit() : super(ExperienceState());

  final apiService = ApiService();

  Future<void> _onFetchContent() async {
    final cache = apiService.cache;
    final experienceCache = cache.experienceContent;
    emit(state.copyWith(experienceContent: experienceCache));
  }
}

final experienceProvider = BlocProvider<ExperienceCubit, ExperienceState>(
  (ref) => ExperienceCubit().._onFetchContent(),
);
