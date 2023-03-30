import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_sliver_tutorial/models/user_model.dart';
import 'package:flutter_sliver_tutorial/routes.gr.dart';
import 'package:flutter_sliver_tutorial/widgets/user_card.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class SliverPersistantHeaderScreen extends StatelessWidget {
  const SliverPersistantHeaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            stretch: true,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                "Slivers Demo",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              stretchModes: const [
                StretchMode.blurBackground,
                StretchMode.zoomBackground,
              ],
              background: DecoratedBox(
                position: DecorationPosition.foreground,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black45, Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                    stops: [0.1, 1],
                  ),
                ),
                child: Image.asset(
                  "assets/dash_background.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SliverPersistentHeader(
            pinned: true,
            delegate: CustomDelegate(title: 'Milan'),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: userList.length,
              (context, index) {
                return InkWell(
                  onTap: () => context.pushRoute(
                    const SliverListRoute(),
                  ),
                  child: UserCard(index: index),
                );
              },
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              mainAxisExtent: 120,
            ),
            delegate: SliverChildBuilderDelegate(
              childCount: 9,
              (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Text(
                      "Cavin",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SliverPersistentHeader(
            pinned: true,
            delegate: CustomDelegate(title: 'Milan'),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              mainAxisExtent: 120,
            ),
            delegate: SliverChildBuilderDelegate(
              childCount: 27,
              (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Text(
                      "Cavin",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomDelegate extends SliverPersistentHeaderDelegate {
  final String title;
  const CustomDelegate({required this.title});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // log("Shrink Offest: ${shrinkOffset.toString()}");
    // log("maxExtent: $maxExtent");
    // log("shrinkOffset / maxExtent;: ${shrinkOffset / maxExtent}");
    return Material(
      child: Container(
        // duration: const Duration(milliseconds: 150),
        // opacity: 1,
        color: const Color(0xBE7A81FF),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  @override
  get stretchConfiguration => OverScrollHeaderStretchConfiguration();
  @override
  double get maxExtent => 200;

  @override
  double get minExtent => 100;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
