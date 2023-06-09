//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Recepie {
  /// Returns a new [Recepie] instance.
  Recepie({
    this.id,
    required this.name,
    this.ingedients = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  String name;

  List<Ingredient>? ingedients;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Recepie &&
     other.id == id &&
     other.name == name &&
     other.ingedients == ingedients;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (name.hashCode) +
    (ingedients == null ? 0 : ingedients!.hashCode);

  @override
  String toString() => 'Recepie[id=$id, name=$name, ingedients=$ingedients]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'name'] = this.name;
    if (this.ingedients != null) {
      json[r'ingedients'] = this.ingedients;
    } else {
      json[r'ingedients'] = null;
    }
    return json;
  }

  /// Returns a new [Recepie] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Recepie? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Recepie[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Recepie[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Recepie(
        id: mapValueOfType<int>(json, r'id'),
        name: mapValueOfType<String>(json, r'name')!,
        ingedients: Ingredient.listFromJson(json[r'ingedients']) ?? const [],
      );
    }
    return null;
  }

  static List<Recepie>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Recepie>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Recepie.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Recepie> mapFromJson(dynamic json) {
    final map = <String, Recepie>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Recepie.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Recepie-objects as value to a dart map
  static Map<String, List<Recepie>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Recepie>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Recepie.listFromJson(entry.value, growable: growable,);
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

