//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateMealDto {
  /// Returns a new [CreateMealDto] instance.
  CreateMealDto({
    required this.mealTypeId,
    required this.userId,
    required this.date,
    required this.recepieId,
    required this.quantity,
  });

  int mealTypeId;

  int userId;

  DateTime date;

  int recepieId;

  int quantity;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateMealDto &&
     other.mealTypeId == mealTypeId &&
     other.userId == userId &&
     other.date == date &&
     other.recepieId == recepieId &&
     other.quantity == quantity;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (mealTypeId.hashCode) +
    (userId.hashCode) +
    (date.hashCode) +
    (recepieId.hashCode) +
    (quantity.hashCode);

  @override
  String toString() => 'CreateMealDto[mealTypeId=$mealTypeId, userId=$userId, date=$date, recepieId=$recepieId, quantity=$quantity]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'mealTypeId'] = this.mealTypeId;
      json[r'userId'] = this.userId;
      json[r'date'] = _dateFormatter.format(this.date.toUtc());
      json[r'recepieId'] = this.recepieId;
      json[r'quantity'] = this.quantity;
    return json;
  }

  /// Returns a new [CreateMealDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateMealDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateMealDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateMealDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateMealDto(
        mealTypeId: mapValueOfType<int>(json, r'mealTypeId')!,
        userId: mapValueOfType<int>(json, r'userId')!,
        date: mapDateTime(json, r'date', '')!,
        recepieId: mapValueOfType<int>(json, r'recepieId')!,
        quantity: mapValueOfType<int>(json, r'quantity')!,
      );
    }
    return null;
  }

  static List<CreateMealDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateMealDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateMealDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateMealDto> mapFromJson(dynamic json) {
    final map = <String, CreateMealDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateMealDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateMealDto-objects as value to a dart map
  static Map<String, List<CreateMealDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateMealDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateMealDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'mealTypeId',
    'userId',
    'date',
    'recepieId',
    'quantity',
  };
}

