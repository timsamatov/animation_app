import 'package:flutter/material.dart';

sealed class AnimationState {
  final double width;
  final double height;
  final int color;

  AnimationState({
    required this.width,
    required this.height,
    required this.color,
  });
}

class AnimationInitial extends AnimationState {
  AnimationInitial() : super(width: 150, height: 50, color: Colors.blue.value);
}

class AnimationLoading extends AnimationState {
  AnimationLoading(
      {required super.width, required super.height, required super.color});
}

class AnimationSuccess extends AnimationState {
  AnimationSuccess(
      {required super.width, required super.height, required super.color});
}

class AnimationError extends AnimationState {
  AnimationError({
    double width = 0.0,
    double height = 0.0,
    int color = 0,
  }) : super(
          width: width,
          height: height,
          color: color,
        );
}
