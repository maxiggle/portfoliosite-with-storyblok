import 'package:portfolio/model/models.dart';

extension StoryblokExtensions on StoryblokResponse? {
  Story? sectionStory(String slug) {
    try {
      final stories = this!.stories!;
      final value = stories.firstWhere((element) => element.slug == slug);

      return value;
    } catch (e) {
      return null;
    }
  }

  ContactContent? get contactContent {
    try {
      final story = sectionStory('contact');
      final value = ContactContent.fromJson(story?.content);

      return value;
    } catch (e) {
      return null;
    }
  }

  ExperienceContent? get experienceContent {
    try {
      final story = sectionStory('my-experience');
      final value = ExperienceContent.fromJson(story?.content);

      return value;
    } catch (e) {
      return null;
    }
  }

  AboutContent? get aboutContent {
    try {
      final story = sectionStory('about-me');
      final value = AboutContent.fromJson(story?.content);

      return value;
    } catch (e) {
      return null;
    }
  }

  Article1? get article1 {
    try {
      final story = sectionStory('article1');
      final value = Article1.fromJson(story?.content);
      return value;
    } catch (e) {
      return null;
    }
  }

  PortfolioHomeContent? get portfolioHomeContent {
    try {
      final story = sectionStory('portfolio-home');
      final value = PortfolioHomeContent.fromJson(story?.content);
      return value;
    } catch (e) {
      return null;
    }
  }
}
