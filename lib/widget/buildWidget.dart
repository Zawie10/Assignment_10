import 'package:flutter/material.dart';

class PortraitView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 10),
        const CircleAvatar(
          radius: 140,
          backgroundImage: NetworkImage(
            'https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-980x653.jpg',
          ),
        ),
        const SizedBox(height: 12),
        const Text(
          'John Doe',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it',
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.start,
          ),
        ),
        const SizedBox(height: 20),
        Expanded(
          child: GridView.count(
            crossAxisCount: 3,
            children: List.generate(6, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0), // Add spacing here
                child: Image.network(
                  'https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-980x653.jpg',
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
        const SingleChildScrollView(
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 130,
                  backgroundImage: NetworkImage(
                    'https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-980x653.jpg',
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              const SizedBox(height: 10),
              const Text(
                'John Doe',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
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
                        'https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-980x653.jpg',
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
