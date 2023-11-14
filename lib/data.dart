class Recipe {
  String title;
  String description;
  String image;
  String ingredients;
  String preps;
  int calories;
  int carbo;
  int protein;

  Recipe(this.title, this.description, this.image, this.ingredients, this.preps,
      this.calories, this.carbo, this.protein);
}

List<Recipe> getRecipes() {
  return <Recipe>[
    Recipe(
        "Pinakbet Ilocano",
        "So irresistibly delicious",
        "assets/images/pinakbet.png",
        "4 pieces round eggplant cut in half\n2 pieces small bitter melon ampalaya, quartered\n½ bundle string beans cut into 2 inch length\n1 piece sweet potato kamote, quartered\n8 pieces okra\n1 piece tomato cubed\n1 piece onion cubed\n1½ cup water\n1 lb bagnet\n1/4 cup Anchovy sauce bagoong isda ",
        "In a large pan, place water let boil\nPut in the anchovy sauce and wait for the mixture to boil once more\nAdd-in the vegetables starting with the sweet potato then put-in the okra, bitter melon, eggplant, string beans, tomato, and onion and simmer for 15 minutes\nAdd the bagnet or lechon kawali (cooking procedure available in the recipe section) and simmer for 5 minutes\nServe hot.\nShare and Enjoy!",
        250,
        35,
        6),
    Recipe(
        "Chicken Inasal",
        "Pinoy Classic Savory Roasted Chicken",
        "assets/images/chicken_inasal.png",
        "2 lbs chicken cut into serving pieces\n2 tablespoons ginger minced\n2 tablespoons garlic minced\n3/4 cup lemongrass chopped\n1 cup coconut vinegar\n1/2 cup lemon or calamansi juice\n1 tablespoon salt\n1/4 cup brown sugar\n1 cup lemon soda softdrink\n1/2 tablespoon ground black pepper\n\nBasting Sauce:\n3 tablespoons annatto oil atsuete oil\n1/2 cup margarine softened\n1/4 teaspoon salt1 teaspoon lemon or calamansi juice ",
        "In a freezer bag or large bowl, combine chicken, lemongrass, salt, ground black pepper, ginger, garlic, brown sugar, vinegar, lemon-lime soda, and lemon juice.\nStir or shake the mixture until every ingredient is well incorporated. Marinade for 1 to 3 hours.\nIn a bowl, combine margarine, annatto oil, salt, and lemon juice then stir.\nSet aside.\nGrill the chicken while basting generous amount of the margarine mixture.\nTransfer the grilled chicken to a serving plate.\nServe with sinamak.\nShare and enjoy! ",
        200,
        45,
        10),
    Recipe(
        "Pork Barbeque",
        "Mouth Watering Savory Pork Barbeque",
        "assets/images/bbq.png",
        "4 lbs. pork shoulder sliced into thin pieces\n\nMarinade Ingredients\n¾ cup soy sauce\n½ cup juice extracted from calamansi or lemon\n¾ cup banana ketchup\n4 tablespoons dark brown sugar\n2 tablespoons garlic powder\n1 teaspoon ground black pepper\n2 teaspoons salt\n1 ½ cups lemon or lime soda. ",
        "Arrange the pork slices in a large bowl.\nAdd all the marinade ingredients.\nMix well./nCover the bowl and marinate for at least 3 hours.\nNote: I strongly suggest marinating overnight for best results.\nFasten the marinated pork together using bamboo skewers.\nHeat-up the grill.\nStart to grill your Filipino Style pork BBQ for 3 to 5 minutes per side until the meat is thoroughly cooked.\nMake sure to always baste the BBQ when flipping it over.\nNote: the basting sauce ingredients are the same as the marinade ingredients minus the lemon soda.\nServe with spicy vinegar.\nShare and enjoy!",
        150,
        30,
        8),
    Recipe(
        "Sinigang na Baboy",
        "Warm, Comforting Savory  Sour Soup",
        "assets/images/sinigang_pork.png",
        "3 lbs. pork baby back ribs\n3 bunches bok choy\n1 1/2 liter water\n44 grams Knorr Sinigang sa Sampaloc with Gabi\n15 counts string beans cut in 2-inch pieces\n8 okra\n1 eggplant sliced\n3 long green chili pepper\n1 cup daikon radish sliced\n2 tomato\n1 onion wedged\n3 tablespoons cooking oil\nFish sauce and ground black pepper to taste ",
        "Heat oil in a large pot. Saute onion and tomato until the layers of the onion starts to separate.\nAdd pork spare ribs. Continue sautéing until the pork turns light brown in color.\nPour water. Cover the pot. Let the water boil. Adjust heat to low setting and continue boiling for 30 minutes.\nAdd Knorr Sinigang sa Sampaloc with Gabi recipe mix and daikon radish.\nStir and cover the pot.\nContinue cooking until the pork gets tender.\nAdd chili pepper, string beans, okra, and eggplant.\nCook for 12 minutes.\nAdd pechay. Cook for 3 minutes.\nSeason with fish sauce and ground black pepper.\nTransfer to a serving bowl.\nServe with rice.\nShare and enjoy! ",
        190,
        35,
        12),
    Recipe(
        "Inihaw na Bangus",
        "Grilled Milkfish",
        "assets/images/inihaw_bangus.png",
        "1 piece milkfish bangus, with scales but guts removed\n1 piece tomato ripe, diced\n1 piece red onion diced\n1 piece lemon or 3 pieces calamansi (optional)\n1 tablespoon ginger minced\n2 teaspoons salt\n1/2 teaspoon ground black pepper/n ",
        "Wash the milk fish. Pat it dry using a paper towel.\nOpen the incision and then rub the salt on the inside of the dish. The fish should have an incision either above or below the belly area.\nMeanwhile, combine tomato, onion, and ginger in a large bowl. Squeeze some lemon juice in and add the ground black pepper. Gently stir.\nStuff the mixture inside the milkfish.\nGrill the fish in medium heat for about 10 to 12 minutes per side.\nServe with toyomansi and steamed rice.\nShare and enjoy!\n",
        250,
        55,
        20),
    Recipe(
        "Philippine Adobo",
        "Philippine Pride",
        "assets/images/pork_adobo.png",
        "2 lbs pork belly (note 1)\n2 tablespoons garlic (note 2)\n5 dried bay leaves (note 3)\n4 tablespoons vinegar (note 4)\n1/2 cup soy sauce (note 5)\n1 tablespoon peppercorn (note 6)\n2 cups water\nSalt to taste  ",
        "Combine the pork belly, soy sauce, and garlic then marinade for at least 1 hour\nHeat the pot and put-in the marinated pork belly then cook for a few minutes\nPour remaining marinade including garlic.\nAdd water, whole pepper corn, and dried bay leaves then bring to a boil.\nSimmer for 40 minutes to 1 hour\nPut-in the vinegar and simmer for 12 to 15 minutes\nAdd salt to taste\nServe hot. ",
        250,
        55,
        20),
    Recipe(
        "Dinengdeng",
        "Ilocano Pride Dish",
        "assets/images/dinengdeng.png",
        "1 whole milk fish sliced and grilled\n2 to 3 cups malunggay moringa leaves, cleaned\n2 cups squash flower\n12 to 15 pieces small to medium sized okra\n1 bundle string beans sliced into 3 inch pieces\n2 pieces medium ampalaya bitter gourd, cored and sliced\n2 to 3 tablespoons bagoong isda unprocessed fish sauce\n1 knob ginger sliced\n2 medium tomato chopped\n1 medium onion chopped\n3 cups water\n",
        "Bring water to a boil in a large cooking pot.\nAdd the ginger, onion, and tomato. Cook covered for 5 minutes.\nPour-in the bagoong isda.Stir.\nAdd okra and string beans.Stir and add the ampalaya. Cook in medium heat for 7 to 10 minutes.\nPut-in the squash flower and malunggay leaves. Cook for 3 to 5 minutes.\nAdd the grilled milk fish. Let it stay for 3 to 5 minutes to add flavor to the dish.\nServe.\nShare and enjoy! ",
        250,
        55,
        20),
    Recipe(
        "Sisig",
        "One of Pampanga's Best Dish",
        "assets/images/sisig.png",
        "Sisig Seasoning Ingredients:\n\n1 cup Ladys Choice Mayonnaise\n2 tablespoons Knorr liquid seasoning\n2 tablespoons lemon lime soda\n2 tablespoons calamansi juice\n1 tablespoon white vinegar\n1 teaspoon ground black pepper\n\nLechon Kawali Sisig:\n\n1 lb. pork belly\n3 dried bay leaves\n2 teaspoons whole peppercorn\n2 tablespoons liver spread\n2 Thai chili pepper chopped\n3 tablespoons green onions chopped\n¾ cup red onions chopped\n2 teaspoon salt\n6 cups water\n2 cups cooking oil\n\nCrispy Tofu Sisig:\n\n16 ounces extra firm tofu diced\n2 Thai chili pepper chopped\n¼ cup red bell pepper chopped\n3 tablespoons green onions chopped\n¼ cup red onions chopped\n1 cup cooking oil\n\nLuncheon Meat Sisig:\n\n15 oz. luncheon meat\n1 tablespoon liver spread\n3 tablespoons green onions chopped\n¼ cup red onions chopped\n1 cup cooking oil\n\nTuna Sisig Recipe:\n\n12 ounces tuna canned\n¼ cup red bell pepper chopped\n3 tablespoons green onions chopped\n¼ cup red onions chopped\n¼ teaspoon ground black pepper\n¼ teaspoon alt\n2 tablespoons butter\n",
        "Combine all Sisig seasoning ingredients in a bowl. Mix well until smooth. Set aside.\nMake lechon kawali sisig by boiling the pork belly with whole peppercorn and dried bay leaves in 6 to 8 cups of water for 50 minutes or until tender.\nRemove from the pot and let it cool down. Rub it with 2 teaspoons of salt.\nDeep-fry the pork belly until golden brown and crispy. Chop into serving pieces.\nCombine a quarter of the sisig seasoning ingredients with 2 tablespoons of liver spread.\nPut the chopped pork belly, thai chili pepper, green onions, and red onions in a mixing bowl and then add the Sisig seasoning mixture.\nToss until well blended.\nServe.\n\nMake the crispy tofu sisig by deep frying the tofu until golden brown and crispy. Drain the oil and set aside.\nArrange fried tofu, bell pepper, thai chili pepper, green onions, and red onions in a mixing bowl.\nAdd a quarter of the sisig seasoning. Toss until evenly distributed.\nServe!\n\nMake the luncheon meat sisig by deep frying the luncheon meat until golden brown and crispy. Drain the oil and set aside.\nArrange luncheon meat, green onions, and red onions in a mixing bowl.\nCombine Sisig seasoning with 1 tablespoon liver spread and add it into the bowl.\nToss until evenly distributed. Serve!\n\nMake the tuna sisig by heating butter in a pan. Add drained canned tuna. Saute for 2 minutes.\nSeason with salt and ground black pepper and let it cool down.\nCombine tuna, bell pepper, green onions, red onions, and the remaining sisig seasoning.\nToss. Serve.\nShare and enjoy! ",
        250,
        55,
        20),
  ];
}
