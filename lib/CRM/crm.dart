import 'package:flutter/material.dart';
import 'package:janssendashboard/CRM/allTickets.dart';

class CrmView extends StatelessWidget {
  const CrmView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 234, 237, 247),
      body: Column(
        children: [
          Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [Text("Analytics")],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 200,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 23, 43, 76),
                              borderRadius: BorderRadius.circular(9)),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "incaming calls : 56",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "outgoing calls : 22",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 200,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 153, 32),
                              borderRadius: BorderRadius.circular(9)),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "all Tickets  : 44",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "closed Tickets : 22",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "opend Tickets : 63",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 200,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 254, 86, 47),
                              borderRadius: BorderRadius.circular(9)),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "pending visit     : 44",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "pending delivery  : 44",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BlocksStaticks(),
              BlocksStaticks2(),
            ],
          ),
          DataGridForOrder()
        ],
      ),
    );
  }
}

class BlocksStaticks extends StatelessWidget {
  const BlocksStaticks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(9)),
      width: 400,
      child: Column(
        children: [
          const Text("complain reasons",
              style: TextStyle(color: Color.fromARGB(95, 0, 0, 0))),
          Container(
            decoration: const BoxDecoration(),
            width: 390,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Row(
                    children: [
                      const Text(
                        " هبوط ب المرتبه          ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 167, 167, 194)),
                      ),
                      Container(
                        height: 18,
                        width: 230,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 0, 82, 204),
                        ),
                        child: const Center(
                          child: Text("60%",
                              style: TextStyle(
                                  fontSize: 9,
                                  color: Color.fromARGB(255, 255, 255, 255))),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Row(
                    children: [
                      const Text(
                        " مشكله ب السوست    ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 167, 167, 194)),
                      ),
                      Container(
                        height: 18,
                        width: 140,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 0, 82, 204),
                        ),
                        child: const Center(
                          child: Text("15%",
                              style: TextStyle(
                                  fontSize: 9,
                                  color: Color.fromARGB(255, 255, 255, 255))),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Row(
                    children: [
                      const Text(
                        " مشكله ب القماش      ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 167, 167, 194)),
                      ),
                      Container(
                        height: 18,
                        width: 100,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 0, 82, 204),
                        ),
                        child: const Center(
                          child: Text("5%",
                              style: TextStyle(
                                  fontSize: 9,
                                  color: Color.fromARGB(255, 255, 255, 255))),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Row(
                    children: [
                      const Text(
                        " المرتبه مش يانسن     ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 167, 167, 194)),
                      ),
                      Container(
                        height: 18,
                        width: 60,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 0, 82, 204),
                        ),
                        child: const Center(
                          child: Text("3%",
                              style: TextStyle(
                                  fontSize: 9,
                                  color: Color.fromARGB(255, 255, 255, 255))),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        " حشرة الفراش             ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 167, 167, 194)),
                      ),
                      Container(
                        height: 18,
                        width: 15,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 0, 82, 204),
                        ),
                        child: const Center(
                          child: Text("1%",
                              style: TextStyle(
                                  fontSize: 9,
                                  color: Color.fromARGB(255, 255, 255, 255))),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BlocksStaticks2 extends StatelessWidget {
  const BlocksStaticks2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(9)),
      width: 400,
      child: Column(
        children: [
          const Text("products ",
              style: TextStyle(color: Color.fromARGB(95, 0, 0, 0))),
          Container(
            decoration: const BoxDecoration(),
            width: 390,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Row(
                    children: [
                      const Text(
                        " كلاسيك      ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 167, 167, 194)),
                      ),
                      Container(
                        height: 18,
                        width: 230,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 0, 82, 204),
                        ),
                        child: const Center(
                          child: Text("60%",
                              style: TextStyle(
                                  fontSize: 9,
                                  color: Color.fromARGB(255, 255, 255, 255))),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Row(
                    children: [
                      const Text(
                        " المانى         ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 167, 167, 194)),
                      ),
                      Container(
                        height: 18,
                        width: 140,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 0, 82, 204),
                        ),
                        child: const Center(
                          child: Text("15%",
                              style: TextStyle(
                                  fontSize: 9,
                                  color: Color.fromARGB(255, 255, 255, 255))),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Row(
                    children: [
                      const Text(
                        " سيزونال     ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 167, 167, 194)),
                      ),
                      Container(
                        height: 18,
                        width: 100,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 0, 82, 204),
                        ),
                        child: const Center(
                          child: Text("5%",
                              style: TextStyle(
                                  fontSize: 9,
                                  color: Color.fromARGB(255, 255, 255, 255))),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Row(
                    children: [
                      const Text(
                        " بيلندا          ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 167, 167, 194)),
                      ),
                      Container(
                        height: 18,
                        width: 60,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 0, 82, 204),
                        ),
                        child: const Center(
                          child: Text("3%",
                              style: TextStyle(
                                  fontSize: 9,
                                  color: Color.fromARGB(255, 255, 255, 255))),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        " بلوماس      ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 167, 167, 194)),
                      ),
                      Container(
                        height: 18,
                        width: 15,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 0, 82, 204),
                        ),
                        child: const Center(
                          child: Text("1%",
                              style: TextStyle(
                                  fontSize: 9,
                                  color: Color.fromARGB(255, 255, 255, 255))),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class datamodel {
  double density;
  int count;
  double percetn;
  datamodel(this.count, this.density, this.percetn);
}
