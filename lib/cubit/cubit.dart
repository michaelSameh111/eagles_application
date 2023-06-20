import 'package:eagles_application/screens/my_profile_screen/my_profile_screen.dart';
import 'package:eagles_application/screens/news_feed_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'states.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List <Widget> screens = [
    MyProfileScreen(),
    NewsFeedScreen(),
  ];

  void changeIndex (int index){
    currentIndex = index;
    emit(AppChangeDrawerState());
  }
}
