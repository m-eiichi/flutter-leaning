import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'features/home/ui/pages/home_page.dart';

final counterProvider = StateProvider<int>((ref) => 0);

void main() {
  runApp(
    ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

// class HomePage extends ConsumerWidget {
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final count = ref.watch(counterProvider);
//     return Scaffold(
//       appBar: AppBar(title: Text('Riverpod Te')),
//       body: Center(child: Text('Count: $count')),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => ref.read(counterProvider.notifier).state++,
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
