

// import 'package:crm_app/*widgets/ctmTitleAppBar.dart';
// import 'package:crm_app/screens/*homeMain/bottomSheet/openBottomSheet.dart';
// import 'package:crm_app/screens/*homeMain/bottomSheetpPriorty/bottomSheetpPriorty.dart';
// import 'package:crm_app/screens/*homeMain/confirmTask/confirmTask.dart';
// import 'package:crm_app/screens/*homeMain/dialogChooseClient/dialogChooseClient.dart';
// import 'package:crm_app/screens/*homeMain/tapsAppBar/firstTapAppBar/firstTapAppBar.dart';
// import 'package:crm_app/screens/*homeMain/tapsAppBar/secondTapAppBar/secondTapAppBar.dart';
// import 'package:crm_app/screens/*leads/popUpLeadCard/popUpLeadCard.dart';
// import 'package:crm_app/screens/*menu/drawer/drawerScreen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import '../custom/widgetsHome.dart';

// class HomeScreen extends StatefulWidget {
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen>
//     with SingleTickerProviderStateMixin {
//   GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//   int _selectedIndex = 0;
//   late TabController _tabController;
//   bool _isChecked = true;

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 2, vsync: this);
//   }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
//       drawer: DrawerScreen(),
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title: CustomTitleAppbar(title: 'الرئيسيه'),
//         elevation: 0.0,
//         leading: CustomLeadingAppBar(scaffoldKey: _scaffoldKey),
//         actions: [
//           CustomActionsAppBar(
//             onTapped: () {},
//           ),
//         ],
//         bottom: customBottomTapBar(
//             context: context,
//             ischecked: _isChecked,
//             onTapList: () {
//               print("قائمه العملاء");
//               setState(() => _isChecked = false);
//             },
//             onTapTasks: () {
//               print("مهامي");
//               setState(() => _isChecked = true);
//             }),
//       ),
//       body: _isChecked
//           ? FirstTapAppBar(tabController: _tabController)
//           : SecondTapAppBar(),
//       floatingActionButton: CustomFloatingActionBtn(onTapped: () =>showMessageDialogConfirm(context)),
//       bottomNavigationBar: SizedBox(
//         height: 75,
//         child: CustomBottomNavigationBar(
//           selectedIndex: _selectedIndex,
//           onItemTapped: _onItemTapped,
//         ),
//       ),
//     );
//   }
// }
