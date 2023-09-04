import 'package:car_mark/ui/view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Demo')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  viewModel.fetchParks();
                },
                child: const Icon(Icons.add)),
            Expanded(
              child: GridView.builder(
                itemCount: viewModel.parks.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  final park = viewModel.parks[index];
                  return Text(park.parkingName.toString());
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
