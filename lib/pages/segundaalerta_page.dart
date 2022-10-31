import 'package:flutter/material.dart';

class AlertPagee extends StatelessWidget {
  showMyAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "Blog post published",
            style: TextStyle(fontSize: 40),
          ),
          backgroundColor: Colors.white,
          content: Text(
            "this blog post been pusblished. team members will be able to edit this post and republish changes.",
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("cancel"),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("confirm"),
                ),
              ],
            )
          ],
        );
      },
    );
  }

  showMyAlert2(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Column(
              children: [
                Image.network(
                    "https://images.pexels.com/photos/1926404/pexels-photo-1926404.jpeg"),
                Title(
                  color: Colors.black,
                  child: Text("Blog post published"),
                ),
                Text("tihs blog post has been published . Team members"
                    "will be able to edit this post and republish changes")
              ],
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Cancel"),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Confirm"),
                  ),
                ],
              )
            ],
          );
        });
  }

  showMyAlert3(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                  "https://i0.wp.com/news.qoo-app.com/en/wp-content/uploads/sites/3/2022/08/More-Than-a-Married-Couple-But-Not-Lovers-Anime-Reveals-1st-PV-Main-Cast-and-October-Debut_cover.jpeg"),
              Text("Your video has been uploaded"),
              Text("you're video has finished uploading end is live"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Ingrese un link"),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Card(
                      child: Row(
                        children: [
                          Icon(Icons.share),
                          Text(
                            "Copy Link",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 6, 2, 243)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Skip",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Card(
                    
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Next ",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    color: Color.fromARGB(255, 87, 35, 146),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Page"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showMyAlert(context);
              },
              child: Text("primera alerta"),
            ),
            ElevatedButton(
              onPressed: () {
                showMyAlert2(context);
              },
              child: Text("Segunda alerta"),
            ),
            ElevatedButton(
              onPressed: () {
                showMyAlert3(context);
              },
              child: Text("Tercera alerta"),
            ),
          ],
        ),
      ),
    );
  }
}
