import 'package:get/get.dart';
import 'dart:async';

/// A countdown timer controller using GetX.
/// - Starts automatically when created.
/// - Exposes remaining seconds as RxInt so UI updates smoothly with Obx().
/// - Can format time as HH:MM:SS or split hours/minutes/seconds individually.
class TimeController extends GetxController {
  final Duration initialDuration;

  TimeController({required this.initialDuration});

  // -------------------- Lifecycle --------------------
  @override
  void onInit() {
    super.onInit();
    _start(initialDuration);
  }

  @override
  void onClose() {
    _ticker?.cancel();
    _ticker = null;
    super.onClose();
  }

  // -------------------- State --------------------
  final RxInt remainingSeconds = 0.obs;
  final RxBool isFinished = false.obs;

  DateTime? _endTime;
  Timer? _ticker;

  // -------------------- Core Logic --------------------
  void _start(Duration duration) {
    _ticker?.cancel();
    _endTime = DateTime.now().add(duration);
    _updateRemaining();
    _ticker = Timer.periodic(
      const Duration(seconds: 1),
      (_) => _updateRemaining(),
    );
  }

  void _updateRemaining() {
    if (_endTime == null) return;

    final Duration diff = _endTime!.difference(DateTime.now());
    final int secondsLeft = diff.inSeconds;

    if (secondsLeft <= 0) {
      remainingSeconds.value = 0;
      isFinished.value = true;
      _ticker?.cancel();
      _ticker = null;
      return;
    }

    remainingSeconds.value = secondsLeft;
    if (isFinished.value) isFinished.value = false;
  }

  // -------------------- Helpers --------------------

  /// Hours left
  int get hours => remainingSeconds.value ~/ 3600;

  /// Minutes left (after hours removed)
  int get minutes => (remainingSeconds.value % 3600) ~/ 60;

  /// Seconds left (after hours + minutes removed)
  int get seconds => remainingSeconds.value % 60;

  /// Returns formatted time string as HH:MM:SS ساعة
  String get formattedTime {
    final int totalSeconds = remainingSeconds.value;

    if (totalSeconds <= 0) return "00:00:00 ساعة";

    return "${hours.toString().padLeft(2, '0')}:"
        "${minutes.toString().padLeft(2, '0')}:"
        "${seconds.toString().padLeft(2, '0')} ساعة";
  }

  void reset(Duration newDuration) => _start(newDuration);

  void stop() {
    _ticker?.cancel();
    _ticker = null;
  }
}
