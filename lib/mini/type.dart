import 'package:google_apps_script_library/google_apps_script_library.dart';

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
enum MiniDatabaseUniverseGasType {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  document,

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  script,

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  user,

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  unknown;

  const MiniDatabaseUniverseGasType();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static final List<MiniDatabaseUniverseGasType> realValues = values.toList()..remove(MiniDatabaseUniverseGasType.unknown);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static MiniDatabaseUniverseGasType fromText({
    required String text,
  }) {
    for (final element in realValues) {
      if (element.name == text) {
        return element;
      }
    }
    return MiniDatabaseUniverseGasType.unknown;
  }

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  PropertiesServiceProperties? toPropertiesServiceProperties() {
    if (this == MiniDatabaseUniverseGasType.document) {
      return PropertiesService.getDocumentProperties();
    } else if (this == MiniDatabaseUniverseGasType.script) {
      return PropertiesService.getScriptProperties();
    } else if (this == MiniDatabaseUniverseGasType.user) {
      return PropertiesService.getUserProperties();
    }
    return null;
  }

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  PropertiesServiceProperties toPropertiesServicePropertiesOrError() {
    final value = toPropertiesServiceProperties();
    if (value == null) {
      throw "cant convert ${name} to PropertiesServiceProperties";
    }
    return value;
  }
}
