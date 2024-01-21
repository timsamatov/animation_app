import 'package:animation_app/bloc/container_bloc.dart';
import 'package:animation_app/home_page.dart';
import 'package:animation_app/repository/container_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const  Color.fromARGB(255, 24, 155, 89)),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (context) => AnimationBloc(repository: AnimationRepository()),
        child: const HomePage(title: 'Animation Container '),
      ),
    );
  }
}


