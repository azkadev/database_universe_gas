final RegExp _regExpWord = RegExp(r"^(\w+)$", caseSensitive: false);

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
extension DatabaseUniverseGasExtensionMap on Map {
  List database_universe_gas_extension_spreadsheet_toList({
    required final List<String> stateKeys,
    required final Map oldData,
  }) {
    final List datas = [];

    for (final stateKey in stateKeys) {
      //
      //
      /// check dahulu apakah value saat ini ada 
      /// key
      if (containsKey(stateKey)) {
        // jika ada tambahkan data
        datas.add(this[stateKey]);
      } else {
        // jika tidak ada key di value saat ini
        // check dahulu apakah ada value di old data
        // 
        if (oldData.containsKey(stateKey)) {
          // jika ada tambahkan old data
          datas.add(oldData[stateKey]);
        } else {
          // jika tidak ada tambahkan nilai null
          datas.add(null);
        }
      }
      //
    }
    return datas;
  }

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int database_universe_gas_extension_getLength() {
    int count = 0;
    for (final element in keys) {
      if (element is String) {
        if (_regExpWord.hasMatch(element)) {
          count++;
        }
      }
    }
    return count;
  }

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  List<String> database_universe_gas_extension_toListSpreadSheet() {
    final List<String> datas = [];
    for (final element in keys) {
      if (element is String) {
        if (_regExpWord.hasMatch(element)) {
          datas.add(element);
        }
      }
    }
    return datas;
  }
}
