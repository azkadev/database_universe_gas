// ignore_for_file: non_constant_identifier_names

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
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
///
extension DatabaseUniverseGasExtensionList on List {
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  bool get database_universe_gas_extension_spreadsheet_isEmpty {
    int count = 0;
    for (final element in this) {
      if (element == null) {
        count++;
      } else if (element is String && element.isEmpty) {
        count++;
      }
    }
    return count == length;
  }

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  bool get database_universe_gas_extension_spreadsheet_isNotEmpty {
    return database_universe_gas_extension_spreadsheet_isEmpty == false;
  }

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
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
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  Map<String, dynamic>? database_universe_gas_extension_spreadsheet_toJson({
    required List<String> keys,
  }) {
    return this?.database_universe_gas_extension_spreadsheet_toJson(keys: keys);
  }
}
