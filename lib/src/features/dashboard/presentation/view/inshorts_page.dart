import 'package:news/src/core/core.dart';

@RoutePage<void>()
class InshortsPage extends StatelessWidget {
  const InshortsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: Center(
        child: Text("Inshorts Page"),
      ),
    );
  }
}
