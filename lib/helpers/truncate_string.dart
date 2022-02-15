extension Truncate on String {
  String truncate({int max, String suffix = ''}) {
    return length < max
        ? this
        : '${substring(0, substring(0, max - suffix.length).lastIndexOf(" "))}$suffix' +
            "...";
  }
}
