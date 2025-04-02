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
import 'dart:convert';

import 'package:database_universe_gas/database_universe_gas.dart';
import 'package:database_universe_gas/spreadsheets/collection/collection.dart';
import 'package:database_universe_gas/spreadsheets/core.dart';
import 'package:database_universe_gas/spreadsheets/scheme/core.dart';
import 'package:general_universe/extension/extension.dart';
// import 'package:general_universe/crypto/crypto.dart';
import 'package:general_universe/general_universe.dart' show Crypto;
import 'package:general_universe/json_scheme/json_scheme.dart';
import 'package:general_universe/utils/sheet/spreadsheet.dart';
import 'package:google_apps_script_library/google_apps_script_library.dart';
import 'package:database_universe_gas/database_universe_gas.dart';

void main(List<String> args) {
  final GoogleAppsScriptEventTriggers googleAppsScriptEventTriggers = GoogleAppsScriptEventTriggers();
  MiniDatabaseUniverseGas miniDatabaseUniverseGas = MiniDatabaseUniverseGas();
  miniDatabaseUniverseGas.ensureInitialized(
    pathToFile: "configuration",
    miniDatabaseUniverseGasOptions: MiniDatabaseUniverseGasOptions(
      miniDatabaseUniverseGasType: MiniDatabaseUniverseGasType.script,
      crypto: Crypto.defaultCrypto(),
      isUseCrypto: true,
      isIgnoreError: true,
    ),
  );
  miniDatabaseUniverseGas.initiaLized();
  miniDatabaseUniverseGas.stateData.printPretty();

  final bool is_request_permission = miniDatabaseUniverseGas.valueBuilder<bool>(
    builder: (db) {
      if (db["is_request_permission"] is bool == false) {
        db["is_request_permission"] = false;
      }
      return db["is_request_permission"];
    },
  );

  String sheetUrl = miniDatabaseUniverseGas.valueBuilder<String>(
    builder: (db) {
      if (db["sheet_url"] is String == false) {
        db["sheet_url"] = "";
      }
      return db["sheet_url"];
    },
  );

  googleAppsScriptEventTriggers.ensureInitialized(
    onTest: () {
      {
        if (is_request_permission == false) {
          {
            // DatabaseUniverseGas.requestPermissionExecute();
          }
          miniDatabaseUniverseGas["is_request_permission"] = true;
          miniDatabaseUniverseGas.write();
        }
      }
      {
        if (sheetUrl.isEmpty) {
          final Spreadsheet spreadsheet = SpreadsheetApp.create(
            "new",
          );

          miniDatabaseUniverseGas["sheet_url"] = spreadsheet.getUrl();
          sheetUrl = miniDatabaseUniverseGas["sheet_url"];
          miniDatabaseUniverseGas.write();
        }
      }
      final String sheetName = "database";

      final SpreadSheetsDatabaseUniverseGas databaseUniverseGas = SpreadSheetsDatabaseUniverseGas.open(
        sheetIdOrUrl: sheetUrl,
        schemes: [
          SpreadSheetsSchemeDatabaseUniverseGas(
            sheetName: "telegram_chat",
            jsonScheme: JsonScheme({"@type": "telegramChat", "chat_id": 0, "user_id": 0, "room_chat_id": 0, "data": json.encode({})}),
          ),
        ],
      );
      databaseUniverseGas.ensureInitialized();
      databaseUniverseGas.initialized();
      final SpreadSheetsCollectionDatabaseUniverseGas telegam_chat_collection = databaseUniverseGas.from("telegram_chat");
      // telegam_chat_collection;
      {
        print("telegam_chat_collection.getByIndex: start");
        final value = telegam_chat_collection.getByIndex(
          index: 2,
        );
        value.printPretty();
        print("telegam_chat_collection.getByIndex: done");
      }
      // telegam_chat_collection;
      {
        print("telegam_chat_collection.setByIndex: start");
        final value = telegam_chat_collection.setByIndex(
          index: 2,
          newValue: {
            "chat_id": -100002,
            "user_id": 3141401,
            "room_chat_id": 31930141,
            "data": json.encode({
              "date": DateTime.now().toString(),
            })
          },
        );
        value.printPretty();
        print("telegam_chat_collection.setByIndex: done");
      }
      // final Spreadsheet spreadsheet = () {
      //   final Spreadsheet spreadsheet = SpreadsheetApp.openByUrl(sheetUrl);

      //   final Spreadsheet? spreadsheetByName = spreadsheet.getSheetByName(sheetName);
      //   if (spreadsheetByName == null) {
      //     return spreadsheet.insertSheet(sheetName);
      //   }

      //   return spreadsheetByName;
      // }();
      // {
      //   print("spreadsheet url: start");
      //   print(sheetUrl);
      //   print("spreadsheet url: done");
      // }
      // final Map<String, dynamic> schemes = {
      //   "username": "",
      //   "password": "",
      //   "date": 0,
      // };
      // final String sheetRange = SpreadsheetGeneralUniverseUtils.createRange(
      //   startColumn: 1,
      //   endRow: schemes.length,
      //   totalLength: 1,
      // );
      // spreadsheet.getRange(sheetRange).setValues(
      //   [
      //     schemes.entries.map(
      //       (e) {
      //         return e.key;
      //       },
      //     ),
      //   ],
      // );
      // {
      //   int index = 2;
      //   final values = spreadsheet.getSheetValues(
      //     index, // offset
      //     1, // start row
      //     1, // total return
      //     schemes.length, // total row
      //   );
      // }

      return {"@type": "error", "message": "unimplemented"};
    },
  );
}
