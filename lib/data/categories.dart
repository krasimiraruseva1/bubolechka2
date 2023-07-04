import '../models/bubo_category.dart';

///
/// This file provides the original category data
///

/// Original labels in german and bulgarian, english added as last value
const labels = [
  ["1", "Mercedes", "Мерцедес", "Mercedes-Benz"],
  ["2", "E-Class", "E-Class", "E-Class"],
  ["3", "AMG-GT", "AMG-GT", "AMG-GT"],
  ["4", "S-Class", "S-Class", "S-Class"],
  ["5", "BMW", "BMW", "BMW"],
  ["6", "7-Series", "7-Series", "7-Series"],
  ["7", "3-Series", "3-Series", "3-Series"],
  ["8", "4-Series", "4-Series", "4-Series"],
  ["9", "Honda", "Хонда", "Honda"],
  ["10", "Civic", "Civic", "Civic"],
  ["11", "Civic-Sedan", "Civic-Sedan", "Civic-Sedan"],
  ["12", "Type-R", "Type-R", "Type-R"],
  ["13", "Lamborgini", "Ламборгини", "Lamborgini"],
  ["14", "Huracan", "Huracan", "Huracan"],
  ["15", "Diablo", "Diablo", "Diablo"],
  ["16", "Urus", "Urus", "Urus"]
];

///
/// Labels transformed into BuboCategories
///
/// This list can be used in the application for rendering the categories
///
List<BuboCategory> buboCategories = labels.map((categoryLabels) {
  return BuboCategory(
      int.parse(categoryLabels[0]),
      'assets/categories/cat_${categoryLabels[1].toLowerCase().replaceAll(' ', '_')}@3x.png',
      {
        'us': categoryLabels[3],
        'de': categoryLabels[1],
        'bg': categoryLabels[2]
      });
}).toList();
