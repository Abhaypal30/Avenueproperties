import 'package:avenueproperties/Controller/TotalleadController/totallead.dart';
import 'package:flutter/material.dart';

class TotalLeads extends StatefulWidget {
  const TotalLeads({super.key});

  @override
  State<TotalLeads> createState() => _TotalLeadsState();
}

class _TotalLeadsState extends State<TotalLeads> {
  final lead = TotalLeadController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: const Center(child: Text('TotalLeasd'),),
        // ),

        body: Padding(
      padding: const EdgeInsets.only(left: 18, right: 18, top: 5),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const Text(
            "TotalLead",
            style: TextStyle(fontSize: 21, letterSpacing: 1),
          ),
          // ElevatedButton(onPressed: () {
          //   lead.totalData();

          // }, child: const Text("Press here"))
          Expanded(
            child: FutureBuilder(
                future: lead.totalData(),
                builder: (context, snapshot) {
                  var totallead = snapshot.data;
                  return ListView.builder(
                    itemCount: totallead!.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 210,
                                height: 160,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      bottomLeft: Radius.circular(8)),
                                  color:
                                      const Color.fromARGB(255, 243, 242, 242),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, top: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(Icons.plumbing_outlined),
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            "${totallead[index].leadId}",
                                            style: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),
                                      // SizedBox(
                                      //   height: 5,
                                      // ),
                                      Row(
                                        children: [
                                          const Icon(Icons.person_2_outlined),
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          Expanded(
                                            child: Text(
                                              "${totallead[index].name}",
                                              style: const TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          )
                                        ],
                                      ),
                                      // SizedBox(
                                      //   height: 5,
                                      // ),
                                      Row(
                                        children: [
                                          const Icon(Icons.phone),
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            "${totallead[index].leadPhone}",
                                            style: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),

                                      // SizedBox(
                                      //   height: 5,
                                      // ),
                                      Row(
                                        children: [
                                          const Icon(
                                              Icons.currency_rupee_sharp),
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            "${totallead[index].acutualBudget}",
                                            style: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),

                                      // SizedBox(
                                      //   height: 5,
                                      // ),
                                      Expanded(
                                        child: Row(
                                          children: [
                                            const Icon(Icons.message),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            Expanded(
                                              child: SingleChildScrollView(
                                                scrollDirection: Axis.vertical,
                                                child: Text(
                                                  "${totallead[index].comment}",
                                                  style: const TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 153,
                                height: 160,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(8),
                                      bottomRight: Radius.circular(8)),
                                  color: Color.fromARGB(255, 243, 242, 242),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Row(
                                      children: [
                                        const Icon(Icons.water_drop_outlined),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          "${totallead[index].serviceType}",
                                          style: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Icon(Icons.home),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          "${totallead[index].interestType}",
                                          style: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Icon(Icons.home_filled),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          "${totallead[index].assignAgent}",
                                          style: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          )
                        ],
                      );
                    },
                  );
                }),
          )
        ],
      ),
    ));
  }
}
