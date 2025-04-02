import 'package:database_universe_gas/extensions/list.dart';
import 'package:database_universe_gas/extensions/map.dart';
import 'package:database_universe_gas/spreadsheets/scheme/scheme.dart';
import 'package:general_universe/utils/sheet/spreadsheet.dart';
import 'package:google_apps_script_library/google_apps_script_library.dart';

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
class SpreadSheetsCollectionDatabaseUniverseGas {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final SpreadSheetsSchemeDatabaseUniverseGas spreadSheetsSchemeDatabaseUniverseGas;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final Spreadsheet spreadsheet;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SpreadSheetsCollectionDatabaseUniverseGas({
    required this.spreadSheetsSchemeDatabaseUniverseGas,
    required this.spreadsheet,
  });

  List<String> _keys = [];
  int _keyLength = 0;

  bool _isEensureInitialized = false;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  List<String> get keys {
    return _keys;
  }

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int get keyLength {
    return _keyLength;
  }

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  void ensureInitialized() {
    if (_isEensureInitialized) {
      return;
    }

    _keys = spreadSheetsSchemeDatabaseUniverseGas.jsonScheme.rawData.database_universe_gas_extension_toListSpreadSheet();
    _keyLength = _keys.length;
    _isEensureInitialized = true;
    return;
  }

  void initialized() {
    return;
  }

  Map? getByIndex({
    required final int index,
  }) {
    return spreadsheet.getSheetValues(index, 1, 1, keyLength).firstOrNull.database_universe_gas_extension_spreadsheet_toJson(keys: keys);
  }

  bool deleteByIndex({
    required final int index,
    required final Map newValue,
  }) {
    final String sheetRange = SpreadsheetGeneralUniverseUtils.createRange(
      startColumn: 1,
      endRow: keyLength,
      totalLength: index,
    );
    spreadsheet.getRange(sheetRange).setValues(
      <List<Null>>[
        List.generate(keyLength, (index) {
          return null;
        }),
      ],
    );
    return true;
  }

  Map setByIndex({
    required final int index,
    required final Map newValue,
  }) {
    final String sheetRange = SpreadsheetGeneralUniverseUtils.createRange(
      startColumn: 1,
      endRow: keyLength,
      totalLength: index,
    );
    final List newValues = newValue.database_universe_gas_extension_spreadsheet_toList(
      stateKeys: keys,
      oldData: {},
    );
    spreadsheet.getRange(sheetRange).setValues(
      [
        newValues,
      ],
    );
    return newValues.database_universe_gas_extension_spreadsheet_toJson(keys: keys);
  }

  Map updateByIndex({
    required final int index,
    required final Map newValue,
  }) {
    final oldData = getByIndex(index: index) ?? {};
    final String sheetRange = SpreadsheetGeneralUniverseUtils.createRange(
      startColumn: 1,
      endRow: keyLength,
      totalLength: index,
    );
    final List newValues = newValue.database_universe_gas_extension_spreadsheet_toList(
      stateKeys: keys,
      oldData: oldData,
    );
    spreadsheet.getRange(sheetRange).setValues(
      [
        newValues,
      ],
    );
    return newValues.database_universe_gas_extension_spreadsheet_toJson(keys: keys);
  }
}
