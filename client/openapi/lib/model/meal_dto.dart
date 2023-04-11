//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MealDto {
  /// Returns a new [MealDto] instance.
  MealDto({
    this.id,
    this.mealTypeId,
    this.date,
    required this.recepieName,
    this.quantity,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  int? mealTypeId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? date;

  String recepieName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? quantity;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MealDto &&
     other.id == id &&
     other.mealTypeId == mealTypeId &&
     other.date == date &&
     other.recepieName == recepieName &&
     other.quantity == quantity;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (mealTypeId == null ? 0 : mealTypeId!.hashCode) +
    (date == null ? 0 : date!.hashCode) +
    (recepieName.hashCode) +
    (quantity == null ? 0 : quantity!.hashCode);

  @override
  String toString() => 'MealDto[id=$id, mealTypeId=$mealTypeId, date=$date, recepieName=$recepieName, quantity=$quantity]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.mealTypeId != null) {
      json[r'mealTypeId'] = this.mealTypeId;
    } else {
      json[r'mealTypeId'] = null;
    }
    if (this.date != null) {
      json[r'date'] = _dateFormatter.format(this.date!.toUtc());
    } else {
      json[r'date'] = null;
    }
      json[r'recepieName'] = this.recepieName;
    if (this.quantity != null) {
      json[r'quantity'] = this.quantity;
    } else {
      json[r'quantity'] = null;
    }
    return json;
  }

  /// Returns a new [MealDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MealDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MealDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MealDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MealDto(
        id: mapValueOfType<int>(json, r'id'),
        mealTypeId: mapValueOfType<int>(json, r'mealTypeId'),
        date: mapDateTime(json, r'date', ''),
        recepieName: mapValueOfType<String>(json, r'recepieName')!,
        quantity: mapValueOfType<int>(json, r'quantity'),
      );
    }
    return null;
  }

  static List<MealDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MealDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MealDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MealDto> mapFromJson(dynamic json) {
    final map = <String, MealDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MealDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MealDto-objects as value to a dart map
  static Map<String, List<MealDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MealDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MealDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'recepieName',
  };
}

