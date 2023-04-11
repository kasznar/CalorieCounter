//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Meal {
  /// Returns a new [Meal] instance.
  Meal({
    this.id,
    required this.type,
    required this.date,
    required this.recepie,
    required this.quantity,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  MealType type;

  DateTime date;

  Recepie recepie;

  int quantity;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Meal &&
     other.id == id &&
     other.type == type &&
     other.date == date &&
     other.recepie == recepie &&
     other.quantity == quantity;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (type.hashCode) +
    (date.hashCode) +
    (recepie.hashCode) +
    (quantity.hashCode);

  @override
  String toString() => 'Meal[id=$id, type=$type, date=$date, recepie=$recepie, quantity=$quantity]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'type'] = this.type;
      json[r'date'] = _dateFormatter.format(this.date.toUtc());
      json[r'recepie'] = this.recepie;
      json[r'quantity'] = this.quantity;
    return json;
  }

  /// Returns a new [Meal] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Meal? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Meal[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Meal[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Meal(
        id: mapValueOfType<int>(json, r'id'),
        type: MealType.fromJson(json[r'type'])!,
        date: mapDateTime(json, r'date', '')!,
        recepie: Recepie.fromJson(json[r'recepie'])!,
        quantity: mapValueOfType<int>(json, r'quantity')!,
      );
    }
    return null;
  }

  static List<Meal>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Meal>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Meal.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Meal> mapFromJson(dynamic json) {
    final map = <String, Meal>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Meal.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Meal-objects as value to a dart map
  static Map<String, List<Meal>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Meal>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Meal.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'date',
    'recepie',
    'quantity',
  };
}

