# State Picker - Flutter Country/State Selection App

A Flutter application demonstrating clean architecture principles with country and state selection using adaptive bottom sheets.

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

### Installation

1. **Clone the repository**
```bash
git clone <repository-url>
cd state_picker
```

2. **Install dependencies**
```bash
flutter pub get
```

3. **Generate code**
```bash
flutter packages pub run build_runner build
```

4. **Run the app**
```bash
flutter run
```

### Running Tests
```bash
# Run all tests
flutter test

# Run tests with coverage
flutter test --coverage

# Generate mocks (if needed)
flutter packages pub run build_runner build
```

## 🔗 API Integration

### Base URL
```
https://68a2b00ac5a31eb7bb1d7ad2.mockapi.io/api/v1
```

### Endpoints

#### Get Countries
```
GET /countries
```

**Response:**
```json
[
  {
    "id": "1",
    "value": "Sudan"
  },
  {
    "id": "2", 
    "value": "Eswatini"
  }
]
```

#### Get States
```
GET /countries/{countryId}/states
```

**Response:**
```json
[
  {
    "id": "10",
    "value": "Nevada",
    "countryId": "1"
  },
  {
    "id": "20",
    "value": "Virginia", 
    "countryId": "1"
  }
]
```

## 🎯 Design Patterns Used

### Repository Pattern
- Abstracts data access logic
- Provides clean interface between domain and data layers
- Enables easy testing and data source switching

### Use Case Pattern  
- Encapsulates business logic
- Single responsibility per use case
- Easy to test and maintain

### BLoC/Cubit Pattern
- Predictable state management
- Separation of business logic from UI
- Reactive programming approach

### Dependency Injection
- Loose coupling between components
- Easy testing with mocks
- Centralized dependency configuration

### Either Pattern
- Functional error handling
- Explicit error states
- Type-safe error propagation

## 📱 UI/UX Decisions

### Bottom Sheet Selection
- **Rationale**: More modern and mobile-friendly than dropdowns
- **Implementation**: Adaptive sheets for iOS (Cupertino) and Android (Material)
- **Benefits**: Better usability, more screen space, platform-specific feel

### Loading States
- Visual feedback during API calls
- Disabled state for dependent selections
- Clear error messaging

### Selection Display
- Clear visualization of current selections
- Easy selection clearing
- Immediate feedback on changes

## 🔄 State Flow

```
Initial State
     ↓
Load Countries → Loading → Success/Error
     ↓
Select Country → Load States → Loading → Success/Error
     ↓
Select State → Update Selection
     ↓
Clear Selection → Reset to Initial
```

## 🛡️ Error Handling

### Failure Types
- **NetworkFailure**: Connection issues
- **ServerFailure**: API errors  
- **CacheFailure**: Local storage issues
- **ValidationFailure**: Input validation
- **UnknownFailure**: Unexpected errors

### Error Propagation
```
Exception (Data) → Failure (Domain) → Error State (Presentation)
```

## 🏃‍♂️ Performance Considerations

- **Lazy Loading**: Dependencies loaded only when needed
- **State Optimization**: Minimal rebuilds with Cubit
- **Network Optimization**: Dio interceptors for logging and caching
- **Memory Management**: Proper disposal of resources

## 🔮 Future Enhancements

### Features
- [ ] Search functionality in bottom sheets
- [ ] Caching for offline support
- [ ] Multiple selection support
- [ ] State persistence across app restarts

### Technical
- [ ] Integration tests
- [ ] Performance monitoring
- [ ] Accessibility improvements
- [ ] Internationalization support

## 📚 Learning Resources

### Clean Architecture
- [The Clean Code Blog](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html)
- [Flutter Clean Architecture](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html)

### BLoC Pattern
- [Flutter BLoC Library](https://bloclibrary.dev/)
- [BLoC Architecture](https://www.didierboelens.com/2018/08/reactive-programming---streams---bloc/)

### Testing
- [Flutter Testing Guide](https://flutter.dev/docs/testing)
- [BLoC Testing](https://bloclibrary.dev/testing/)

---

## 👨‍💻 Development Notes

This project serves as a demonstration of Flutter development best practices, focusing on:
- Scalable architecture that can grow with requirements
- Maintainable code through separation of concerns  
- Comprehensive testing strategy
- Modern UI patterns and user experience
- Production-ready error handling and state management

The implementation prioritizes code quality, testability, and maintainability while delivering a smooth user experience across both iOS and Android platforms.
