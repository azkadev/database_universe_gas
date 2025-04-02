
import 'package:general_universe/json_scheme/json_scheme.dart';

class SpreadSheetsSchemeDatabaseUniverseGas<T extends JsonScheme> {
  final String sheetName;

  final T jsonScheme;

  const SpreadSheetsSchemeDatabaseUniverseGas({
    required this.sheetName,
    required this.jsonScheme,
  });

  SpreadSheetsSchemeDatabaseUniverseGas copyWith({
    final String? sheetName,
    final JsonScheme? jsonScheme,
  }) {
    return SpreadSheetsSchemeDatabaseUniverseGas(
      sheetName: sheetName ?? this.sheetName,
      jsonScheme: jsonScheme ?? this.jsonScheme,
    );
  }
}