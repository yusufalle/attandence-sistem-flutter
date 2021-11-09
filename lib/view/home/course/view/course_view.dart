import 'package:flutter/material.dart';

import '../../../../core/base/view/base_view.dart';
import '../viewmodel/course_view_model.dart';

class CourseView extends StatelessWidget {
  final String typeOfUser;
  const CourseView({Key? key, required this.typeOfUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<CourseViewModel>(
      viewModel: CourseViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (BuildContext context, CourseViewModel viewModel) => Scaffold(),
    );
  }
}