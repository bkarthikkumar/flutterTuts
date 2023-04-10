import 'dart:io';

// main function is mandatory
void main() {
  print('Welcome to first dart');
  // stdout.write("Enter the name");
  var name = stdin.readLineSync();
  print('your name is $name');

  var newObject = firstClass(); //constructor is called

  var map_section = {
    'key_1': 'value 1',
    'key_2': 555,
    'key_3': "äsfsd0",
    'key_4': 55.25,
    'key_5': true
  };
  // print(map_section);
  // print(map_section['key_2']);

  var newmap = Map();
  newmap['k1'] = "kkkk";

  print(map_section.isNotEmpty);
  print(map_section.isEmpty);
  print(map_section.length);
  print(map_section.keys);
  print(map_section.values);
  print(map_section.entries);
  print(map_section.hashCode);
  print(map_section.runtimeType);
  print(map_section.containsKey('Key_2'));
  print(map_section.containsValue(55.25));
}

// ignore: camel_case_types
class firstClass {
  firstClass();
}
