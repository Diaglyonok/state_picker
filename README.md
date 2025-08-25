# State Picker - Flutter Country/State Selection App

A Flutter application demonstrating clean architecture principles with country and state selection using adaptive bottom sheets.

## 📸 Screenshots


*Add screenshots showing the country/state selection interface*

## 🏗️ Architecture Overview

This project follows **Clean Architecture** principles, separating concerns into distinct layers:

### Architecture Layers

```
lib/
├── core/                     # Core functionality shared across features
│   ├── constants/           # Application constants
│   ├── errors/             # Error handling (Failures & Exceptions)  
│   ├── network/            # Network configuration (Dio client)
│   ├── usecases/           # Base use case definitions
│   └── utils/              # Extensions and utilities
├── features/               # Feature modules
│   └── location_picker/   # Country/State selection feature
│       ├── data/          # Data layer (repositories, data sources, models)
│       ├── domain/        # Domain layer (entities, repositories, use cases)
│       └── presentation/  # Presentation layer (UI, state management)
├── injection/             # Dependency injection configuration
└── shared/               # Shared widgets and models
```

### Key Architectural Decisions

1. **Clean Architecture**: Separation of concerns with data, domain, and presentation layers
2. **Dependency Inversion**: High-level modules don't depend on low-level modules
3. **Single Responsibility**: Each class has one reason to change
4. **Testability**: All layers are easily testable with proper mocking

## 🛠️ Technology Stack

### Core Technologies
- **Flutter**: Cross-platform mobile framework
- **Dart**: Programming language

### State Management
- **flutter_bloc**: BLoC pattern implementation
- **Cubit**: Simplified state management for this use case

### Networking
- **dio**: HTTP client for API communications
- **json_annotation**: JSON serialization support

### Code Generation
- **freezed**: Immutable data classes with unions
- **injectable**: Dependency injection code generation
- **json_serializable**: JSON serialization code generation
- **build_runner**: Code generation runner

### Dependency Injection
- **get_it**: Service locator
- **injectable**: Annotation-based DI

### UI/UX
- **modal_bottom_sheet**: Adaptive bottom sheets for iOS/Android

### Testing
- **flutter_test**: Unit and widget testing
- **bloc_test**: BLoC-specific testing utilities
- **mockito**: Mock object generation

### Code Quality
- **flutter_lints**: Dart & Flutter linting rules
- **dartz**: Functional programming (Either type for error handling)

## 📁 Feature Structure (location_picker)

### Data Layer
```
data/
├── models/              # Data models with JSON serialization
│   ├── country_model.dart
│   └── state_model.dart
├── datasources/        # Remote data sources
│   └── location_remote_data_source.dart
└── repositories/       # Repository implementations
    └── location_repository_impl.dart
```

### Domain Layer  
```
domain/
├── entities/           # Business entities (pure Dart classes)
│   ├── country.dart
│   └── state.dart
├── repositories/       # Repository interfaces
│   └── location_repository.dart
└── usecases/          # Business logic use cases
    ├── get_countries.dart
    └── get_states.dart
```

### Presentation Layer
```
presentation/
├── cubit/             # State management
│   ├── location_picker_cubit.dart
│   └── location_picker_state.dart
└── pages/             # UI screens
    └── location_picker_page.dart
```

## 🔧 Key Features

### Functional Requirements
- [x] Display country selection interface
- [x] Display state selection interface (enabled after country selection)
- [x] Load countries from REST API
- [x] Load states based on selected country
- [x] Clear selection functionality
- [x] Responsive UI with loading states
- [x] Error handling with user feedback

### Technical Features
- [x] **Clean Architecture** implementation
- [x] **Adaptive UI** - Different bottom sheets for iOS/Android
- [x] **State Management** with Cubit pattern
- [x] **Dependency Injection** with Injectable
- [x] **Error Handling** with Either types
- [x] **Code Generation** for models and DI
- [x] **Unit Tests** for business logic
- [x] **Network Layer** with Dio
- [x] **Immutable State** with Freezed

## 🧪 Testing Strategy

### Unit Tests
- **Use Cases**: Business logic validation
- **Cubit**: State management behavior
- **Repository**: Data layer functionality

### Test Structure
```
test/
└── features/
    └── location_picker/
        ├── data/          # Data layer tests
        ├── domain/        # Domain layer tests  
        └── presentation/  # Presentation layer tests
```

### Testing Libraries
- **flutter_test**: Core testing framework
- **bloc_test**: Cubit/BLoC testing utilities
- **mockito**: Mock object generation for isolating dependencies

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (latest stable version)
- Dart SDK
- IDE with Flutter support (VS Code, Android Studio)

## 📱 UI/UX Decisions

## 🔮 Future Enhancements

- [ ] Localization/Internationalization support
- [ ] Integration tests

---

## 👨‍💻 Development Notes

This project serves as a demonstration of Flutter development best practices, focusing on:
- Scalable architecture that can grow with requirements
- Maintainable code through separation of concerns  
- Comprehensive testing strategy
- Modern UI patterns and user experience
- Production-ready error handling and state management

The implementation prioritizes code quality, testability, and maintainability while delivering a smooth user experience across both iOS and Android platforms.
