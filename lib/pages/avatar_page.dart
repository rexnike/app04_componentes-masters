import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatar Page"),
        centerTitle: true,
        elevation: 2,
        backgroundColor: Colors.purple,
        actions: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://i.pinimg.com/564x/10/5e/96/105e96ea74bcd60c19f928c96e974a1a.jpg"),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FadeInImage(
              placeholder: AssetImage("assets/images/loading.gif"),
              image: NetworkImage(
                  "https://i.pinimg.com/564x/10/5e/96/105e96ea74bcd60c19f928c96e974a1a.jpg"),
              //height: 300,
              fit: BoxFit.cover,
              fadeInDuration: Duration(milliseconds: 1300),
            ),
          ],
        ),
      ),
    );
  }
}
