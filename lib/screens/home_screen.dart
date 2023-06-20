// import 'package:eagles_app/cubit/cubit.dart';
// import 'package:eagles_app/cubit/states.dart';
// import 'package:eagles_app/customized_widgets/list_title_drawer.dart';
// import 'package:eagles_app/customized_widgets/reused_drawer.dart';
// import 'package:eagles_app/screens/my_profile_screen/my_profile_screen.dart';
// import 'package:eagles_app/screens/news_feed_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class HomeScreen extends StatelessWidget {
//   static const String routeName = 'home-screen';
//
//   int selectedIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (BuildContext context) => AppCubit(),
//       child: BlocConsumer <AppCubit, AppStates>(
//         listener: (context, state) {},
//         builder: (context, state) {
//           return Scaffold(
//             appBar: AppBar(
//               title: Text('My App'),
//             ),
//             body: Text('homeeeeee'),
//             drawer: ReusedDrawer(),
//             //   body: MyProfileScreen(),
//           );
//         },
//       ),
//     );
//   }
// }
