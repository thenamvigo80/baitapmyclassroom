import 'package:flutter/material.dart';

class Myclassroom extends StatelessWidget {
  const Myclassroom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myBody(),
    );
  }

  Widget myBody() {
    return SafeArea(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: List.generate(10, (index)=> item()),
      ),
    );
  }

  Widget item() {
    return Container(
      height: 100,
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
      padding: const EdgeInsets.all(12), 
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(20),
        color: Colors.yellow[200],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Lập trình:"),
                  Text("Tin4N2025:"),
                ],
              ),
              Text("58 học viên"),
            ],
          ),

          IconButton(
            onPressed: () {
              // TODO: xử lý sự kiện
            },
            icon: const Icon(Icons.more_horiz),
          ),
        ],
      ),
    );
  }
}
