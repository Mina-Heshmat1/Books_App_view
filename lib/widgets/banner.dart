// import 'package:flutter/material.dart';
//
// class BannerAnimation extends StatefulWidget {
//   @override
//   _BannerAnimationState createState() => _BannerAnimationState();
// }
//
// class _BannerAnimationState extends State<BannerAnimation> with SingleTickerProviderStateMixin {
//   late AnimationController _animationController;
//   late PageController _pageController;
//
//   @override
//   void initState() {
//     super.initState();
//     _animationController = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: 5), // Change the duration as needed
//     )..repeat(reverse: true);
//
//     _pageController = PageController();
//   }
//
//   @override
//   void dispose() {
//     _animationController.dispose();
//     _pageController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Banner Animation'),
//       ),
//       body: AnimatedBuilder(
//         animation: _animationController,
//         builder: (context, child) {
//           return PageView.builder(
//             controller: _pageController,
//             itemCount: 3, // Adjust based on the number of images
//             itemBuilder: (context, index) {
//               double value = _animationController.value;
//               double offset = value * MediaQuery.of(context).size.width;
//               return Transform.translate(
//                 offset: Offset(-offset + index * MediaQuery.of(context).size.width, 0),
//                 child: Image.asset(
//                   ' assets/images${index + 1}.jpg',
//                   fit: BoxFit.cover,
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }