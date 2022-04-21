import 'package:flutter/foundation.dart';

T toEnumValue<T>(
  String data, {
  required List<T> enumValues,
}) {
  return enumValues.firstWhere(
    (T enumVal) => describeEnum(enumVal!) == data,
    orElse: () => enumValues.firstWhere(
      (T enumVal) => describeEnum(enumVal!) == 'UNKNOWN',
    ),
  );
}

List<T> toEnumValueList<T>(
  List<String> dataList, {
  required List<T> enumValues,
}) {
  return dataList
      .map(
        (String data) => toEnumValue(
          data,
          enumValues: enumValues,
        ),
      )
      .toList();
}
