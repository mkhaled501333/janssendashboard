import 'package:collapsible_sidebar/collapsible_sidebar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:janssendashboard/CRM/crm.dart';
import 'package:janssendashboard/CRM/crmProvider.dart';
import 'package:janssendashboard/foam/customers/Customer_controller.dart';
import 'package:janssendashboard/foam/foamDashboard.dart';
import 'package:janssendashboard/foam/widgits/blocks/blockFirebaseController.dart';
import 'package:janssendashboard/foam/widgits/cars/biscol.dart';
import 'package:janssendashboard/foam/widgits/finalproduct/final_product_controller.dart';
import 'package:janssendashboard/foam/widgits/industerialsecurity/industerialSecurityController.dart';
import 'package:janssendashboard/foam/widgits/orders/Order_controller.dart';
import 'package:provider/provider.dart';

String usermame = "";
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      name: "1",
      options: const FirebaseOptions(
          databaseURL: "https://janson-11f24-default-rtdb.firebaseio.com",
          apiKey: "AIzaSyAkWHl9E0KfHcvf5Ifx0WVvEXuvk2URhhs",
          appId: "1:106186917009:android:fcd892c86b7d3e3447ab30",
          messagingSenderId: "106186917009",
          projectId: "janson-11f24"));
  await Firebase.initializeApp(
      name: "2",
      options: const FirebaseOptions(
          databaseURL: "https://janssencrm-dc050-default-rtdb.firebaseio.com",
          apiKey: "",
          appId: "",
          messagingSenderId: "710129269116",
          projectId: "janssencrm-dc050"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => OrderController(),
        ),
        ChangeNotifierProvider(
          create: (context) => final_prodcut_controller(),
        ),
        ChangeNotifierProvider(
          create: (context) => Customer_controller(),
        ),
        ChangeNotifierProvider(
          create: (context) => IndusterialSecuritycontroller(),
        ),
        ChangeNotifierProvider(
          create: (context) => Carscontroller(),
        ),
        ChangeNotifierProvider(
          create: (context) => BlockFirebasecontroller(),
        ),
        ChangeNotifierProvider(
          create: (context) => CrmProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'janssen Dashboard',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Builder(builder: (context) {
          context.read<CrmProvider>().getData();
          // context.read<BlockFirebasecontroller>().getData();
          // context.read<Carscontroller>().getdata();
          // context.read<final_prodcut_controller>().getData();
          // context.read<OrderController>().getData();
          // context.read<Customer_controller>().getData();
          // context.read<IndusterialSecuritycontroller>().getdata();
          return const Scaffold(
            body: SidebarPage(),
          );
        }),
      ),
    );
  }
}

class SidebarPage extends StatefulWidget {
  const SidebarPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SidebarPageState createState() => _SidebarPageState();
}

class _SidebarPageState extends State<SidebarPage> {
  late List<CollapsibleItem> _items;
  late String _headline;

  @override
  void initState() {
    super.initState();
    _items = _generateItems;
    _headline = _items.firstWhere((item) => item.isSelected).text;
  }

  List<CollapsibleItem> get _generateItems {
    return [
      CollapsibleItem(
        text: 'foam',
        icon: Icons.assessment,
        onPressed: () => setState(() => _headline = 'foam'),
        isSelected: true,
      ),
      CollapsibleItem(
        text: 'CRM',
        icon: Icons.call,
        onPressed: () => setState(() => _headline = 'CRM'),
        isSelected: false,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    // print(_headline);

    final x = switch (_headline) {
      "foam" => FoamDashboard(),
      "CRM" => const CrmView(),
      _ => FoamDashboard(),
    };
    return SafeArea(
      child: CollapsibleSidebar(
        title: "Admin",
        customContentPaddingLeft: 0,
        customItemOffsetX: 10,
        bottomPadding: 33,
        iconSize: 25,
        itemPadding: 0,
        screenPadding: 0,
        topPadding: 33,
        maxWidth: 140,
        minWidth: 45,
        borderRadius: 0,
        curve: Curves.decelerate,
        items: _items,
        collapseOnBodyTap: true,
        body: x,
        backgroundColor: Colors.black,
        selectedIconBox: Colors.black,
        selectedIconColor: const Color.fromARGB(255, 255, 102, 0),
        selectedTextColor: const Color.fromARGB(255, 255, 102, 0),
        textStyle: const TextStyle(
            fontSize: 15,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold),
        toggleTitleStyle:
            const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        sidebarBoxShadow: const [],
      ),
    );
  }
}
