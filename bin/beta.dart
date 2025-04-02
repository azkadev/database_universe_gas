import 'dart:math';

import 'package:database_universe_gas/extensions/list.dart';
import 'package:general_universe/general_universe.dart';

void main(List<String> args) {
  List? values;

  if (Random().nextBool()) {
    values = [
      "azkadev",
      "azka",
      "dev",
      "id",
    ];
  }

  final List<String> keys = [
    "username",
    "first_name",
    "last_name",
    "language",
  ];

  values.database_universe_gas_extension_spreadsheet_toJson(keys: keys.toList()).printPretty();
}
