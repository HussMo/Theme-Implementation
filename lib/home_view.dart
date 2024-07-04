import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_implementation/cubit/cubit/theme_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Theme"),
        ),
        body: const Column(
          children: [
            Center(child: Text("Description")),
            SizedBox(height: 20),
            ThemeSwitchButtons(),
          ],
        ),
      ),
    );
  }
}

class ThemeSwitchButtons extends StatelessWidget {
  const ThemeSwitchButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _themeButton(
          context: context,
          themeMode: 'light',
          onPressed: () => context.read<ThemeCubit>().lightTheme(),
        ),
        _themeButton(
          context: context,
          themeMode: 'dark',
          onPressed: () => context.read<ThemeCubit>().darkTheme(),
        ),
      ],
    );
  }

  Widget _themeButton({
    required BuildContext context,
    required String themeMode,
    required VoidCallback onPressed,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(themeMode),
    );
  }
}