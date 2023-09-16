import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  var height, width;
  List imgData = [
    "assets/images/mcqs.png",
    "assets/images/quiz.png",
    "assets/images/pastpapers.png",
    "assets/images/pdf.png",
    "assets/images/job.png",
    "assets/images/about.png",
  ];
  List titles = [
    "MCQs",
    "Quiz",
    "Papers",
    "PDF",
    "Jobs",
    "About",
  ];
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      color: Colors.indigo,
      height: height,
      width: width,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(),
            height: height * 0.25,
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 35, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.sort,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            image: DecorationImage(
                              image: AssetImage("assets/images/woman.png"),
                            )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dashboard",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Last Update: 7 Aug 2023",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white38,
                            letterSpacing: 1),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            // color: Colors.amber,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            height: height * 0.75,
            width: width,
            child: SingleChildScrollView(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.1,
                  mainAxisSpacing: 25,
                ),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: imgData.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                spreadRadius: 1,
                                blurRadius: 6)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            imgData[index],
                            width: 100,
                          ),
                          Text(
                            titles[index],
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    ));
  }
}
