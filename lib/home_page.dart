import 'package:animation_app/bloc/container_bloc.dart';
import 'package:animation_app/bloc/container_event.dart';
import 'package:animation_app/bloc/container_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  final String title;

  const HomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 24, 155, 89),
        title: Text(title),
      ),
      body: Center(
        child: BlocBuilder<AnimationBloc, AnimationState>(
          builder: (context, state) {
            return AnimatedContainer(
              duration: const Duration(seconds: 1),
              width: state.width,
              height: state.height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(state.color)),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          BlocProvider.of<AnimationBloc>(context).add(ContainerEvent());
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}