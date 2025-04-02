/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
///
extension DatabaseUniverseGasExtensionList on List {
  Map<String, dynamic> database_universe_gas_extension_spreadsheet_toJson({
    required List<String> keys,
  }) {
    
    final Map<String, dynamic> jsonData = <String, dynamic>{};
    for (int i = 0; i < keys.length; i++) {
      jsonData[keys[i]] = this[i];
    }
    return jsonData;
  }
}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
///
extension DatabaseUniverseGasExtensionListOrNull on List? {
  Map<String, dynamic>? database_universe_gas_extension_spreadsheet_toJson({
    required List<String> keys,
  }) {
    return this?.database_universe_gas_extension_spreadsheet_toJson(keys: keys);
  }
}
