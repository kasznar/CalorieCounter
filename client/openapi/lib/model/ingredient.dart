//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Ingredient {
  /// Returns a new [Ingredient] instance.
  Ingredient({
    this.id,
    required this.name,
    this.calories,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  String name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? calories;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Ingredient &&
     other.id == id &&
     other.name == name &&
     other.calories == calories;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (name.hashCode) +
    (calories == null ? 0 : calories!.hashCode);

  @override
  String toString() => 'Ingredient[id=$id, name=$name, calories=$calories]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'name'] = this.name;
    if (this.calories != null) {
      json[r'calories'] = this.calories;
    } else {
      json[r'calories'] = null;
    }
    return json;
  }

  /// Returns a new [Ingredient] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Ingredient? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Ingredient[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Ingredient[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Ingredient(
        id: mapValueOfType<int>(json, r'id'),
        name: mapValueOfType<String>(json, r'name')!,
        calories: mapValueOfType<int>(json, r'calories'),
      );
    }
    return null;
  }

  static List<Ingredient>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Ingredient>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Ingredient.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Ingredient> mapFromJson(dynamic json) {
    final map = <String, Ingredient>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Ingredient.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Ingredient-objects as value to a dart map
  static Map<String, List<Ingredient>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Ingredient>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Ingredient.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
  };
}

