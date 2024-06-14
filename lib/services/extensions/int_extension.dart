extension IntExtensions on int {
  // Extension method to convert seconds into dd:hh:mm:ss format
  String toDurationString() {
    int seconds = this;

    int days = seconds ~/ (24 * 3600);
    seconds %= (24 * 3600);

    int hours = seconds ~/ 3600;
    seconds %= 3600;

    int minutes = seconds ~/ 60;
    seconds %= 60;

    return '${days.toString().padLeft(2, '0')}:${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }
  String formatElapsedTime() {
    int seconds = this;
    print(seconds);

    // Calculate days, hours, minutes, and remaining seconds
    int days = seconds ~/ (24 * 3600);
    seconds %= (24 * 3600);
    int hours = seconds ~/ 3600;
    seconds %= 3600;
    int minutes = seconds ~/ 60;
    seconds %= 60;

    // Build the formatted string
    List<String> parts = [];
    if (days > 0) {
      parts.add('${days}d');
    }
    if (hours > 0) {
      parts.add('${hours}h');
    }
    if (minutes > 0) {
      parts.add('${minutes}m');
    }
    if (seconds > 0) {
      parts.add('${seconds}s');
    }

    // Handle case when all parts are zero
    if (parts.isEmpty) {
      parts.add('0s');
    }

    return parts.join(', ');
  }
}