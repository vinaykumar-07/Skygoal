import 'package:flutter/material.dart';
import 'package:skygoal/page/college_desc.dart';

class CollegePage extends StatelessWidget {
  const CollegePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('College Page'),
      ),
      body: Column(
        children: [
          Container(
            height: 150,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              color: Color.fromARGB(255, 14, 86, 181),
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Notification Bar
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Find your own way',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.notifications,
                      size: 30,
                    ),
                  ],
                ),
                const Text("Search in 600 colleges around!"),

                const SizedBox(height: 16), // Add some spacing

                // Search Bar with Mic Icon
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'Search in 600 colleges around',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 100),
                    CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      child: IconButton(
                        icon: const Icon(Icons.mic),
                        onPressed: () {
                          // Handle microphone button press
                        },
                      ),
                    ),
                  ],
                ),

                // Add more widgets or content here if needed
              ],
            ),
          ),
          const Row(
            children: [
              Text("MVSH Enginerring College"),
              SizedBox(
                width: 5,
              ),
              Text("MVSH Enginerring College"),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 4, // Number of containers in the list
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              CollegeDescription()), // Replace CollegeDescription with the actual page you want to navigate to
                    );
                  },
                  child: _buildImageContainer(
                    image:
                        'assets/image/Image2.png', // Replace with your image asset paths
                    description: 'Description ',
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Bookmark',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        onTap: (index) {
          // Handle navigation item tap here
        },
      ),
    );
  }

  Widget _buildImageContainer(
      {required String image, required String description}) {
    return Container(
      width: 100,
      height: 200,
      decoration: BoxDecoration(
        // Use the asset image as the background
        image: const DecorationImage(
          image: AssetImage(
              'assets/Image/Img4.png'), // Use the provided image parameter
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
      child: Stack(
        children: [
          const Positioned(
            top: 10,
            left: 10,
            child: CircleAvatar(
              child: Icon(Icons.share_outlined, color: Colors.black),
            ),
          ),
          const Positioned(
            top: 10,
            right: 10,
            child: CircleAvatar(
              child: Icon(Icons.bookmark_border_outlined,
                  color: Colors.black, size: 30),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 10,
            right: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(padding: EdgeInsets.only(top: 31)),
                const Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      " GHJK Engineering College",
                      strutStyle: StrutStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Icon(Icons.star, color: Colors.yellow, size: 20),
                    Text(
                      '4.5', // Replace this with the actual rating
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 200,
                      child: const Text(
                        ''' Lorem ipsum dolor sit amet,consectetur adipiscing ''',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => CollegeDescription(),
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color.fromARGB(255, 6, 211, 88)),
                          child: const Text("Apply Now")),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Container(
                  height: 1,
                  color: Colors.white,
                ),
                const SizedBox(height: 8),
                const Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.bookmark_added, color: Colors.white),
                    Text(
                      '1000+ students placed',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(Icons.remove_red_eye_outlined, color: Colors.white),
                    Text(
                      '340+',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
