import 'package:flutter/material.dart';

void main() {
  runApp(
      new MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen()));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white30,
        elevation: 0,
        centerTitle: true,
        title: Text("Home",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.2,
            )),
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.filter,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: 15,
          right: 15,
          top: 15,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  child: GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                childAspectRatio: 2.9 / 1,
                crossAxisSpacing: 10,
                mainAxisSpacing: 14,
                children: [
                  gridviewItem(Color.fromRGBO(0, 136, 255, 1),
                      Icons.fire_extinguisher, "Popular"),
                  gridviewItem(Color.fromARGB(132, 92, 238, 1),
                      Icons.calendar_today, "Hasta"),
                  gridviewItem(Color.fromARGB(255, 72, 88, 1),
                      Icons.more_time_sharp, "Recientes"),
                  gridviewItem(Color.fromARGB(255, 186, 8, 1),
                      Icons.video_collection, "Mas vistos"),
                ],
              )),
              SizedBox(
                height: 35,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Recomendado",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: 20,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 2,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                20,
                              ),
                              child: Image(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "http://www.palosolo.org.mx/wp-content/uploads/2015/01/10903744_779258232129488_196459968_n.jpg"),
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 18,
                                top: 24,
                              ),
                              child: Text(
                                "Educacion de niños",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 36,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(
                                "\$ 224",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text("Donar",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.2,
                                  ))
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "\$ 300",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text("Donar",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.2,
                                  ))
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "\$ 500",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text("Donar",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.2,
                                  ))
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      SliderTheme(
                          child: Slider.adaptive(
                              value: 90, min: 0, max: 100, onChanged: null),
                          data: SliderTheme.of(context).copyWith(
                              disabledActiveTrackColor:
                                  Color.fromARGB(255, 10, 200, 100),
                              trackHeight: 4,
                              thumbColor: Colors.transparent,
                              thumbShape: RoundSliderThumbShape(
                                enabledThumbRadius: 0,
                              )))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget gridviewItem(
    color,
    icon,
    text,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(
          36,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          SizedBox(
            width: 4,
          ),
          Text(text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ))
        ],
      ),
    );
  }
}
