import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:math' as math;

import 'package:test_task/presentation/main_view/cubit/main_states.dart';

class MainCubit extends Cubit<MainStates> {
  MainCubit() : super(InitialState());

  static MainCubit get(context) => BlocProvider.of(context);
  int backgroundColor = int.parse(List.generate(10, (index) => math.Random().nextInt(9)).join().toString());
  double angle = 1;

  void changeColor() async {
    backgroundColor = int.parse(List.generate(10, (index) => math.Random().nextInt(9)).join().toString());
    emit(ChangeBackgroundColorStates());
  }

  void zoomIn() {
    angle *= 2; // Rotate by 90 degrees on each tap
    emit(ZoomInTheTextStates());
  }

  void zoomOut() {
    if (angle > 1) angle /= 2; // Rotate by 90 degrees on each tap
    emit(ZoomOutTheTextStates());
  }
}
