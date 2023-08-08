import 'package:flutter/material.dart';
import 'package:skygoal/page/college_page1.dart';
import 'package:skygoal/page/hostel_page.dart';

class CollegeDescription extends StatelessWidget {
  const CollegeDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _navigateToCollegePage(BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                const CollegePage()), // Navigate to CollegePage
      );
    }

    void _navigateToHostelPage(BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                const HostelPage()), // Navigate to CollegePage
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        leading: IconButton(
          icon: const CircleAvatar(child: Icon(Icons.arrow_back)),
          onPressed: () {
            // Add your desired action here
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
              height: 200,
              child: Image.asset(
                'assets/Image/Img4.png',
                fit: BoxFit.cover,
              ),
            ),

            // Heading and text next to the image
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
                    // color: Colors.green,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.green),
                    child: const Column(
                      children: [
                        Text(
                          ' 4.5',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                        SizedBox(height: 8),
                        // Add other rating-related widgets here, such as stars or icons
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Container to wrap the row of text buttons
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.amber[50]),
              // padding: EdgeInsets.symmetric(horizontal: 16.0),
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
            Container(
              padding: const EdgeInsets.all(16),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Additional Information',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed accumsan diam eu mauris varius, in feugiat odio lacinia. Aliquam hendrerit, erat id malesuada tristique, ex nisi viverra odio, nec suscipit elit urna a dui.',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const Text(
              "location",
              style: TextStyle(),
            ),
            Container(
              width: 200,
              // margin: const EdgeInsets.symmetric(vertical: 20),
              child: Image.asset(
                'assets/Image/location.png', // Replace with the path to your image
                width: 200, // Set the width of the image
                height: 200, // Set the height of the image
                fit: BoxFit.cover, // Adjust the image fit as needed
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
                      left: 100, right: 100), // ,Adjust the padding as needed
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
