import 'package:avenueproperties/Controller/AgreementController/totalagreement.dart';
import 'package:flutter/material.dart';

// import '../../Model/AgreementModel/totalagreement.dart';

class TotalAgreement extends StatefulWidget {
  const TotalAgreement({super.key});

  @override
  State<TotalAgreement> createState() => _TotalAgreementState();
}

class _TotalAgreementState extends State<TotalAgreement> {
  final agreementcontroller = AgreementController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Center(
      //   child:Text("Agreement"),
      // ),),

      body: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18, top: 5),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Text(
                "Agreement",
                style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1),
              ),
            ),
            const SizedBox(
              height: 30,
            ),

            Expanded(
              child: FutureBuilder(
                  future: agreementcontroller.agreementData(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      // Return a loading indicator or placeholder widget while data is being fetched.
                      return const CircularProgressIndicator(
                          backgroundColor: Colors.red);
                    } else if (snapshot.hasError) {
                      // Handle the error case.
                      return Text('Error: ${snapshot.error}');
                    } else if (snapshot.data == null) {
                      // Handle the case where data is null.
                      return const Text('No data available');
                    } else {
                      var agree = snapshot.data;
                      return ListView.builder(
                        itemCount: agree!.length,
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
                                      color: const Color.fromARGB(
                                          255, 243, 242, 242),
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
                                              const Icon(
                                                  Icons.plumbing_outlined),
                                              const SizedBox(
                                                width: 15,
                                              ),
                                              Text(
                                                "${agree[index].aId}",
                                                style: const TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )
                                            ],
                                          ),
                                          // SizedBox(
                                          //   height: 5,
                                          // ),
                                          Row(
                                            children: [
                                              const Icon(
                                                  Icons.person_2_outlined),
                                              const SizedBox(
                                                width: 15,
                                              ),
                                              Text(
                                                "${agree[index].name}",
                                                style: const TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w500),
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
                                                "${agree[index].leadPhone}",
                                                style: const TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w500),
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
                                                "${agree[index].acutualBudget}",
                                                style: const TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )
                                            ],
                                          ),

                                          // SizedBox(
                                          //   height: 5,
                                          // ),
                                          Row(
                                            children: [
                                              const Icon(Icons.message),
                                              const SizedBox(
                                                width: 15,
                                              ),
                                              Text(
                                                "${agree[index].clientCode}",
                                                style: const TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )
                                            ],
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const SizedBox(
                                          height: 40,
                                        ),
                                        // Row(
                                        //   children: [
                                        //     Icon(Icons.water_drop_outlined),
                                        //     SizedBox(
                                        //       width: 15,
                                        //     ),
                                        //     Text(
                                        //       "",
                                        //       style: TextStyle(
                                        //           fontSize: 15,
                                        //           fontWeight: FontWeight.w500),
                                        //     )
                                        //   ],
                                        // ),
                                        Row(
                                          children: [
                                            const Icon(Icons.home),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            Text(
                                              "${agree[index].propertyId}",
                                              style: const TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            const Icon(Icons.real_estate_agent),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            Text(
                                              "${agree[index].comment}",
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
                    }
                  }),
            ),
            // ElevatedButton(onPressed: () {
            //   agreementcontroller.agreementData();

            // }, child: const Text("Click to here get data"))
          ],
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18, bottom: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blue,
                  ),
                  child: const Center(
                      child: Text(
                    "1",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ))),
              const SizedBox(
                width: 10,
              ),
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blue,
                  ),
                  child: const Center(
                      child: Text(
                    "2",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ))),
              const SizedBox(
                width: 10,
              ),
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blue,
                  ),
                  child: const Center(
                      child: Text(
                    "3",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ))),
              const SizedBox(
                width: 10,
              ),
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blue,
                  ),
                  child: const Center(
                      child: Text(
                    "4",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ))),
              const SizedBox(
                width: 10,
              ),
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blue,
                  ),
                  child: const Center(
                      child: Text(
                    "5",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ))),
              const SizedBox(
                width: 10,
              ),
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blue,
                  ),
                  child: const Center(
                      child: Text(
                    "6",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ))),
              const SizedBox(
                width: 10,
              ),
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blue,
                  ),
                  child: const Center(
                      child: Text(
                    "7",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ))),
              const SizedBox(
                width: 10,
              ),
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blue,
                  ),
                  child: const Center(
                      child: Text(
                    "8",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ))),
              const SizedBox(
                width: 10,
              ),
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blue,
                  ),
                  child: const Center(
                      child: Text(
                    "9",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ))),
              const SizedBox(
                width: 10,
              ),
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blue,
                  ),
                  child: const Center(
                      child: Text(
                    "10",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ))),
              const SizedBox(
                width: 10,
              ),
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blue,
                  ),
                  child: const Center(
                      child: Text(
                    "11",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ))),
              const SizedBox(
                width: 10,
              ),
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blue,
                  ),
                  child: const Center(
                      child: Text(
                    "12",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ))),
              const SizedBox(
                width: 10,
              ),
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blue,
                  ),
                  child: const Center(
                      child: Text(
                    "13",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ))),
              const SizedBox(
                width: 10,
              ),
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blue,
                  ),
                  child: const Center(
                      child: Text(
                    "14",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ))),
              const SizedBox(
                width: 10,
              ),
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blue,
                  ),
                  child: const Center(
                      child: Text(
                    "15",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ))),
              const SizedBox(
                width: 10,
              ),
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blue,
                  ),
                  child: const Center(
                      child: Text(
                    "16",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  )))
            ],
          ),
        ),
      ),
    );
  }
}
