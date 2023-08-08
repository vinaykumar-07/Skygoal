import 'package:flutter/material.dart';
import 'package:skygoal/page/college_page1.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  String? selectedRadio = 'bachelor_of_technology';

  void setSelectedRadio(String? value) {
    selectedRadio = value;
    // if(value)
    // Add any additional logic here
  }

  void _showImageBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Sort by',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.cancel),
                    onPressed: () {
                      Navigator.pop(context); // Close the bottom sheet
                    },
                  ),
                ],
              ),
              Divider(),
              ListTile(
                leading: const Icon(Icons.school_outlined),
                title: const Text('Bachelor of technology'),
                trailing: Radio(
                  value: 'bachelor_of_technology',
                  groupValue: selectedRadio,
                  onChanged: (value) {
                    setSelectedRadio(value);
                  },
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CollegePage(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.architecture_outlined),
                title: const Text('Bachelor of Architecture'),
                trailing: Radio(
                  value: 'bachelor_of_technology',
                  groupValue: selectedRadio,
                  onChanged: (value) {
                    setSelectedRadio(value);
                  },
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CollegePage(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.local_pharmacy_outlined),
                title: const Text('Pharma'),
                trailing: Radio(
                  value: 'bachelor_of_technology',
                  groupValue: selectedRadio,
                  onChanged: (value) {
                    setSelectedRadio(value);
                  },
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CollegePage(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.balance),
                title: const Text('Law'),
                trailing: Radio(
                  value: 'bachelor_of_technology',
                  groupValue: selectedRadio,
                  onChanged: (value) {
                    setSelectedRadio(value);
                  },
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CollegePage(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.manage_accounts),
                title: const Text('Management'),
                trailing: Radio(
                  value: 'bachelor_of_technology',
                  groupValue: selectedRadio,
                  onChanged: (value) {
                    setSelectedRadio(value);
                  },
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CollegePage(),
                    ),
                  );
                },
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
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
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
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
            const SizedBox(height: 26), // Add spacing between the containers
            GestureDetector(
              onTap: () {
                _showImageBottomSheet(context);
              },
              child: Container(
                height: 200,
                width: 300,
                color: Colors.white,
                alignment: Alignment.center,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/Image/Img4.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16), // Add spacing between the containers
            GestureDetector(
              onTap: () {
                _showImageBottomSheet(context);
              },
              child: Container(
                height: 200,
                width: 300,
                color: Colors.white,
                alignment: Alignment.center,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/Image/Img2.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16), // Add spacing between the containers
            GestureDetector(
              onTap: () {
                _showImageBottomSheet(context);
              },
              child: Container(
                height: 200,
                width: 300,
                color: Colors.white,
                alignment: Alignment.center,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/Image/Img3.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
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
        // onTap: (index) {
        //   // Handle navigation item tap here
        // },
      ),
    );
  }
}
