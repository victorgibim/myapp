import 'package:flutter/material.dart';

class ImageClickEvent extends StatefulWidget {
  @override
  ImageClickEventState createState() {
    return new ImageClickEventState();
  }
}

class ImageClickEventState extends State<ImageClickEvent> {
  int countValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Image Cick Event Example'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
                child: Center(
                    child: Text(countValue.toString(),
                        style: TextStyle(fontSize: 25.0)))),
            GestureDetector(
              onTap: () {
                //Insert event to be fired up when button is clicked here
                //in this case, this increments our `countValue` variable by one.
                setState(() => countValue += 1);
              },
              child: CircleAvatar(
                backgroundImage: ExactAssetImage('https://www.google.com/imgres?imgurl=http%3A%2F%2Fwww.simpleimageresizer.com%2Fstatic%2Fimages%2Fsimple-image-resizer-128x128.png&imgrefurl=http%3A%2F%2Fwww.simpleimageresizer.com%2F&docid=UACEuVSPRuzH2M&tbnid=0CGEyZJCO5z8NM%3A&vet=10ahUKEwiS9pPdw6XkAhXFHbkGHT8aDAwQMwh5KAEwAQ..i&w=128&h=128&bih=578&biw=1280&q=image&ved=0ahUKEwiS9pPdw6XkAhXFHbkGHT8aDAwQMwh5KAEwAQ&iact=mrc&uact=8'),
                minRadius: 80,
                maxRadius: 120,
              ),
            ),
            SizedBox(
              height: 40,
            )
          ],
        )));
  }
}