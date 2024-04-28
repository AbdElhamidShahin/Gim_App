//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:gim_app/cubit/states.dart';
//
// import '../view/Gim_view.dart';
//
//
// class AppCupit extends Cubit<AppState> {
// AppCupit() : super(AppInitalState());
//
// static AppCupit get(context) => BlocProvider.of(context);
//
// int currentIndex = 0;
// List<Widget> Screen = [
//   Gim_view(),
// ];
// void changeIndex(int index) {
// currentIndex = index;
// emit(bottomNavigationBar());
// }
// }