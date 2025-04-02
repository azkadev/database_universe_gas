import 'package:collection/collection.dart';
import 'package:google_apps_script_library/google_apps_script_library.dart';

import 'collection/collection.dart';
import 'scheme/scheme.dart';
 
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
class SpreadSheetsDatabaseUniverseGas {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final Spreadsheet spreadsheet;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final List<SpreadSheetsCollectionDatabaseUniverseGas> collections;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SpreadSheetsDatabaseUniverseGas({
    required this.spreadsheet,
    required this.collections,
  });

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static SpreadSheetsDatabaseUniverseGas open({
    required String sheetIdOrUrl,
    required List<SpreadSheetsSchemeDatabaseUniverseGas> schemes,
  }) {
    final Spreadsheet spreadsheet = SpreadsheetApp.openByUrlOrId(
      sheetIdOrUrl: sheetIdOrUrl,
    );
    return SpreadSheetsDatabaseUniverseGas(
      spreadsheet: spreadsheet,
      collections: schemes.map((e) {
        return SpreadSheetsCollectionDatabaseUniverseGas(
          spreadSheetsSchemeDatabaseUniverseGas: SpreadSheetsSchemeDatabaseUniverseGas(
            sheetName: e.sheetName,
            jsonScheme: e.jsonScheme,
          ),
          spreadsheet: spreadsheet.getSheetByNameAutoCreateIfNotExist(e.sheetName),
        );
      }).toList(),
    );
  }

  void ensureInitialized() {
    for (final element in collections) {
      element.ensureInitialized();
    }
    return;
  }

  void initialized() {
    for (final element in collections) {
      element.initialized();
    }
    return;
  }

  SpreadSheetsCollectionDatabaseUniverseGas from(final String fromSheetName) {
    final SpreadSheetsCollectionDatabaseUniverseGas? spreadSheetsSchemeDatabaseUniverseGas = collections.firstWhereOrNull(
      (e) => e.spreadSheetsSchemeDatabaseUniverseGas.sheetName == fromSheetName,
    );
    if (spreadSheetsSchemeDatabaseUniverseGas == null) {
      throw "Unknown Sheet Name";
    }
    return spreadSheetsSchemeDatabaseUniverseGas;
  }
}
 