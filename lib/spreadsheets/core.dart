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
import 'package:collection/collection.dart';
import 'package:google_apps_script_library/google_apps_script_library.dart';

import 'collection/collection.dart';
import 'scheme/scheme.dart';

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
class SpreadSheetsDatabaseUniverseGas {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final SpreadSheet spreadSheet;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final List<SpreadSheetsCollectionDatabaseUniverseGas> collections;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SpreadSheetsDatabaseUniverseGas({
    required this.spreadSheet,
    required this.collections,
  });

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static SpreadSheetsDatabaseUniverseGas open({
    required String sheetIdOrUrl,
    required List<SpreadSheetsSchemeDatabaseUniverseGas> schemes,
  }) {
    final SpreadSheet spreadSheet = SpreadSheetApp.openByUrlOrId(
      sheetIdOrUrl: sheetIdOrUrl,
    );
    return SpreadSheetsDatabaseUniverseGas(
      spreadSheet: spreadSheet,
      collections: schemes.map((e) {
        return SpreadSheetsCollectionDatabaseUniverseGas(
          spreadSheetsSchemeDatabaseUniverseGas: SpreadSheetsSchemeDatabaseUniverseGas(
            sheetName: e.sheetName,
            jsonScheme: e.jsonScheme,
          ),
          spreadSheet: spreadSheet.getSheetByNameAutoCreateIfNotExist(e.sheetName),
        );
      }).toList(),
    );
  }

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SpreadSheetsCollectionDatabaseUniverseGas create({
    required SpreadSheetsSchemeDatabaseUniverseGas scheme,
    bool isAutoToCollection = true,
  }) {
    // check if found
    {
      final SpreadSheetsCollectionDatabaseUniverseGas? oldSheetsCollectionDatabaseUniverseGas = fromOrNull(scheme.sheetName);
      if (oldSheetsCollectionDatabaseUniverseGas != null) {
        return oldSheetsCollectionDatabaseUniverseGas;
      }
    }
    final SpreadSheetsCollectionDatabaseUniverseGas sheetsCollectionDatabaseUniverseGas = SpreadSheetsCollectionDatabaseUniverseGas(
      spreadSheetsSchemeDatabaseUniverseGas: SpreadSheetsSchemeDatabaseUniverseGas(
        sheetName: scheme.sheetName,
        jsonScheme: scheme.jsonScheme,
      ),
      spreadSheet: spreadSheet.getSheetByNameAutoCreateIfNotExist(scheme.sheetName),
    );

    if (isAutoToCollection) {
      collections.add(sheetsCollectionDatabaseUniverseGas);
    }
    sheetsCollectionDatabaseUniverseGas.ensureInitialized();
    sheetsCollectionDatabaseUniverseGas.initialized();

    return sheetsCollectionDatabaseUniverseGas;
  }

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  void ensureInitialized() {
    for (final element in collections) {
      element.ensureInitialized();
    }
    return;
  }

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  void initialized() {
    for (final element in collections) {
      element.initialized();
    }
    return;
  }

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SpreadSheetsCollectionDatabaseUniverseGas? fromOrNull(final String fromSheetName) {
    final SpreadSheetsCollectionDatabaseUniverseGas? spreadSheetsSchemeDatabaseUniverseGas = collections.firstWhereOrNull(
      (e) => e.spreadSheetsSchemeDatabaseUniverseGas.sheetName == fromSheetName,
    );
    if (spreadSheetsSchemeDatabaseUniverseGas == null) {
      return null;
    }
    return spreadSheetsSchemeDatabaseUniverseGas;
  }

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SpreadSheetsCollectionDatabaseUniverseGas from(final String fromSheetName) {
    final SpreadSheetsCollectionDatabaseUniverseGas? spreadSheetsSchemeDatabaseUniverseGas = fromOrNull(
      fromSheetName,
    );
    if (spreadSheetsSchemeDatabaseUniverseGas == null) {
      throw "Unknown Sheet Name";
    }
    return spreadSheetsSchemeDatabaseUniverseGas;
  }
}
