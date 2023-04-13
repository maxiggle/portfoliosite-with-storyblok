import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/controller/generalController.dart';
import 'package:portfolio/resource/app_class.dart';
import 'package:portfolio/view/about/aboutWeb.dart';
import 'package:portfolio/view/experience/experience.dart';
import 'package:portfolio/view/intro/intro.dart';
import 'package:portfolio/view/widget/appBar.dart';
import 'package:portfolio/view/widget/leftPane.dart';
import 'package:portfolio/view/work/work.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import 'contact/contact.dart';

class RootScreen extends ConsumerStatefulWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends ConsumerState<RootScreen> {
  final aScrollController = AutoScrollController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                Color(0xff0b0d0f),
                Color(0xff0b0d0f),
                Color(0xff0b0d0f)
              ])),
          height: AppClass().getMqHeight(context),
          child: Column(
            children: [
              Expanded(
                child: () {
                  return Row(
                    children: [
                      Expanded(
                          flex: 8,
                          child: ListView(
                            controller: aScrollController,
                            children: [
                              AutoScrollTag(
                                  key: ValueKey(0),
                                  controller: aScrollController,
                                  index: 0,
                                  child: IntroContent(aScrollController)),
                              AutoScrollTag(
                                  key: ValueKey(1),
                                  controller: aScrollController,
                                  index: 1,
                                  child: Intro()),
                              AutoScrollTag(
                                  key: ValueKey(2),
                                  controller: aScrollController,
                                  index: 2,
                                  child: Experience()),
                              AutoScrollTag(
                                  key: ValueKey(3),
                                  controller: aScrollController,
                                  index: 3,
                                  child: Work()),
                              AutoScrollTag(
                                  key: ValueKey(4),
                                  controller: aScrollController,
                                  index: 4,
                                  child: Contact())
                            ],
                          )),
                      // scrType == ScreenType.mobile ? SizedBox() : RightPane(),
                    ],
                  );
                }(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
