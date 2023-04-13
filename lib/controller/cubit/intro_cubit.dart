import 'package:equatable/equatable.dart';
import 'package:riverbloc/riverbloc.dart';
import 'package:portfolio/api_service.dart';
import 'package:portfolio/model/portfolio_home_content.dart';
import 'package:portfolio/storyblok_extensions.dart';
part 'intro_state.dart';

class IntroCubit extends Cubit<IntroState> {
  IntroCubit() : super(IntroState());

  final apiService = ApiService();

  Future<void> _onFetchContent() async {
    final cache = apiService.cache;
    final homeContent = cache.portfolioHomeContent;
    emit(state.copyWith(introContent: homeContent));
    final response = await apiService.getData();
    final updatedhomeContent = response.portfolioHomeContent;
    emit(state.copyWith(introContent: updatedhomeContent));
  }
}

final portfolioHomeContentProvider = BlocProvider<IntroCubit, IntroState>(
  ((ref) => IntroCubit().._onFetchContent()),
);
