import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:recipeapp/main_screen.dart';
import 'package:recipeapp/settings/setting_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final double coverHeight = 200;
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Profile',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w300,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MainPage()));
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 16),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SettingsPage()));
                },
                icon: const Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
              )),
        ],
      ),
      body: ListView(padding: EdgeInsets.zero, children: [
        buildTop(),
        buildContent(),
      ]),
    );
  }

  Widget buildContent() => Column(
        children: [
          const SizedBox(
            height: 8,
          ),
          const Text(
            'Gojo Satoru',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            'Strongest Sorcerer',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildSocialIcon(FontAwesomeIcons.github),
              const SizedBox(
                width: 12,
              ),
              buildSocialIcon(FontAwesomeIcons.stackOverflow),
              const SizedBox(
                width: 12,
              ),
              buildSocialIcon(FontAwesomeIcons.twitter),
              const SizedBox(
                width: 12,
              ),
              buildSocialIcon(FontAwesomeIcons.linkedin),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const Divider(),
        ],
      );

  Widget buildSocialIcon(IconData icon) => CircleAvatar(
        radius: 25,
        child: Material(
          shape: const CircleBorder(),
          clipBehavior: Clip.hardEdge,
          color: Colors.lightGreen,
          child: InkWell(
            onTap: () {},
            child: Center(
                child: Icon(
              icon,
              size: 32,
            )),
          ),
        ),
      );

  Widget buildTop() {
    final bottom = profileHeight / 2;
    final top = coverHeight - profileHeight / 2;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
          child: buildCoverImage(),
        ),
        Positioned(
          top: top,
          child: buildProfileImage(),
        )
      ],
    );
  }

  Widget buildCoverImage() => Container(
        color: Colors.lightGreen,
        child: Image.network(
          'https://i.pinimg.com/originals/cd/34/8b/cd348b55d06f92d252109ad2784a9382.jpg',
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );

  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: Colors.grey.shade800,
        backgroundImage: const NetworkImage(
            'https://www.looper.com/img/gallery/jujutsu-kaisen-what-rank-is-gojo-why-doesnt-it-matter/l-intro-1693282287.jpg'),
      );
}
