import 'package:intl/intl.dart';

extension TimeX on String {
  String get getFormattedDate {
    try {
      DateTime dateTime = DateTime.parse(this);
      final date = DateFormat("d MMM yyyy").format(dateTime);
      return "on $date";
    } catch (e) {
      return "Invalid date";
    }
  }

  String get getFormattedDateOnly {
    try {
      DateTime dateTime = DateTime.parse(this);
      final date = DateFormat("d MMM yyyy").format(dateTime);
      return date;
    } catch (e) {
      return "Invalid date";
    }
  }

  String get getFormattedMonthDate {
    try {
      DateTime dateTime = DateTime.parse(this);
      final date = DateFormat("d MMM yyyy").format(dateTime);
      final time = DateFormat("h:mm a").format(dateTime);

      // Convert "AM" and "PM" to "A.M." and "P.M."
      final formattedTime = time.replaceAll("AM", "A.M.").replaceAll("PM", "P.M.");

      return "$date . $formattedTime";
    } catch (e) {
      return "Invalid date";
    }
  }

  String get getFormattedMonthTimeDate {
    try {
      DateTime dateTime = DateTime.parse(this);
      final date = DateFormat("d MMM").format(dateTime);
      final time = DateFormat("h:mm a").format(dateTime);

      return "$date . $time";
    } catch (e) {
      return "Invalid date";
    }
  }

  String get toFormattedDatProperties {
    try {
      DateTime dateTime = DateTime.parse(this);

      // List of month names
      const List<String> months = [
        'January',
        'February',
        'March',
        'April',
        'May',
        'June',
        'July',
        'August',
        'September',
        'October',
        'November',
        'December'
      ];

      // Format the date
      String day = dateTime.day.toString();
      String month = months[dateTime.month - 1];
      String year = dateTime.year.toString();

      return '$day $month $year';
    } catch (e) {
      return "Invalid date";
    }
  }

  String get getFormattedMonth {
    try {
      DateTime dateTime = DateTime.parse(this);
      final date = DateFormat("d MMM").format(dateTime);
      return date;
    } catch (e) {
      return "Invalid date";
    }
  }

  String get getFormattedMonthWithYear {
    try {
      DateTime dateTime = DateTime.parse(this);
      final date = DateFormat("d MMM yyy").format(dateTime);
      return date;
    } catch (e) {
      return "Invalid date";
    }
  }

  String get getFullFormattedDate {
    try {
      DateTime dateTime = DateTime.parse(this);
      final time = DateFormat("hh:mm a").format(dateTime);
      final date = DateFormat("dd MMMM yyyy").format(dateTime);

      return "$time $date";
    } catch (e) {
      return "Invalid date";
    }
  }
}
