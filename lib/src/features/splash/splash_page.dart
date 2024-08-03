import 'package:flutter_animate/flutter_animate.dart';
import 'package:news/src/core/assets/assets.gen.dart';
import 'package:news/src/core/core.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

@RoutePage<void>()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
 
  @override
  Widget build(BuildContext context) {
    return 
       ScaffoldWrapper(
        backgroundColor: AppColors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: Assets.images.logo.provider(),
                    fit: BoxFit.cover,
                  ),
                ),
              ).animate().fade(duration: 500.ms),
              20.verticalSpace,
              const CircularProgressIndicator().animate().fade(
                    delay: 500.ms,
                  ),
            ],
          ),
        ),
    );
  }
}


