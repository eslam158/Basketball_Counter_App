import 'package:flutter/material.dart';

void main() {
  runApp(Basket_counter());
}

class Basket_counter extends StatefulWidget {
  @override
  State<Basket_counter> createState() => _Basket_counterState();
}

class _Basket_counterState extends State<Basket_counter> {
  int team_A_points = 0;

  int team_B_points = 0;

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Points Counter"),
          backgroundColor: Colors.deepOrange,
          foregroundColor: Colors.white,
        ),
        body: Column(
          children: [
            SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text("Team A", style: TextStyle(fontSize: 35)),
                    Text("$team_A_points", style: TextStyle(fontSize: 155)),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                        minimumSize: Size(150, 60),
                        backgroundColor: Colors.deepOrange,
                      ),
                      onPressed: () {
                        setState(() {
                          team_A_points++;
                        });
                        print(team_A_points);
                      },
                      child: Text(
                        "Add 1 Point",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    SizedBox(height: 18),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                        minimumSize: Size(150, 60),
                        backgroundColor: Colors.deepOrange,
                      ),
                      onPressed: () {
                        setState(() {
                          team_A_points += 2;
                        });
                      },
                      child: Text(
                        "Add 2 Point",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    SizedBox(height: 18),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                        minimumSize: Size(150, 60),
                        backgroundColor: Colors.deepOrange,
                      ),
                      onPressed: () {
                        setState(() {
                          team_A_points += 3;
                        });
                      },
                      child: Text(
                        "Add 3 Point",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    SizedBox(height: 18),
                  ],
                ),
                SizedBox(
                  height: 530,
                  child: VerticalDivider(
                    endIndent: 30,
                    indent: 30,
                    color: Colors.black,
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    Text("Team B", style: TextStyle(fontSize: 35)),
                    Text("$team_B_points", style: TextStyle(fontSize: 155)),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                        minimumSize: Size(150, 60),
                        backgroundColor: Colors.deepOrange,
                      ),
                      onPressed: () {
                        setState(() {
                          team_B_points++;
                        });
                      },
                      child: Text(
                        "Add 1 Point",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    SizedBox(height: 18),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                        minimumSize: Size(150, 60),
                        backgroundColor: Colors.deepOrange,
                      ),
                      onPressed: () {
                        setState(() {
                          team_B_points += 2;
                        });
                      },
                      child: Text(
                        "Add 2 Point",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    SizedBox(height: 18),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                        minimumSize: Size(150, 60),
                        backgroundColor: Colors.deepOrange,
                      ),
                      onPressed: () {
                        setState(() {
                          team_B_points += 3;
                        });
                      },
                      child: Text(
                        "Add 3 Point",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    SizedBox(height: 18),
                  ],
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
                minimumSize: Size(150, 60),
                backgroundColor: Colors.deepOrange,
              ),
              onPressed: () {
                setState(() {
                  team_A_points = 0;
                  team_B_points = 0;
                });
              },
              child: Text(
                "Reset",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
