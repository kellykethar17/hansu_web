// import 'package:flutter/material.dart';
// import 'package:flutter_toastr/flutter_toastr.dart';
//
// import '../about.dart';
// import '../contacts.dart';
// import '../farmerscompanion.dart';
// import '../services.dart';
//
// class NavLink extends StatefulWidget {
//   const NavLink({super.key, required this.text});
//   final String text;
//
//   @override
//   State<NavLink> createState() => _NavLinkState();
// }
//
// class _NavLinkState extends State<NavLink> {
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 48,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 8),
//         child: TextButton(
//           child: Text(widget.text,
//               style: Theme.of(context)
//                   .textTheme
//                   .titleSmall!
//                   .copyWith(color: Colors.white)),
//           onPressed: () {
//             NavigateTo(widget.text);
//             FlutterToastr.show( 'Just tap', context ,
//               duration: FlutterToastr.lengthShort, position: FlutterToastr.center
//
//             );
//           },
//         ),
//       ),
//     );
//   }
//
//   void NavigateTo(String text) {
//     text = text;
//     if(text.endsWith("le")){
//       Navigator.of(context).push(MaterialPageRoute(builder: (context) => const About()));}
//     else if(text.endsWith("os")){
//       Navigator.of(context).push(MaterialPageRoute(builder: (context) => const FarmersCompanion()));}
//     else if(text.endsWith("ts")){
//       Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Services()));}
//     else if(text.endsWith("ns")){
//       Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Contacts()));}
//
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_toastr/flutter_toastr.dart';
import 'package:hansu_web/about.dart';
import 'package:hansu_web/contacts.dart';
import 'package:hansu_web/farmerscompanion/farmerscompanion.dart';
import 'package:hansu_web/services.dart';

class NavLink extends StatefulWidget {
  const NavLink({super.key, required this.text, required this.destination});

  final String text;
  final Widget destination; // Add a destination property

  @override
  State<NavLink> createState() => _NavLinkState();
}

class _NavLinkState extends State<NavLink> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: TextButton(
          child: Text(widget.text,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: Colors.black)),
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => widget.destination));
            FlutterToastr.show('Navigating to ${widget.text}', context,
                duration: FlutterToastr.lengthShort,
                position: FlutterToastr.center);
          },
        ),
      ),
    );
  }

  void navigateTo(String text) {
    const NavLink(text: 'About', destination: About());
    const NavLink(text: 'Farmers Companion', destination: FarmersCompanion());
    const NavLink(text: 'Services', destination: Services());
    const NavLink(text: 'Contacts', destination: Contacts());
  }
}
