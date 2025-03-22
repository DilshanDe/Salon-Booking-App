import 'package:baber_app/pages/booking.dart';
import 'package:baber_app/services/shared_pref.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? name, image;

  getthedatafromsharedpref() async {
    name = await SharedpreferenceHelper().getUserName();
    image = await SharedpreferenceHelper().getUserImage();
    setState(() {});
  }

  getontheload() async {
    await getthedatafromsharedpref();
    setState(() {});
  }

  @override
  void initState() {
    getontheload();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2b1615),
      body: name == null || image == null
          ? Center(child: CircularProgressIndicator()) // Show loading indicator
          : Container(
              margin: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello",
                            style: TextStyle(
                                color: Color.fromARGB(213, 255, 255, 255),
                                fontSize: 25.0,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            name ??
                                "Guest", // Fallback to "Guest" if name is null
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: image != null
                            ? Image.network(
                                image!,
                                height: 50,
                                width: 50,
                                fit: BoxFit.cover,
                              )
                            : Icon(Icons.person,
                                size: 50,
                                color: Colors.white), // Placeholder icon
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    color: Colors.white30,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Services",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Booking(service: 'Classic Shaving'),
                              ),
                            );
                          },
                          child: Container(
                            height: 150,
                            decoration: BoxDecoration(
                                color: Color(0xFFe29452),
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "images/shaving.png",
                                  height: 80.0,
                                  width: 80,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  "Classic Shaving",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Booking(service: 'Hair Washing'),
                              ),
                            );
                          },
                          child: Container(
                            height: 150,
                            decoration: BoxDecoration(
                                color: Color(0xFFe29452),
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "images/hair.png",
                                  height: 80.0,
                                  width: 80,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  "Hair Washing",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Booking(service: 'Bread Trimining'),
                              ),
                            );
                          },
                          child: Container(
                            height: 150,
                            decoration: BoxDecoration(
                                color: Color(0xFFe29452),
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "images/beard.png",
                                  height: 80.0,
                                  width: 80,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  "Bread Trimining",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Booking(service: 'Cutting'),
                              ),
                            );
                          },
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      Booking(service: 'Hair cutting'),
                                ),
                              );
                            },
                            child: Container(
                              height: 150,
                              decoration: BoxDecoration(
                                  color: Color(0xFFe29452),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "images/cutting.png",
                                    height: 80.0,
                                    width: 80,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    "Cutting",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Booking(service: 'Kids Hair Cutting'),
                              ),
                            );
                          },
                          child: Container(
                            height: 150,
                            decoration: BoxDecoration(
                                color: Color(0xFFe29452),
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "images/kids.png",
                                  height: 80.0,
                                  width: 80,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  "Kids Hair Cutting",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Booking(service: 'Facials'),
                              ),
                            );
                          },
                          child: Container(
                            height: 150,
                            decoration: BoxDecoration(
                                color: Color(0xFFe29452),
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "images/facials.png",
                                  height: 100.0,
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  "Facials",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
    );
  }
}
