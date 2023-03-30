import 'package:flutter/material.dart';
import 'package:flutter_sliver_tutorial/models/user_model.dart';

class UserCard extends StatelessWidget {
  final int index;
  const UserCard({
    required this.index,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Colors.blue.shade300,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(userList[index].name),
              const SizedBox(width: 40),
              Text(userList[index].name),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            userList[index].jobTitle,
            style: const TextStyle(fontSize: 25),
          ),
        ],
      ),
    );
  }
}
