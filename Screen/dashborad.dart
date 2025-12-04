import 'package:avenueproperties/Controller/VisitController/totalvisitcontroller.dart';
import 'package:avenueproperties/Screen/Agreement/totalagreement.dart';
import 'package:avenueproperties/Screen/Brokerage/brokerage.dart';
import 'package:avenueproperties/Screen/Meeting/totalmeeting.dart';
import 'package:avenueproperties/Screen/Offer/totaloffer.dart';
import 'package:avenueproperties/Screen/Token/totaltoken.dart';
import 'package:avenueproperties/Screen/TotalLead/lead.dart';
import 'package:avenueproperties/Screen/Visit/totalvisit.dart';
import 'package:avenueproperties/Screen/deal.dart';
import 'package:avenueproperties/Screen/todaysLead/todayslead.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/DashboradController/dashboardcontroller.dart';

class DashboradPage extends StatefulWidget {
  const DashboradPage({super.key});

  @override
  State<DashboradPage> createState() => _DashboradPageState();
}

class _DashboradPageState extends State<DashboradPage> {
  final dash = DashboradController();
  final total = TotalVisitController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Center(child: Text("Dashboard")),
      // ),
      body: FutureBuilder(
          future: dash.firstGetdata(),
          builder: (context, snapshot) {
            var data = snapshot.data;
            return ListView.builder(
              itemCount: data!.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 18, right: 18, top: 5),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Vishal",
                              style: TextStyle(
                                  fontSize: 21, fontWeight: FontWeight.w700),
                            ),
                            Icon(
                              Icons.person,
                              color: Colors.black,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.to(() => const TotalLeads());
                              },
                              child: Container(
                                width: 155,
                                height: 130,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: const Color.fromARGB(
                                        255, 236, 232, 232),
                                    border: Border.all(color: Colors.black)),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    const CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.black,
                                        child: Icon(
                                          Icons.person_2_outlined,
                                          color: Colors.orange,
                                        )),
                                    const Text(
                                      "TOTAL LEADS",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      "+ ${data[index].assignLeads}",
                                      style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(() => const TodaysLead());
                              },
                              child: Container(
                                width: 155,
                                height: 130,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: const Color.fromARGB(
                                        255, 236, 232, 232),
                                    border: Border.all(color: Colors.black)),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    const CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.black,
                                        child: Icon(
                                          Icons.badge_sharp,
                                          color: Colors.orange,
                                        )),
                                    const Text(
                                      "TODAY'S LEADS",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text("+ ${data[index].todayAssignLeads}",
                                        style: const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500))
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                total.visitData();
                                Get.to(() => const TotalVisited());
                              },
                              child: Container(
                                width: 155,
                                height: 130,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: const Color.fromARGB(
                                        255, 236, 232, 232),
                                    border: Border.all(color: Colors.black)),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.black,
                                        child: Icon(
                                          Icons.directions_bus_filled_rounded,
                                          color: Colors.orange,
                                        )),
                                    const Text(
                                      "VISITED",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      "+ ${data[index].totalvisit}",
                                      style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(() => const TotalOffer());
                              },
                              child: Container(
                                width: 155,
                                height: 130,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: const Color.fromARGB(
                                        255, 236, 232, 232),
                                    border: Border.all(color: Colors.black)),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.black,
                                        child: Icon(
                                          Icons.badge_sharp,
                                          color: Colors.orange,
                                        )),
                                    const Text(
                                      "OFFER",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text("+ ${data[index].totalOffer}",
                                        style: const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500))
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.to(() => const TotalMeeting());
                              },
                              child: Container(
                                width: 155,
                                height: 130,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: const Color.fromARGB(
                                        255, 236, 232, 232),
                                    border: Border.all(color: Colors.black)),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.black,
                                        child: Icon(
                                          Icons.person,
                                          color: Colors.orange,
                                        )),
                                    const Text(
                                      "MEETING",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text("+ ${data[index].totalMeeting}",
                                        style: const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500))
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(() => const TotalToken());
                              },
                              child: Container(
                                width: 155,
                                height: 130,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: const Color.fromARGB(
                                        255, 236, 232, 232),
                                    border: Border.all(color: Colors.black)),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.black,
                                        child: Icon(
                                          Icons.token,
                                          color: Colors.orange,
                                        )),
                                    const Text(
                                      "TOKEN",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text("+ ${data[index].totalToken}",
                                        style: const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500))
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.to(() => const TotalAgreement());
                              },
                              child: Container(
                                width: 155,
                                height: 130,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: const Color.fromARGB(
                                        255, 236, 232, 232),
                                    border: Border.all(color: Colors.black)),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.black,
                                        child: Icon(
                                          Icons.align_horizontal_right_rounded,
                                          color: Colors.orange,
                                        )),
                                    const Text(
                                      "AGGREMENT",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text("+ ${data[index].totalAgrement}",
                                        style: const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500))
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(() => const TotalBrokerage());
                              },
                              child: Container(
                                width: 155,
                                height: 130,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: const Color.fromARGB(
                                        255, 236, 232, 232),
                                    border: Border.all(color: Colors.black)),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.black,
                                        child: Icon(
                                          Icons.broken_image,
                                          color: Colors.orange,
                                        )),
                                    const Text(
                                      "BROKERAGE",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text("${data[index].totalBrokerage}",
                                        style: const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500))
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              // onTap: () {
                              //   Get.to(()=>const TotalLeads());
                              // },
                              child: Container(
                                width: 155,
                                height: 130,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: const Color.fromARGB(
                                        255, 236, 232, 232),
                                    border: Border.all(color: Colors.black)),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    const CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.black,
                                        child: Icon(
                                          Icons.person_2_outlined,
                                          color: Colors.orange,
                                        )),
                                    const Text(
                                      "POSSESION",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      "+ ${data[index].totalPossesion}",
                                      style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(() => const FnfDael());
                              },
                              child: Container(
                                width: 155,
                                height: 130,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: const Color.fromARGB(
                                        255, 236, 232, 232),
                                    border: Border.all(color: Colors.black)),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    const CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.black,
                                        child: Icon(
                                          Icons.badge_sharp,
                                          color: Colors.orange,
                                        )),
                                    const Text(
                                      "DEAL",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text("+ ${data[index].totalDeal}",
                                        style: const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500))
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        // const SizedBox(
                        //   height: 20,
                        // ),
                        // ElevatedButton(
                        //     onPressed: () {
                        //       dash.firstGetdata();
                        //     },
                        //     child: const Text("Click"))
                      ],
                    ),
                  ),
                );
              },
            );
          }),
    );
  }
}
