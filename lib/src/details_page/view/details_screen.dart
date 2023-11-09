import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Details Screen'),
      ),
    );
  }
}
