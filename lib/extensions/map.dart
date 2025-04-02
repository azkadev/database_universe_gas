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
final RegExp _regExpWord = RegExp(r"^(\w+)$", caseSensitive: false);

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
extension DatabaseUniverseGasExtensionMap on Map {
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
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
