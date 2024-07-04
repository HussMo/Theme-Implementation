import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_implementation/cubit/cubit/theme_cubit.dart';
import 'package:theme_implementation/cubit/cubit/theme_state.dart';
import 'package:theme_implementation/home_view.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: (state is ThemeDark) ? ThemeData.dark() : ThemeData.light(),
            home: const HomeView(),
          );
        },
      ),
    );
  }
}
