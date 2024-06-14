import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:kanban_board/modules/home/bloc/home_bloc.dart';
import 'package:path/path.dart';

enum CountTimerFormat {
  daysHoursMinutesSeconds,
  daysHoursMinutes,
  daysHours,
  daysOnly,
  hoursMinutesSeconds,
  hoursMinutes,
  hoursOnly,
  minutesSeconds,
  minutesOnly,
  secondsOnly,
}



class CountTimerController extends ChangeNotifier {
  CountTimerController({this.endTime, this.onTimeUpdate,required this.onTimeUpdate10Sec});

  final DateTime? endTime;
  Duration _duration = Duration.zero;
  Duration _pause = Duration.zero;
  final bool _isEnd = false;
  Timer? _timer;
  Timer? _tenSecondTimer;
  bool _isPlaying = false;
  final void Function() onTimeUpdate10Sec; // Callback function
  final void Function(Duration)? onTimeUpdate; // Callback function

  bool get isActive => _timer != null && _timer!.isActive;
  Duration get duration => _duration;
  bool get isPlaying => _isPlaying;
  bool get isEnd {
    assert(endTime == null, 'endTime must be null to get isEnd');
    return _isEnd;
  }

  void setDuration({int seconds = 0}) {
    assert(endTime == null, 'endTime must be null to set duration');
    _duration = Duration(seconds: seconds);
    _pause = Duration.zero;
    _isPlaying = false;
    notifyListeners();
  }

  void start({int startFromSeconds = 0}) {
    assert(endTime == null, 'endTime must be null to start');
    if (_timer != null) return;
    _duration = Duration(seconds: startFromSeconds);
    if (_timer == null || !_timer!.isActive) {
      _startTimer();
    }
    notifyListeners();
  }

  void stop() {
    assert(endTime == null, 'endTime must be null to stop');
    if (_timer != null && _timer!.isActive) {
      _timer?.cancel();
    }
    _duration = Duration.zero;
    _pause = Duration.zero;
    _isPlaying = false;
    notifyListeners();
  }

  void reset() {
    assert(endTime == null, 'endTime must be null to reset');
    _duration = Duration.zero;
    _pause = Duration.zero;
    if (_timer != null) {
      _timer?.cancel();
    }
    notifyListeners();
  }

  void restart({int startFromSeconds = 0}) {
    assert(endTime == null, 'endTime must be null to reset');
    _duration = Duration(seconds: startFromSeconds);
    _pause = Duration.zero;
    if (_timer != null) {
      _timer?.cancel();
      start(startFromSeconds: startFromSeconds);
    }
    notifyListeners();
  }

  void pause() {
    assert(endTime == null, 'endTime must be null to pause');
    debugPrint('CountTimerController start Duration: ${_duration.inSeconds}');
    _timer?.cancel();
    _pause = _duration;
    _isPlaying = false;
    notifyListeners();
  }

  void _startTimer() {
    _isPlaying = true;
    if (_timer != null && _timer!.isActive) {
      return;
    }

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _duration = Duration(seconds: _duration.inSeconds + 1);
      if (onTimeUpdate != null) {
        if(_duration.inSeconds % 10 == 0){
          onTimeUpdate10Sec();
        }
        onTimeUpdate!(_duration); // Call the callback function
      }
      notifyListeners();
    });
  }

  @override
  void dispose() {
    if (_timer != null) {
      _timer!.cancel();
    }
    super.dispose();
  }
}




class CountTimer extends StatefulWidget {

  final CountTimerFormat format;
  final VoidCallback? onEnd;
  final bool enableDescriptions;
  final TextStyle? timeTextStyle;
  final TextStyle? colonsTextStyle;
  final TextStyle? descriptionTextStyle;
  final String daysDescription;
  final String hoursDescription;
  final String minutesDescription;
  final String secondsDescription;
  final double spacerWidth;

  final CountTimerController controller;

  const CountTimer({
    super.key,
    this.format = CountTimerFormat.daysHoursMinutesSeconds,
    this.onEnd,
    this.enableDescriptions = true,
    this.timeTextStyle,
    this.colonsTextStyle,
    this.descriptionTextStyle,
    this.daysDescription = "Days",
    this.hoursDescription = "Hours",
    this.minutesDescription = "Minutes",
    this.secondsDescription = "Seconds",
    this.spacerWidth = 10,
    required this.controller,
  });

  @override
  State<CountTimer> createState() => _CountTimerState();
}

class _CountTimerState extends State<CountTimer> {
  late String countdownDays;
  late String countdownHours;
  late String countdownMinutes;
  late String countdownSeconds;
  late Duration difference;

  @override
  void initState() {
    //widget.controller._startTimer();
    difference = widget.controller.duration;
    widget.controller.addListener(() {
      if (mounted) {
        setState(() {
          difference = widget.controller.duration;
          countdownDays = _durationToStringDays(difference);
          countdownHours = _durationToStringHours(difference);
          countdownMinutes = _durationToStringMinutes(difference);
          countdownSeconds = _durationToStringSeconds(difference);
        });
      }
      if (widget.controller._isEnd) {
        widget.onEnd!();
      }
    });

    countdownDays = _durationToStringDays(difference);
    countdownHours = _durationToStringHours(difference);
    countdownMinutes = _durationToStringMinutes(difference);
    countdownSeconds = _durationToStringSeconds(difference);

    super.initState();
  }

  @override
  void dispose() {
    // widget.controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _countTimerFormat();
  }

  String _twoDigits(int n, String unitType) {
    switch (unitType) {
      case "minutes":
        if (widget.format == CountTimerFormat.daysHoursMinutes ||
            widget.format == CountTimerFormat.hoursMinutes ||
            widget.format == CountTimerFormat.minutesOnly) {
          if (difference > Duration.zero) {
            n++;
          }
        }
        if (n >= 10) return "$n";
        return "0$n";
      case "hours":
        if (widget.format == CountTimerFormat.daysHours ||
            widget.format == CountTimerFormat.hoursOnly) {
          if (difference > Duration.zero) {
            n++;
          }
        }
        if (n >= 10) return "$n";
        return "0$n";
      case "days":
        if (widget.format == CountTimerFormat.daysOnly) {
          if (difference > Duration.zero) {
            n++;
          }
        }
        if (n >= 10) return "$n";
        return "0$n";
      default:
        if (n >= 10) return "$n";
        return "0$n";
    }
  }

  String _durationToStringDays(Duration duration) {
    return _twoDigits(duration.inDays, "days").toString();
  }

  String _durationToStringHours(Duration duration) {
    if (widget.format == CountTimerFormat.hoursMinutesSeconds ||
        widget.format == CountTimerFormat.hoursMinutes ||
        widget.format == CountTimerFormat.hoursOnly) {
      return _twoDigits(duration.inHours, "hours");
    } else {
      return _twoDigits(duration.inHours.remainder(24), "hours").toString();
    }
  }

  String _durationToStringMinutes(Duration duration) {
    if (widget.format == CountTimerFormat.minutesSeconds ||
        widget.format == CountTimerFormat.minutesOnly) {
      return _twoDigits(duration.inMinutes, "minutes");
    } else {
      return _twoDigits(duration.inMinutes.remainder(60), "minutes");
    }
  }

  String _durationToStringSeconds(Duration duration) {
    if (widget.format == CountTimerFormat.secondsOnly) {
      return _twoDigits(duration.inSeconds, "seconds");
    } else {
      return _twoDigits(duration.inSeconds.remainder(60), "seconds");
    }
  }

  Widget _colon() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: widget.spacerWidth),
      child: _TimerColumn(
        value: ':',
        // int.parse(countdownSeconds) % 2 == 0 ? ':' : ' ',
        timeTextStyle: widget.colonsTextStyle,
        description: '',
        descriptionTextStyle: widget.descriptionTextStyle,
        enableDescriptions: widget.enableDescriptions,
      ),
    );
  }

  _timeColumn({required String value, required String description}) =>
      _TimerColumn(
        value: value,
        description: description,
        descriptionTextStyle: widget.descriptionTextStyle,
        timeTextStyle: widget.timeTextStyle,
        enableDescriptions: widget.enableDescriptions,
      );

  Widget _countTimerFormat() {
    return switch (widget.format) {
      CountTimerFormat.daysHoursMinutesSeconds => Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _timeColumn(
              value: countdownDays,
              description: widget.daysDescription,
            ),
            _colon(),
            _timeColumn(
              value: countdownHours,
              description: widget.hoursDescription,
            ),
            _colon(),
            _timeColumn(
              value: countdownMinutes,
              description: widget.minutesDescription,
            ),
            _colon(),
            _timeColumn(
              value: countdownSeconds,
              description: widget.secondsDescription,
            ),
          ],
        ),
      CountTimerFormat.daysHoursMinutes => Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _timeColumn(
              value: countdownDays,
              description: widget.daysDescription,
            ),
            _colon(),
            _timeColumn(
              value: countdownHours,
              description: widget.hoursDescription,
            ),
            _colon(),
            _timeColumn(
              value: countdownMinutes,
              description: widget.minutesDescription,
            ),
          ],
        ),
      CountTimerFormat.daysHours => Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _timeColumn(
              value: countdownDays,
              description: widget.daysDescription,
            ),
            _colon(),
            _timeColumn(
              value: countdownHours,
              description: widget.hoursDescription,
            ),
          ],
        ),
      CountTimerFormat.daysOnly => Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _timeColumn(
              value: countdownDays,
              description: widget.daysDescription,
            ),
          ],
        ),
      CountTimerFormat.hoursMinutesSeconds => Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _timeColumn(
              value: countdownHours,
              description: widget.hoursDescription,
            ),
            _colon(),
            _timeColumn(
              value: countdownMinutes,
              description: widget.minutesDescription,
            ),
            _colon(),
            _timeColumn(
              value: countdownSeconds,
              description: widget.secondsDescription,
            ),
          ],
        ),
      CountTimerFormat.hoursMinutes => Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _timeColumn(
              value: countdownHours,
              description: widget.hoursDescription,
            ),
            _colon(),
            _timeColumn(
              value: countdownMinutes,
              description: widget.minutesDescription,
            ),
          ],
        ),
      CountTimerFormat.hoursOnly => Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _timeColumn(
              value: countdownHours,
              description: widget.hoursDescription,
            ),
          ],
        ),
      CountTimerFormat.minutesSeconds => Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _timeColumn(
              value: countdownMinutes,
              description: widget.minutesDescription,
            ),
            _colon(),
            _timeColumn(
              value: countdownSeconds,
              description: widget.secondsDescription,
            ),
          ],
        ),
      CountTimerFormat.minutesOnly => Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _timeColumn(
              value: countdownMinutes,
              description: widget.minutesDescription,
            ),
          ],
        ),
      CountTimerFormat.secondsOnly => Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _timeColumn(
              value: countdownSeconds,
              description: widget.secondsDescription,
            ),
          ],
        ),
    };
  }
}

class _TimerColumn extends StatelessWidget {
  const _TimerColumn({
    required this.value,
    this.timeTextStyle,
    this.descriptionTextStyle,
    this.enableDescriptions = true,
    this.description,
  }) : assert(enableDescriptions != true || description != null,
            'description must not be null when enableDescriptions is true');
  final String value;
  final TextStyle? timeTextStyle;
  final String? description;
  final TextStyle? descriptionTextStyle;
  final bool enableDescriptions;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          value,
          style: timeTextStyle,
        ),
        if (enableDescriptions)
          Text(
            "$description",
            style: descriptionTextStyle,
          ),
      ],
    );
  }
}
