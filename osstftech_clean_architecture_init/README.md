# execution steps for a testproject

## init - create a project

    ```

    flutter create --org org.osstftech.com testproject

    mason make osstftech_clean_architecture_init

    ```

## Quick Setup

1. **Setup dependencies** (choose one):
   ```bash
   # On macOS/Linux
   chmod +x setup_dependencies.sh
   ./setup_dependencies.sh
   
   # On Windows
   setup_dependencies.bat
   
   # Manual (if scripts don't work)
   flutter pub get
   ```

2. **Generate code and assets**:
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   flutter pub run flutter_launcher_icons:main
   ```

3. **Run the app**:
   ```bash
   flutter run
   ```

## Project Structure

This project follows Clean Architecture principles with:
- 🏗️ **Feature-based architecture**
- 🔄 **Dependency injection** (get_it + injectable)
- 🧊 **Immutable state** (freezed + riverpod)
- 🎨 **Material Design 3**
- 🌐 **Go Router** for navigation

## Dependencies Included

### Production
- `cupertino_icons` - iOS style icons
- `get_it` + `injectable` - Dependency injection
- `go_router` - Declarative routing
- `fpdart` - Functional programming
- `freezed_annotation` + `json_annotation` - Code generation
- `cached_network_image` - Image caching
- `flutter_riverpod` - State management
- And more...

### Development
- `build_runner` - Code generation
- `flutter_launcher_icons` - App icon generation
- `freezed` + `json_serializable` - Code generators
- `flutter_lints` - Linting rules

## Getting Started

Run the setup script and start building your app! 🚀