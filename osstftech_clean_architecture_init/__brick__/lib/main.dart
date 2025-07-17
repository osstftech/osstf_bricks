import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:upgrader/upgrader.dart';
import 'package:{{name}}/core/common/router/router.dart';
import 'package:{{name}}/core/common/service/service_locator.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await configureDependencies();

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);
    return MaterialApp.router(
      title: 'Local Neighborhood',
      restorationScopeId: '{{name}}',
      debugShowCheckedModeBanner: true,
      onGenerateTitle: (BuildContext context) => '{{name.pascalCase()}}',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // home: ObjectDetectionScreen(),
      routerConfig: goRouter,
      builder: (context, child) => UpgradeAlert(
        navigatorKey: goRouter.routerDelegate.navigatorKey,
        dialogStyle: UpgradeDialogStyle.material,
        showIgnore: false, // Hide "Ignore" button
        showLater: false,
        shouldPopScope: () => false, // Prevent back button dismiss
        barrierDismissible: false,
        showReleaseNotes: false, // Hide "Later" button
        child: child,
      ),
    );
  }
}
