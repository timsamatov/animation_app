import 'dart:math';

class AnimationRepository {
  final Random _random = Random();

  Future<Map<String, dynamic>> Containers() async {
    final List<double> widthSizes = [100.0, 150.0, 200.0, 250.0];
    final int randomWidth = _random.nextInt(widthSizes.length);
    final double widthSize = widthSizes[randomWidth];
    final List<double> heightSizes = [25.0, 50.0, 100.0, 150.0];
    final int randomHeight = _random.nextInt(heightSizes.length);
    final double heightSize = heightSizes[randomHeight];
    final int randomColor = _random.nextInt(0xFFFFFFFF);

    return {
      'width': widthSize,
      'height': heightSize,
      'color': randomColor,
    };
  }
}
