import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sliver_tutorial/routes.gr.dart';
import 'package:flutter_sliver_tutorial/theme/text_theme.dart';
import 'package:flutter_sliver_tutorial/widgets/custom_app_bar.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        slivers: [
          const SliverAppBar(
            title: Text("Slivers Tutorial"),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(10),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  ListTile(
                    title: const Text(
                      "Sliver List",
                      style: CustomTextTheme.whiteTheme,
                    ),
                    tileColor: Colors.blue,
                    shape: const StadiumBorder(),
                    onTap: () => context.pushRoute(
                      const SliverListRoute(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ListTile(
                    title: const Text(
                      "Sliver Grid",
                      style: CustomTextTheme.whiteTheme,
                    ),
                    shape: const StadiumBorder(),
                    tileColor: Colors.blue,
                    onTap: () => context.pushRoute(
                      const SliverGridRoute(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ListTile(
                    title: const Text(
                      "Sliver List with Grid",
                      style: CustomTextTheme.whiteTheme,
                    ),
                    shape: const StadiumBorder(),
                    tileColor: Colors.blue,
                    onTap: () => context.pushRoute(
                      const SliverPersistantHeaderRoute(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ListTile(
                    title: const Text(
                      "Everything together with Sliver AppBar",
                      style: CustomTextTheme.whiteTheme,
                    ),
                    shape: const StadiumBorder(),
                    tileColor: Colors.blue,
                    onTap: () => context.pushRoute(
                      const SliverPersistantHeaderRoute(),
                    ),
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
