class UserModel {
  final int id;
  final String name;
  final String jobTitle;
  UserModel({
    required this.id,
    required this.name,
    required this.jobTitle,
  });
}

List<UserModel> userList = [
  UserModel(id: 1, name: 'Cavin', jobTitle: 'Flutter Developer'),
  UserModel(id: 2, name: 'Milan', jobTitle: 'Developer Advocate'),
  UserModel(id: 3, name: 'Nikhil', jobTitle: 'Relations enginner'),
  // UserModel(id: 4, name: 'Ruchit', jobTitle: 'Flutter Developer'),
  // UserModel(id: 5, name: 'Pratik', jobTitle: 'Flutter Lead'),
  // UserModel(id: 6, name: 'Mukund', jobTitle: 'Project Manager'),
];
