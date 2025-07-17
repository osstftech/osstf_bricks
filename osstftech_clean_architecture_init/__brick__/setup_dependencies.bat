@echo off
echo 🚀 Setting up {{name}} dependencies...
echo This may take a few minutes...

echo 📦 Adding production dependencies...
flutter pub add cupertino_icons get_it go_router fpdart freezed_annotation cached_network_image device_info_plus google_fonts json_annotation injectable flutter_gen shared_preferences flutter_riverpod upgrader equatable intl http

echo 🛠️  Adding development dependencies...
flutter pub add --dev flutter_lints flutter_launcher_icons build_runner injectable_generator json_serializable freezed flutter_gen_runner flutter_native_splash

echo ✅ Dependencies setup complete!
echo 📋 Next steps:
echo    1. Run 'flutter pub get' to ensure everything is properly installed
echo    2. Run 'flutter pub run build_runner build' to generate code
echo    3. Run 'flutter pub run flutter_launcher_icons:main' to generate app icons
echo.
echo 🎉 {{name}} is ready for development!
pause