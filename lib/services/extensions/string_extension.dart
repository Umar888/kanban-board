extension StringExtension on String {
  String capitalizeFirstWord() {
    if (isEmpty) return this;
    List<String> words = split(' ');
    words[0] = words[0][0].toUpperCase() + words[0].substring(1);
    return words.join(' ');
  }
  int? calculateTimeUntil() {
    try {
      // Parse the RFC3339 datetime string
      DateTime parsedDateTime = DateTime.parse(this);

      // Get the current time
      DateTime now = DateTime.now().toUtc();

      // Compare with the current time
      if (parsedDateTime.isBefore(now)) {
        // If the date has already passed, return null
        return null;
      } else {
        // Calculate the difference in seconds
        Duration difference = parsedDateTime.difference(now);
        return difference.inSeconds;
      }
    } catch (e) {
      // If parsing fails, return null
      return null;
    }
  }
  bool isNumeric() {
    return double.tryParse(this) != null;
  }
  DateTime toDateTime() {
    if (isEmpty) {
      return DateTime.now();
    }
    return DateTime.parse(this);
  }

  String capitalizeEachWord() {
    if (isEmpty) return this;
    List<String> words = split(' ');
    for (int i = 0; i < words.length; i++) {
      if (words[i].isNotEmpty) {
        words[i] = words[i][0].toUpperCase() + words[i].substring(1);
      }
    }
    return words.join(' ');
  }
  String toNormalString() {
    return replaceAllMapped(
      RegExp(r'([a-z])([A-Z])'),
          (Match m) => '${m[1]} ${m[2]}',
    ).toLowerCase();
  }
}