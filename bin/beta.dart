// import 'package:general_universe/extension/extension.dart';

// extension ListExtension<AValueTypeV> on List<AValueTypeV> {
//   List<AValueTypeV> general_universe_extension_take_from({
//     int startIndex = 0,
//     int endIndex = 0,
//   }) {
//     final List<AValueTypeV> datas = [];
//     {
//       if (startIndex < 1) {
//         startIndex = 0;
//       }
//     }
//     {
//       if (endIndex < 1) {
//         endIndex = length;
//       } else if (endIndex > length) {
//         endIndex = length;
//       }
//     }

//     for (int i = startIndex; i < endIndex; i++) {
//       datas.add(this[i]);
//     }
//     return datas;
//   }

// }

import 'package:general_universe/extension/dynamic.dart';
import 'package:general_universe/extension/list.dart';

void main(List<String> args) {
  int startRow = 0;
  int endRow = 1;
  final List<String> _keys = [
    "index", // 0 // 1
    "chat_id", // 1 // 2
    "user_id",

    /// 2 // 3
    "room_chat_id",

    /// 3 // 4
    "data", // 4 // 5
  ];
  int keyLength = _keys.length;

  {
    if (startRow < 0) {
      print("Sas");
      startRow = 0;
    } else if (startRow > keyLength) {
      startRow = keyLength;
    }
  }
  {
    if (endRow < 0) {
      print("ya");
      endRow = keyLength;
    } else if (endRow > keyLength) {
      print("sad");
      endRow = keyLength;
    }
  }
  {
    /// jika data startRow lebih besar
    /// maka rubah data endRow sama dengan startRow
    if (startRow > endRow) {
      endRow = startRow;
    }
  }
  final keys = _keys.general_universe_extension_take_from(
    startIndex: startRow,
    endIndex: endRow,
  );
  keys.printPretty();
  print(startRow + 1);

  print(endRow + 1);
}
