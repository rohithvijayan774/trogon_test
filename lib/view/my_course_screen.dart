import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:trogon_test/controller/controller.dart';
import 'package:trogon_test/widgets/my_course_appbar.dart';
import 'package:trogon_test/widgets/my_course_squarecard.dart';

class MyCourseScreen extends StatelessWidget {
  const MyCourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final controller = Provider.of<Controller>(context);
    return Scaffold(
      body: Consumer<Controller>(builder: (context, controller, _) {
        return FutureBuilder(
            future: controller.fetchCourses(),
            builder: (context, snapshot) {
              return snapshot.connectionState == ConnectionState.waiting
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : Column(
                      children: [
                        const MyCourseAppBar(),
                        Expanded(
                          child: SingleChildScrollView(
                            physics: const AlwaysScrollableScrollPhysics(),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      MyCourseSquareCard(
                                        color1: Color(0xFFED617B),
                                        color2: Color(0xFFF2859B),
                                        text: 'Exam',
                                        image: 'assets/exam.png',
                                      ),
                                      MyCourseSquareCard(
                                        color1: Color(0xFFFFAF01),
                                        color2: Color(0xFFECC07F),
                                        text: 'Practice',
                                        image: 'assets/practice.png',
                                      ),
                                      MyCourseSquareCard(
                                        color1: Color(0xFF24AED2),
                                        color2: Color(0xFF7BC9DD),
                                        text: 'Materials',
                                        image: 'assets/material.png',
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Text(
                                    'Courses',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    // height: size.height * 0.5,
                                    child: GridView.builder(
                                      shrinkWrap: true,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 3,
                                        crossAxisSpacing: 20.0,
                                        mainAxisSpacing: 20.0,
                                      ),
                                      itemCount: 10,
                                      itemBuilder: (context, index) {
                                        return CircleAvatar(
                                          maxRadius: 1,
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
            });
      }),
    );
  }
}
