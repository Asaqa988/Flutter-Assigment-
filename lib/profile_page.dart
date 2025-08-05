import 'package:flutter/material.dart';
import 'package:myapp/summary_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController userCityController = TextEditingController();

  TextEditingController userAgeController = TextEditingController();
  TextEditingController userNationallityController = TextEditingController();

  // push the hoppy to a list
  // List<String> hobbies = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile Page')),
      body: Center(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'the user name'),
              controller: userNameController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'the user city'),
              controller: userCityController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'the user age'),
              controller: userAgeController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'the user nationallity'),
              controller: userNationallityController,
            ),

            // dropdown

            // button to  add hoppies ( to call the function to add hobbies)
            SizedBox(height: 100),
            ElevatedButton(
              child: Text('Save'),
              onPressed: () {
                final userName = userNameController.text.trim();
                final userCity = userCityController.text.trim();
                final userAge = userAgeController.text.trim();
                final userNationallity = userNationallityController.text.trim();

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SummaryPage(
                      name: userName,
                      city: userCity,
                      age: userAge,
                      nationallity: userNationallity,
                      hobbies:
                          [], // Assuming hobbies are not used in this example
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
