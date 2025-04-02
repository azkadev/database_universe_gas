import 'dart:convert';

import 'package:general_universe/extension/map.dart';

import 'type.dart';
import 'package:general_universe/crypto/crypto.dart' show Crypto;
import 'package:google_apps_script_library/google_apps_script_library.dart';

/// GeneralUniverse
class MiniDatabaseUniverseGasOptions {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final MiniDatabaseUniverseGasType miniDatabaseUniverseGasType;

  /// GeneralUniverse
  final Crypto crypto;

  /// GeneralUniverse

  final bool isUseCrypto;

  /// GeneralUniverse
  final bool isIgnoreError;

  /// GeneralUniverse

  const MiniDatabaseUniverseGasOptions({
    required this.miniDatabaseUniverseGasType,
    required this.crypto,
    required this.isUseCrypto,
    required this.isIgnoreError,
  });
}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
class MiniDatabaseUniverseGas {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  MiniDatabaseUniverseGas();

  /// GeneralUniverse
  late final String pathToFile;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer

  late final MiniDatabaseUniverseGasOptions miniDatabaseUniverseGasOptions;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  late final PropertiesServiceProperties propertiesServiceProperties;

  /// GeneralUniverse
  bool isEnsureInitialized = false;

  /// GeneralUniverse
  bool isInitialized = false;

  /// GeneralUniverse
  Map<dynamic, dynamic> stateData = <dynamic, dynamic>{};

  /// GeneralUniverse
  Map<dynamic, dynamic> defaultData = <dynamic, dynamic>{};

  /// operator map data
  dynamic operator [](key) {
    return stateData[key];
  }

  /// operator map data
  void operator []=(key, value) {
    stateData[key] = value;
  }

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  String read() {
    return propertiesServiceProperties.getProperty(pathToFile) as String;
  }

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  void ensureInitialized({
    required String pathToFile,
    required MiniDatabaseUniverseGasOptions miniDatabaseUniverseGasOptions,
  }) {
    if (isEnsureInitialized) {
      return;
    }
    this.pathToFile = pathToFile;
    this.miniDatabaseUniverseGasOptions = miniDatabaseUniverseGasOptions;
    propertiesServiceProperties = this.miniDatabaseUniverseGasOptions.miniDatabaseUniverseGasType.toPropertiesServicePropertiesOrError();
    isEnsureInitialized = true;
  }

  /// GeneralUniverse
  void initiaLized({
    Map<dynamic, dynamic>? defaultData,
  }) {
    if (isInitialized) {
      return;
    }
    stateData.clear();
    try {
      setDefaultData(
        defaultData: json.decode(decrypt(
          dataBase64: read(),
          miniDatabaseUniverseGasOptions: miniDatabaseUniverseGasOptions,
        )),
      );
    } catch (e) {
      if (miniDatabaseUniverseGasOptions.isIgnoreError == false) {
        rethrow;
      }
    }
    this.defaultData = defaultData ?? {};
    setDefaultData(defaultData: this.defaultData);
    isInitialized = true;
  }

  /// GeneralUniverse
  void reset() {
    stateData.clear();
    // stateData.addAll(defaultData);
    setDefaultData(defaultData: defaultData);
  }

  /// GeneralUniverse
  void setDefaultData({
    required Map<dynamic, dynamic> defaultData,
  }) {
    stateData.general_universe_utils_updateIfNotSameTypeOrEmpty(
      data: defaultData,
      ignoreKeys: [],
    );
  }

  /// GeneralUniverse
  String encrypt({
    required Map data,
    required MiniDatabaseUniverseGasOptions miniDatabaseUniverseGasOptions,
  }) {
    if (miniDatabaseUniverseGasOptions.isUseCrypto) {
      try {
        return miniDatabaseUniverseGasOptions.crypto.encrypt(data: json.encode(data));
      } catch (e) {
        if (miniDatabaseUniverseGasOptions.isIgnoreError == false) {
          rethrow;
        }
        return "";
      }
    } else {
      try {
        return json.encode(data);
      } catch (e) {
        if (miniDatabaseUniverseGasOptions.isIgnoreError == false) {
          rethrow;
        }
        return "";
      }
    }
  }

  /// GeneralUniverse
  String decrypt({
    required String dataBase64,
    required MiniDatabaseUniverseGasOptions miniDatabaseUniverseGasOptions,
  }) {
    if (miniDatabaseUniverseGasOptions.isUseCrypto) {
      try {
        return miniDatabaseUniverseGasOptions.crypto.decrypt(data: dataBase64);
      } catch (e) {
        if (miniDatabaseUniverseGasOptions.isIgnoreError == false) {
          rethrow;
        }
        return json.encode({});
      }
    } else {
      try {
        return dataBase64;
      } catch (e) {
        if (miniDatabaseUniverseGasOptions.isIgnoreError == false) {
          rethrow;
        }
        return json.encode({});
      }
    }
  }

  /// GeneralUniverse

  T valueBuilder<T>({
    required T Function(MiniDatabaseUniverseGas db) builder,
  }) {
    return builder(this);
  }

  /// GeneralUniverse

  Map<dynamic, dynamic> toMap() {
    return toJson();
  }

  /// GeneralUniverse

  Map<dynamic, dynamic> toJson() {
    return stateData;
  }

  @override
  String toString() {
    return json.encode(stateData);
  }

  /// GeneralUniverse
  bool write() {
    try {
      propertiesServiceProperties.setProperty(
        pathToFile,
        encrypt(
          data: stateData,
          miniDatabaseUniverseGasOptions: miniDatabaseUniverseGasOptions,
        ),
      );
      return true;
    } catch (e) {
      if (miniDatabaseUniverseGasOptions.isIgnoreError == false) {
        rethrow;
      }
      return false;
    }
  }

  /// GeneralUniverse
  void close() {
    stateData.clear();
    defaultData.clear();
    return;
  }

  /// map extension
  ///
  ///

  void addAll(Map other) {
    stateData.addAll(other);
  }

  /// GeneralUniverse
  void addEntries(Iterable<MapEntry> newEntries) {
    stateData.addEntries(newEntries);
  }

  /// GeneralUniverse
  Map<RK, RV> cast<RK, RV>() {
    return stateData.cast<RK, RV>();
  }

  /// GeneralUniverse
  void clear() {
    stateData.clear();

    /// GeneralUniverse clear
  }

  /// GeneralUniverse
  bool containsKey(Object? key) {
    return stateData.containsKey(key);
  }

  /// GeneralUniverse
  bool containsValue(Object? value) {
    return stateData.containsValue(value);
  }

  /// GeneralUniverse entries
  Iterable<MapEntry> get entries => stateData.entries;

  /// GeneralUniverse
  void forEach(void Function(dynamic key, dynamic value) action) {
    stateData.forEach(action);
  }

  /// GeneralUniverse isEmpty
  bool get isEmpty => stateData.isEmpty;

  /// GeneralUniverse isNotEmpty
  bool get isNotEmpty => stateData.isNotEmpty;

  /// GeneralUniverse keys
  //
  /// GeneralUniverse
  Iterable get keys => stateData.keys;

  /// GeneralUniverse length

  /// GeneralUniverse
  int get length => stateData.length;

  /// GeneralUniverse
  Map<K2, V2> map<K2, V2>(MapEntry<K2, V2> Function(dynamic key, dynamic value) convert) {
    return stateData.map<K2, V2>(convert);
  }

  /// GeneralUniverse

  dynamic putIfAbsent(key, Function() ifAbsent) {
    return stateData.putIfAbsent(key, ifAbsent);
  }

  /// GeneralUniverse
  dynamic remove(Object? key) {
    return stateData.remove(key);
  }

  /// GeneralUniverse
  void removeWhere(bool Function(dynamic key, dynamic value) test) {
    return stateData.removeWhere(test);
  }

  /// GeneralUniverse
  dynamic update(key, Function(dynamic value) update, {Function()? ifAbsent}) {
    return stateData.update(key, update, ifAbsent: ifAbsent);
  }

  /// GeneralUniverse
  void updateAll(Function(dynamic key, dynamic value) update) {
    /// GeneralUniverse updateAll
    return stateData.updateAll(update);
  }

  /// GeneralUniverse values

  /// GeneralUniverse
  Iterable get values => stateData.values;

  ///
  ///
}
