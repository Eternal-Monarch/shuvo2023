import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyScreen(),
    );
  }
}

class MyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Assignment')),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? PortraitView()
              : LandscapeView();
        },
      ),
    );
  }
}

class PortraitView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 140,
          backgroundImage: NetworkImage(
            'https://images.pexels.com/photos/169359/pexels-photo-169359.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
          ),
        ),
        SizedBox(height: 12),
        Text(
          'John Doe',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Text(
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        Expanded(
          child: GridView.count(
            crossAxisCount: 3,
            children: List.generate(6, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0), // Add spacing here
                child: Image.network(
                  'https://images.pexels.com/photos/169359/pexels-photo-169359.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  fit: BoxFit.cover,
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}

class LandscapeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 140,
                backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/169359/pexels-photo-169359.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                ),
              ),
              SizedBox(height: 10),

            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              SizedBox(height: 10),
              Text(
                'John Doe',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 3,
                  children: List.generate(6, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0), // Add spacing here
                      child: Image.network(
                        'https://images.pexels.com/photos/169359/pexels-photo-169359.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                        fit: BoxFit.cover,
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
