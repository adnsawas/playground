import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final allergies = {
      "Oats": "gluten",
      "Spelt": "gluten",
      "Peanut oil": "peanut"
    };
    final user_allergies = ["gluten"];
    final ingredientsFacts = ["Oats", "Peanut oil"];

    // 1. Loop over all ingredients
    // 2. For each ingredient, check its allergy and add it into a map

    final Map<String, List<String>> productAllergies = {};

    for (var ingredient in ingredientsFacts) {
      final ingredientAllergy = allergies[ingredient]; // gluten
      if (ingredientAllergy != null) {
        productAllergies.putIfAbsent(ingredientAllergy, () => [ingredient]);
      }
    }

    // 3. Check if allergies of this product matching with user allergies
    final allergiesInThisProductAffectingTheUser = {};
    user_allergies.forEach((userAllergy) {
      if (productAllergies.containsKey(userAllergy)) {}
    });

    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
