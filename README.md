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

import 'dart:io';
import 'package:general_lib/general_lib.dart';
import 'package:whisper_library_dart/whisper_library_dart.dart';

void main(List<String> args) async {
  print("start");

  /// make sure you have downloaded model
  final String whisperModelPath =
      "../../../../../big-data/ai/whisper-ggml/ggml-small.bin";
  final WhisperLibrary whisperLibrary = WhisperLibrary(
    libraryWhisperPath: "../whisper_library_flutter/linux/libwhisper.so",
  );
  await whisperLibrary.ensureInitialized();
  final isLoadedModel = whisperLibrary.loadWhisperModel(
    whisperModelPath: whisperModelPath,
  );
  if (isLoadedModel == false) {
    print("cant loaded");
    exit(1);
  }
  final File fileWav = File(
    "../../native_lib/lib/whisper.cpp/samples/jfk.wav",
  );
  await Future.delayed(Duration(seconds: 2));
  DateTime dateTime = DateTime.now();
  final result = await whisperLibrary.transcribeToJson(
    fileWav: fileWav,
    useCountProccecors: 1,
    useCountThread: (Platform.numberOfProcessors / 2).toInt(),
  );
  print("seconds: ${DateTime.now().difference(dateTime)}");
  result.printPretty();
  exit(0);
}

```

## Reference

1. [General-Developer/google_apps_script_library](https://github.com/General-Developer/google_apps_script_library)
  core library


**Copyright (c) 2024 GLOBAL CORPORATION - GENERAL DEVELOPER**
 