import 'package:flutter/material.dart';
import 'package:parkify_mobile_app/views/register.dart';

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50),
        child: ListView(
          children: [
            Container(
              height: 360,
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Text(
                'Parkify',
                style: TextStyle(fontSize: 80, color: Colors.blue),
              ),
            ),
            /*
            Container(
              child: Image(
                image: NetworkImage("https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/228a-pom-2019.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=5efa2f5a374a9852f14b874acf299afe"),
              ),
            ),
             */
            /*
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(50, 10, 50, 0),
              child: ElevatedButton(
                child: const Text('Login'),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const Login();
                      },
                    ),
                  );
                },
              ),
            ),
            */
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return Register();
                    },
                  ),
                );
              },
              child: Icon(Icons.arrow_right_alt, color: Colors.white),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(40),
                backgroundColor: Colors.blue, // <-- Button color
                foregroundColor: Colors.blueGrey, // <-- Splash color

              ),
            )
          ],
        ),
      ),
    );
  }

}