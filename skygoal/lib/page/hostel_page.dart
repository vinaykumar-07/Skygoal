import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:skygoal/page/college_page1.dart';
import 'package:skygoal/page/home_page.dart';

class HostelPage extends StatefulWidget {
  const HostelPage({Key? key}) : super(key: key);

  @override
  _HostelPageState createState() => _HostelPageState();
}

class _HostelPageState extends State<HostelPage> {
  final PageController _pageController = PageController();
  double _currentPage = 0;

  void _navigateToCollegePage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => const CollegePage()), // Navigate to CollegePage
    );
  }

  void _navigateToHomePage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => HomePage()), // Navigate to CollegePage
    );
  }

  void _navigateToHostelPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => const HostelPage()), // Navigate to CollegePage
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        leading: IconButton(
          icon: const CircleAvatar(child: Icon(Icons.arrow_back)),
          onPressed: () {
            // Add your desired action here
            _navigateToHomePage(context);
          },
        ),
        actions: [
          IconButton(
            icon:
                const CircleAvatar(child: Icon(Icons.bookmark_border_outlined)),
            onPressed: () {
              // Add your desired action here
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              child: Image.asset(
                'assets/Image/Img1.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 0, left: 10, right: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Your Heading',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Your text regarding the heading goes here.',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 0),
                    alignment: Alignment.center,
                    color: Colors.green,
                    child: const Column(
                      children: [
                        Text(
                          ' 4.5',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        Icon(Icons.star),
                        SizedBox(height: 8),
                        // Add other rating-related widgets here, such as stars or icons
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.amber[50],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      // Add your desired action for the first button
                      _navigateToCollegePage(context);
                    },
                    child: const Text('About College'),
                  ),
                  TextButton(
                    onPressed: () {
                      // Add your desired action for the second button
                      _navigateToHostelPage(context);
                    },
                    child: const Text('Hostel facility'),
                  ),
                  TextButton(
                    onPressed: () {
                      // Add your desired action for the third button
                    },
                    child: const Text('Q & A'),
                  ),
                  TextButton(
                    onPressed: () {
                      // Add your desired action for the fourth button
                    },
                    child: const Text('Event'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildIconWithText(Icons.hotel, '4'),
                  _buildIconWithText(Icons.hotel, '3'),
                  _buildIconWithText(Icons.hotel, '2'),
                  _buildIconWithText(Icons.hotel, '1'),
                  // Add more icons with text as needed
                ],
              ),
            ),
            // Wrap the slideable part in a Transform widget
            Transform.translate(
              offset: const Offset(0.2, 10), // Adjust the offset as needed
              child: Container(
                height: 200, // Adjust the height as needed
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page.toDouble();
                    });
                  },
                  children: [
                    // Padding(padding: EdgeInsets.only(bottom: 10)),
                    _buildSlideableImage('assets/Image/Img1.png'),
                    _buildSlideableImage('assets/Image/Img2.png'),
                    _buildSlideableImage('assets/Image/Img3.png'),
                    _buildSlideableImage('assets/Image/Img4.png'),
                    _buildSlideableImage('assets/Image/Img5.jpg'),
                    _buildSlideableImage('assets/Image/Img4.png'),
                    // Add more slideable images as needed
                  ],
                ),
              ),
            ),
            DotsIndicator(
              dotsCount: 6, // Replace 6 with the actual number of images
              position: _currentPage.floor(),
              decorator: const DotsDecorator(
                activeColor: Colors.blue, // Active dot color
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 40, right: 40),
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'GHJK Engineering Hostel',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 10),
                        Icon(Icons.location_on_sharp),
                        Text(
                          '''Description or text related to the heading Description or text related to the heading Description or text related to the headingDescription or text related to the heading''',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        left: 10, right: 20, bottom: 120, top: 10),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 0),
                      alignment: Alignment.center,
                      color: Colors.green,
                      child: const Column(
                        children: [
                          Text(
                            ' 4.5',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          Icon(Icons.star),
                          SizedBox(height: 8),
                          // Add other rating-related widgets here, such as stars or icons
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                  vertical: 20), // Adjust the margin as needed
              child: TextButton(
                onPressed: () {
                  // Add your desired action for the button
                },
                child: const Text(
                  'Apply Now',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue, // Customize the button color
                  padding: const EdgeInsets.only(
                      left: 100, right: 100), // Adjust the padding as needed
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        30), // Customize the button's border radius
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildIconWithText(IconData iconData, String text) {
  return Column(
    children: [
      Container(
        width: 50,
        height: 35,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Icon(iconData, size: 30, color: Colors.black),
            const SizedBox(
              width: 5,
            ),
            Text(text),
          ],
        ),
      ),
    ],
  );
}

Widget _buildSlideableImage(String imagePath) {
  return Container(
    width: double.infinity,
    height: 200, // Adjust the height as needed
    margin: const EdgeInsets.only(left: 50, right: 50, bottom: 50),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    ),
  );
}
