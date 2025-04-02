/* <!-- START LICENSE -->


This Software / Program / Source Code Created By Developer From Company GLOBAL CORPORATION
Social Media:

   - Youtube: https://youtube.com/@Global_Corporation 
   - Github: https://github.com/globalcorporation
   - TELEGRAM: https://t.me/GLOBAL_CORP_ORG_BOT

All code script in here created 100% original without copy / steal from other code if we copy we add description source at from top code

If you wan't edit you must add credit me (don't change)

If this Software / Program / Source Code has you

Jika Program ini milik anda dari hasil beli jasa developer di (Global Corporation / apapun itu dari turunan itu jika ada kesalahan / bug / ingin update segera lapor ke sub)

Misal anda beli Beli source code di Slebew CORPORATION anda lapor dahulu di slebew jangan lapor di GLOBAL CORPORATION!

Jika ada kendala program ini (Pastikan sebelum deal project tidak ada negosiasi harga)
Karena jika ada negosiasi harga kemungkinan

1. Software Ada yang di kurangin
2. Informasi tidak lengkap
3. Bantuan Tidak Bisa remote / full time (Ada jeda)

Sebelum program ini sampai ke pembeli developer kami sudah melakukan testing

jadi sebelum nego kami sudah melakukan berbagai konsekuensi jika nego tidak sesuai ? 
Bukan maksud kami menipu itu karena harga yang sudah di kalkulasi + bantuan tiba tiba di potong akhirnya bantuan / software kadang tidak lengkap


<!-- END LICENSE --> */
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

  bool _isEnsureInitialized = false;
  bool _isInitialized = false;

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
    if (_isEnsureInitialized) {
      return;
    }

    _keys = spreadSheetsSchemeDatabaseUniverseGas.jsonScheme.rawData.database_universe_gas_extension_toListSpreadSheet();
    _keyLength = _keys.length;
    _isEnsureInitialized = true;
    return;
  }

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  void initialized() {
    if (_isInitialized) {
      return;
    }
    // column 1
    final String sheetRange = SpreadsheetGeneralUniverseUtils.createRange(
      startColumn: 1,
      endRow: keyLength,
      totalLength: 1,
    );
    spreadsheet.getRange(sheetRange).setValues(
      [
        keys,
      ],
    );
    _isInitialized = true;
    return;
  }

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int count() {
    return spreadsheet.getLastRow();
  }
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer

  Map insert({
    required Map newValue,
  }) {
    return setByIndex(
      index: count() + 1,
      newValue: newValue,
    );
  }

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer

  List<List?> getValuesRaw({
    int startOffset = 2,
    int limit = 1000,
    int startRow = 1,
    int endRow = 0,
  }) {
    {
      if (startOffset < 2) {
        startOffset = 2;
      }
    }
    {
      if (endRow < 1) {
        endRow = keyLength;
      } else if (endRow > keyLength) {
        endRow = keyLength;
      }
    }
    //   int index = 2;
    return spreadsheet.getSheetValues(startOffset, startRow, limit, endRow).map((e) {
      if (e.database_universe_gas_extension_spreadsheet_isEmpty) {
        return null;
      }
      return e;
    }).toList();
  }

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer

  List<Map?> getValues({
    int startOffset = 2,
    required int limit,
  }) {
    final List<String> keys = this.keys;
    return getValuesRaw(
      startOffset: startOffset,
      limit: limit,
      startRow: 1,
      endRow: keys.length,
    ).map((e) {
      return e.database_universe_gas_extension_spreadsheet_toJson(
        keys: keys,
      );
    }).toList();
  }

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  Map? getByIndex({
    required final int index,
  }) {
    final Map? value = spreadsheet.getSheetValues(index, 1, 1, keyLength).firstOrNull.database_universe_gas_extension_spreadsheet_toJson(keys: keys);
    // if (value != null) {
    //   value["@id"] = index;
    // }

    return value;
  }

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  bool deleteByIndex({
    required final int index,
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

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
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

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
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
