import 'package:news/src/core/core.dart';

@RoutePage<void>()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: Center(
        child: Text("Home Page"),
      ),
    );
  }
}
