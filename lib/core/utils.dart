class Utils {
  static String capitalize(String string) {
    return '${string[0].toUpperCase()}${string.substring(1)}';
  }

  static String capitalizeAll(String string) {
    return string
        .split(' ')
        .map((s) => '${s[0].toUpperCase()}${s.substring(1)} ')
        .join();
  }

  static List<String> orderedListToList(List<String> ol) {
    return ol
        .reduce((value, element) => value + element)
        .replaceAll(
          RegExp(r"(\d{1,2}\.)"),
          '_',
        )
        .substring(1)
        .trim()
        .split('_')
        .where((element) => element.isNotEmpty)
        .toList();
  }

  static String toImageAssetName(String string) {
    return 'assets/${string.replaceAll('\n', ' ').replaceAll(' ', '_')}.png';
  }
}
