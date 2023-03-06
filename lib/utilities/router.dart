import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/presentation/main_view/cubit/main_cubit.dart';
import 'package:test_task/presentation/main_view/main_view.dart';
import 'package:test_task/utilities/routes.dart';

Route<dynamic> onGenerate(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AppRoutes.mainViewRoute:
      return CupertinoPageRoute(
        builder: (_) => BlocProvider<MainCubit>(
          create: (context) => MainCubit(),
          child: const MainView(),
        ),
        settings: routeSettings,
      );
    default:
      return CupertinoPageRoute(
        builder: (_) => Container(),
        settings: routeSettings,
      );
  }
}
