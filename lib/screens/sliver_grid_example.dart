import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sliver_tutorial/theme/text_theme.dart';
import 'package:flutter_sliver_tutorial/widgets/custom_app_bar.dart';

@RoutePage()
class SliverGridExample extends StatelessWidget {
  const SliverGridExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const CustomSliverAppBar(
            backgroundColor: Colors.blue,
            title: "Sliver Grid",
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            delegate: SliverChildBuilderDelegate(
              childCount: 30,
              (context, index) {
                return Container(
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      index.toString(),
                      style: CustomTextTheme.whiteTheme,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
