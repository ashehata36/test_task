import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:test_task/app/extension.dart';
import 'package:test_task/presentation/main_view/cubit/main_cubit.dart';
import 'package:test_task/presentation/main_view/cubit/main_states.dart';
import 'package:test_task/utilities/resources/color_manager.dart';
import 'package:test_task/utilities/resources/values_manager.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit, MainStates>(
      listener: (context, states) {},
      builder: (context, states) => GestureDetector(
        onTap: MainCubit.get(context).changeColor,
        child: Scaffold(
          backgroundColor: Color(MainCubit.get(context).backgroundColor),
          body: SafeArea(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: MainCubit.get(context).zoomIn,
                    onDoubleTap: MainCubit.get(context).zoomOut,
                    child: Transform.scale(
                      scale: MainCubit.get(context).angle,
                      child: Text(
                        "welcome_message".tr,
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: () async {
                      await Get.updateLocale(
                        Get.locale == const Locale('ar') ? const Locale('en') : const Locale('ar'),
                      );
                      await Get.forceAppUpdate();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(AppPadding.p12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            Get.locale == const Locale('ar') ? "English" : "العربية",
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          AppSize.s14.pw,
                          Icon(
                            FontAwesomeIcons.language,
                            color: ColorManager.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
