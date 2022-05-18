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

  static String checkEquivalent(String string) {
    return string.contains('~=') ? string.replaceAll('~=', ' |') : string;
  }

  static String toImageAssetName(String string) {
    return 'assets/${string.replaceAll('\n', ' ').replaceAll(' ', '_')}.webp';
  }
}
