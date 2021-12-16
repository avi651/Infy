import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infy_dem/presentation/home_screen.dart';
import 'application/home_cubit.dart';
import 'dependency_injection/dependency_injection.dart';
import 'package:infy_dem/dependency_injection/dependency_injection.dart' as di;

void main() {
  di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<HomeCubit>(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'InfyDem',
        home: HomeScreen(),
      ),
    );
  }
}
