import 'package:flutter/material.dart';
import 'package:gallary/details_screen.dart';
import 'package:gallary/models/instruction.dart';
import 'package:google_fonts/google_fonts.dart';

double height;
double width;

class LoadingScreen extends StatefulWidget {
  final imageData;

  const LoadingScreen({Key key, this.imageData}) : super(key: key);
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  final instruction = allInstructors;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFAF6ED),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.only(top: 15.0, left: 1.0, right: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.menu,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15.0,
                  right: 15.0,
                ),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Santa Monica, CA',
                      style: GoogleFonts.tinos(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.keyboard_arrow_down),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Text(
                  'Best Surfing Instructors in Santa Monica, California!',
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF5E5B54),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: GoogleFonts.sourceSansPro(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF5E5B54),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: Container(
                  height: height * 0.7,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 10.0,
                        ),
                        for (var i = 0; i < allInstructors.length; i++)
                          ImageCard(
                            instructor: allInstructors[i],
                          ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  final Instructor instructor;

  const ImageCard({Key key, this.instructor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('hello Bindesh');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (contect) => DetailsScreen(
              instructor: instructor,
            ),
          ),
        );
      },
      child: Hero(
        tag: instructor.instructorPic,
        child: Container(
          width: width * 0.9,
          height: height * 0.7,
          child: Image.asset(
            instructor.instructorPic,
            width: 150.0,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
