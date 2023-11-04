class Recipe {
  String title;
  String description;
  String image;
  int calories;
  int carbo;
  int protein;

  Recipe(this.title, this.description, this.image, this.calories, this.carbo,
      this.protein);
}

List<Recipe> getRecipes() {
  return <Recipe>[
    Recipe("Pinakbet", "So irresistibly delicious",
        "assets/images/pinakbet.png", 250, 35, 6),
    Recipe("Chicken Inasal", "Pinoy Classic Savory Roasted Chicken",
        "assets/images/chicken_inasal.png", 200, 45, 10),
    Recipe("Pork Barbeque", "Mouth Watering Savory Pork Barbeque",
        "assets/images/bbq.png", 150, 30, 8),
    Recipe("Sinigang na Baboy", "Warm, Comforting Savory  Sour Soup",
        "assets/images/sinigang_pork.png", 190, 35, 12),
    Recipe("Inihaw na Bangus", "Grilled Milkfish",
        "assets/images/inihaw_bangus.png", 250, 55, 20),
    Recipe("Philippine Adobo", "Philippine Pride",
        "assets/images/pork_adobo.png", 250, 55, 20),
  ];
}
