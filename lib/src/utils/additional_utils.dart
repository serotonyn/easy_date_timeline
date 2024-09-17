bool isConsecutiveDay(List<DateTime> days, DateTime testDay) {
  if (days.isEmpty) return false;

  days.sort((a, b) => a.compareTo(b));

  DateTime firstDay = days.first;
  DateTime lastDay = days.last;

  return testDay.isAfter(lastDay) && testDay.difference(lastDay).inDays == 1 ||
      testDay.isBefore(firstDay) && firstDay.difference(testDay).inDays == 1;
}

bool isLastOrFirstDay(List<DateTime> days, DateTime testDay) {
  if (days.isEmpty) return false;

  days.sort((a, b) => a.compareTo(b));

  DateTime firstDay = days.first;
  DateTime lastDay = days.last;

  return testDay.year == firstDay.year &&
          testDay.month == firstDay.month &&
          testDay.day == firstDay.day ||
      testDay.year == lastDay.year &&
          testDay.month == lastDay.month &&
          testDay.day == lastDay.day;
}

DateTime endOfDay(DateTime dateTime) {
  return DateTime(dateTime.year, dateTime.month, dateTime.day, 23, 59, 59);
}
