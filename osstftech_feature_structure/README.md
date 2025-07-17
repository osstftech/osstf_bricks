# osstftech_feature_structure

## prerequisites - structure should be created
```bash
mason make osstftech_clean_architecture_init 
```

add proper project name {{project name}}


1. **Initilize the feature**:

```bash
    cd ~./lib/features
   mason make 
   ```

2. **Generate code and assets**:
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
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