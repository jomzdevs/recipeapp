import 'package:flutter/material.dart';
import 'package:recipeapp/constants.dart';
import 'package:recipeapp/data.dart';
import 'package:recipeapp/detail.dart';
import 'package:recipeapp/profile/profile.dart';
import 'package:recipeapp/shared.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<bool> optionSelected = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.sort,
          color: Colors.black,
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfilePage()));
                },
                icon: const Icon(
                  Icons.person,
                  color: Colors.black,
                ),
              )),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildTextTitleVariation1('Filipino Cuisinero'),
                  buildTextSubTitleVariation1(
                      'Reciping Pinoy para sa Pilipino'),
                  const SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      option('Vegetable', 'assets/icons/salad.png', 0),
                      const SizedBox(
                        width: 8,
                      ),
                      option('Meat', 'assets/icons/meat_icon2.png', 1),
                      const SizedBox(
                        width: 5,
                      ),
                      option('Soup', 'assets/icons/soup-iconv2-01.png', 2),
                      const SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              height: 350,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: buildRecipes(),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  buildTextTitleVariation2('Popular', false),
                  const SizedBox(
                    width: 8,
                  ),
                  buildTextTitleVariation2('Food', true),
                ],
              ),
            ),
            Container(
              height: 190,
              child: PageView(
                physics: const BouncingScrollPhysics(),
                children: buildPopulars(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget option(String text, String image, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          optionSelected[index] = !optionSelected[index];
        });
      },
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          color: optionSelected[index] ? kPrimaryColor : Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          boxShadow: [kBoxShadow],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          children: [
            SizedBox(
              height: 32,
              width: 32,
              child: Image.asset(
                image,
                color: optionSelected[index] ? Colors.white : Colors.black,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              text,
              style: TextStyle(
                color: optionSelected[index] ? Colors.white : Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> buildRecipes() {
    List<Widget> list = [];
    for (var i = 0; i < getRecipes().length; i++) {
      list.add(buildRecipe(getRecipes()[i], i));
    }
    return list;
  }

  Widget buildRecipe(Recipe recipe, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Detail(recipe: recipe)),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          boxShadow: [kBoxShadow],
        ),
        margin: EdgeInsets.only(
            right: 16, left: index == 0 ? 16 : 0, bottom: 16, top: 8),
        padding: const EdgeInsets.all(16),
        width: 220,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Hero(
                tag: recipe.image,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(recipe.image),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            buildRecipeTitle(recipe.title),
            buildTextSubTitleVariation2(recipe.description),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildCalories("${recipe.calories} Kcal"),
                const Icon(
                  Icons.favorite_border,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> buildPopulars() {
    List<Widget> list = [];
    for (var i = 0; i < getRecipes().length; i++) {
      list.add(buildPopular(getRecipes()[i]));
    }
    return list;
  }

  Widget buildPopular(Recipe recipe) {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        boxShadow: [kBoxShadow],
      ),
      child: Row(
        children: [
          Container(
            height: 160,
            width: 160,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(recipe.image),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildRecipeTitle(recipe.title),
                  buildRecipeSubTitle(recipe.description),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildCalories("${recipe.calories} Kcal"),
                      const Icon(
                        Icons.favorite_border,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
