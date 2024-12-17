import 'package:flutter/material.dart';
import 'package:movie_app_basmla/widgets/custom_nav_bar.dart';
import 'package:movie_app_basmla/widgets/new_movies_widget.dart';
import 'package:movie_app_basmla/widgets/upcoming_widget.dart';


class HomePage extends StatelessWidget {
const HomePage({super.key});

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: SingleChildScrollView(
      child: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello Basmla",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "What to watch?",
                      style: TextStyle(
                        color: Colors.white60,
                      ),
                    ),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    "images/a311595c33f205511f74349c4a05d9f8.jpg",
                    height: 60,
                    width: 60,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 60,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: const Color(0xFF292b37),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.search,
                  color: Colors.white54,
                  size: 30,
                ),
                Container(
                  width: 300,
                  margin: const EdgeInsets.only(left: 5),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.white54),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const UpcomingWidget(),
          const SizedBox(
            height: 40,
          ),
          NewMoviesWidget(),
        ],
      )),
    ),
    bottomNavigationBar: const CustomNavBar(),
  );
}
}
