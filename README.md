# Database Universe Gas
 
**Database Universe** Is library for help you save data in Platfom Google Apps Script very easy, you can use spreadsheet as documentation like supabase, and properties like storing json data locally

<!-- [![](https://raw.githubusercontent.com/General-Developer/whisper_library/refs/heads/main/assets/demo_background.png)](https://youtu.be/drlqUwJEOg4)

[![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/powered.png)](https://www.youtube.com/@Global_Corporation) -->

**Copyright (c) 2024 GLOBAL CORPORATION - GENERAL DEVELOPER**

## 📚️ Docs

1. [Documentation](https://youtube.com/@GENERAL_DEV)
2. [Youtube](https://youtube.com/@GENERAL_DEV)
3. [Telegram Support Group](https://t.me/DEVELOPER_GLOBAL_PUBLIC)
4. [Contact Developer](https://github.com/General-Developer) (check social media or readme profile github)

## 🔖️ Features

1. [x] 📱️ **Cross Platform** support (Device, Edge Severless functions)
2. [x] 📜️ **Standarization** Style Code
3. [x] ⌨️ **Cli** (Terminal for help you use this library or create project)
4. [x] 🔥️ **Api** (If you developer bot / userbot you can use this library without interact cli just add library and use 🚀️)
5. [x] 🧩️ **Customizable Extension** (if you want add extension so you can more speed up on development)
6. [x] ✨️ **Pretty Information** (user friendly for newbie)
 
## ❔️ Fun Fact

- **This library 100%** use on every my create project (**App, Server, Bot, Userbot**)
 
## 📈️ Proggres
 
- **10-02-2025**
  Starting **Release Stable** With core Features


### 📥️ Install Library

<!-- 1. **Dart**

```bash
dart pub add whisper_library_dart
```

2. **Flutter**

```bash
flutter pub add whisper_library_flutter ggml_library_flutter
``` 
-->

## 🚀️ Quick Start

Example Quickstart script minimal for insight you or make you use this library because very simple

```dart

import 'dart:convert';
import 'dart:math';
import 'package:database_universe_gas/database_universe_gas.dart';
import 'package:general_universe/extension/dynamic.dart';
import 'package:general_universe/crypto/crypto.dart';
import 'package:general_universe/json_scheme/json_scheme.dart';
import 'package:google_apps_script_library/google_apps_script_library.dart';

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

  final bool isRequestPermission = miniDatabaseUniverseGas.valueBuilder<bool>(
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
        if (isRequestPermission == false) {
          {
            DatabaseUniverseGas.requestPermissionExecute();
          }
          miniDatabaseUniverseGas["is_request_permission"] = true;
          miniDatabaseUniverseGas.write();
        }
      }
      {
        if (sheetUrl.isEmpty) {
          final SpreadSheet spreadsheet = SpreadSheetApp.create(
            "new",
          );

          miniDatabaseUniverseGas["sheet_url"] = spreadsheet.getUrl();
          sheetUrl = miniDatabaseUniverseGas["sheet_url"];
          miniDatabaseUniverseGas.write();
        }
      }
      // final String sheetName = "database";

      final SpreadSheetsDatabaseUniverseGas databaseUniverseGas = SpreadSheetsDatabaseUniverseGas.open(
        sheetIdOrUrl: sheetUrl,
        schemes: [
          SpreadSheetsSchemeDatabaseUniverseGas(
            sheetName: "telegram_chat",
            jsonScheme: JsonScheme(
              {
                "@type": "telegramChat",
                "chat_id": 0,
                "user_id": 0,
                "room_chat_id": 0,
                "data": json.encode({}),
              },
            ),
          ),
        ],
      );
      databaseUniverseGas.ensureInitialized();
      databaseUniverseGas.initialized();
      final SpreadSheetsCollectionDatabaseUniverseGas telegamChatCollection = databaseUniverseGas.from("telegram_chat");
      int index = 10; 
      {
        print("telegamChatCollection.count: start");
        final value = telegamChatCollection.count();
        value.printPretty();
        print("telegamChatCollection.count: done");
      }

      {
        print("telegamChatCollection.insert: start");
        final value = telegamChatCollection.insert(
          newValue: {
            "@type": "telegramChat",
            "chat_id": Random().nextInt(1000),
            "user_id": Random().nextInt(1000),
            "room_chat_id": Random().nextInt(1000),
            "data": json.encode({}),
          },
        );
        value.printPretty();
        print("telegamChatCollection.insert: done");
      }

      {
        print("telegamChatCollection.getValuesRaw: start");
        final value = telegamChatCollection.getValuesRaw(
          startOffset: 2,
          limit: 10,
          endRow: 2,
        );
        value.printPretty();
        print("telegamChatCollection.getValuesRaw: done");
      }
      {
        print("telegamChatCollection.deleteByIndex: start");
        final value = telegamChatCollection.getValues(
          startOffset: 2,
          limit: 10,
        );
        value.printPretty();
        print("telegamChatCollection.deleteByIndex: done");
      }

      {
        print("telegamChatCollection.deleteByIndex: start");
        final value = telegamChatCollection.deleteByIndex(
          index: index,
        );
        value.printPretty();
        print("telegamChatCollection.deleteByIndex: done");
      }

      {
        print("telegamChatCollection.getByIndex: start");
        final value = telegamChatCollection.getByIndex(
          index: index,
        );
        value.printPretty();
        print("telegamChatCollection.getByIndex: done");
      }
      // telegamChatCollection;
      {
        print("telegamChatCollection.setByIndex: start");
        final value = telegamChatCollection.setByIndex(
          index: index,
          newValue: {
            "chat_id": -500002,
            "user_id": 7141401,
            "room_chat_id": 31930141,
            "data": json.encode({
              "date": DateTime.now().toString(),
            })
          },
        );
        value.printPretty();
        print("telegamChatCollection.setByIndex: done");
      }
      return {"@type": "error", "message": "unimplemented"};
    },
  );
}

```

## Reference

1. [General-Developer/google_apps_script_library](https://github.com/General-Developer/google_apps_script_library)
  core library


**Copyright (c) 2024 GLOBAL CORPORATION - GENERAL DEVELOPER**
 