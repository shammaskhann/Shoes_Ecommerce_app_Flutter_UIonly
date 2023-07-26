import 'package:flutter/material.dart';

class ProfileShow extends StatelessWidget {
  const ProfileShow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      //mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        _mainPageHeading("Profile"),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 4, 4, 255),
                borderRadius: BorderRadius.circular(10)),
            child: const Center(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/profile.png"),
                  radius: 30,
                ),
                title: Text(
                  "Name",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  "Name",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        _mainPageHeading("Settings"),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: const [
                  ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.person),
                    ), //Icon(Icons.person),
                    title: Text("My Account"),
                    subtitle: Text("Manage changes to your account"),
                    trailing: Icon(Icons.arrow_right),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.notifications),
                    ), //Icon(Icons.person),
                    title: Text("Notifications"),
                    subtitle: Text("Manage notifications"),
                    trailing: Icon(Icons.arrow_right),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.lock),
                    ), //Icon(Icons.person),
                    title: Text("Privacy"),
                    subtitle: Text("Manage privacy settings"),
                    trailing: Icon(Icons.arrow_right),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.help),
                    ), //Icon(Icons.person),
                    title: Text("Help"),
                    subtitle: Text("Help and support"),
                    trailing: Icon(Icons.arrow_right),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.logout),
                    ), //Icon(Icons.person),
                    title: Text("Logout"),
                    subtitle: Text("Logout from the app"),
                    trailing: Icon(Icons.arrow_right),
                  ),
                ],
              )),
        )
      ],
    ));
  }
}

Widget _mainPageHeading(String title) {
  return Padding(
    padding: const EdgeInsets.only(left: 15.0, top: 15),
    child: Text(
      title,
      style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    ),
  );
}
