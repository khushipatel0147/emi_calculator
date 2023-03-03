import 'package:flutter/material.dart';

class Emi extends StatefulWidget {
  const Emi({Key? key}) : super(key: key);

  @override
  State<Emi> createState() => _EmiState();
}

class _EmiState extends State<Emi> {
  double amount = 0, rate = 0, year = 0,ans=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.indigo,
        title: Text(
          "EMI CALCULATOR",
          style: TextStyle(
              letterSpacing: 1,
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white),
        ),
        leading: Icon(
          Icons.list_outlined,
          color: Colors.white,
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.indigo, boxShadow: [
              BoxShadow(color: Colors.black45, blurRadius: 5, spreadRadius: 7)
            ]),
            child: Column(
              children: [
                SizedBox(height: 50),
                Text(
                  "$ans",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Your Loan Emi is  per Month",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 200, right: 25),
            child: Container(
              height: 450,
              alignment: Alignment.center,
              width: 450,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Loan Amount ",
                        style: TextStyle(
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                      Text(
                        "${amount.toInt()} ",
                        style: TextStyle(
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  Slider(
                    activeColor: Colors.lightBlueAccent,
                    inactiveColor: Colors.blueAccent,
                    value: amount,
                    thumbColor: Colors.blue,
                    divisions: 100,
                    max: 10000000,
                    onChanged: (value) {
                      setState(() {
                        amount = value;
                      });
                    },
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Intrest Rate ",
                        style: TextStyle(
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                      Text(
                        "${rate.toInt()}% ",
                        style: TextStyle(
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  Slider(
                    activeColor: Colors.lightBlueAccent,
                    inactiveColor: Colors.blueAccent,
                    value: rate,
                    thumbColor: Colors.blue,
                    divisions: 30,
                    max: 30,
                    onChanged: (value) {
                      setState(() {
                        rate = value;
                      });
                    },
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Loan Year ",
                        style: TextStyle(
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                      Text(
                        "$year ",
                        style: TextStyle(
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  Slider(
                    activeColor: Colors.lightBlueAccent,
                    inactiveColor: Colors.blueAccent,
                    value: year,
                    thumbColor: Colors.blue,
                    divisions: 30,
                    max: 30,
                    onChanged: (value) {
                      setState(() {
                        year = value;
                      });
                    },
                  ),
                  Container(
                    height: 40,
                    width: 120,
                    color: Colors.indigo,
                    child: Center(
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            ans=amount*rate/100;
                            
                          });
                        },
                        child: Text(
                          "Calculate",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              fontSize: 15),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
