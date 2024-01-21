import 'package:animation_app/bloc/container_event.dart';
import 'package:animation_app/bloc/container_state.dart';
import 'package:animation_app/repository/container_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnimationBloc extends Bloc<AnimationEvent, AnimationState> {
  final AnimationRepository repository;

  AnimationBloc({required this.repository}) : super(AnimationInitial()) {
    on<ContainerEvent>((event, emit) async {
      try {
        final Map<String, dynamic> attributes = await repository.Containers();
        emit(AnimationSuccess(
          width: attributes['width'],
          height: attributes['height'],
          color: attributes['color'],
        ));
      } catch (e) {
        emit(AnimationError());
      }
    });
  }
}