# Flutter Tour App - Responsive Design

A beautiful and responsive Flutter application showcasing the most stunning tourist destinations in Pakistan. The app adapts its layout based on screen size, providing an optimal viewing experience across mobile, tablet, and desktop devices.

## 🌟 Features

- **Responsive Design**: Automatically adapts to different screen sizes (mobile, tablet, desktop)
- **Beautiful UI**: Showcases Pakistani tourist destinations with stunning imagery
- **Interactive Gallery**: Grid-based photo gallery with smooth navigation
- **Detailed Views**: Comprehensive information about each destination
- **Cross-Platform**: Works seamlessly on Android, iOS, and Web

## 📱 Screenshots & Layouts

### Mobile Layout (≤ 600px)
- Full-screen image gallery
- Navigation drawer for state selection
- Dedicated details page for each destination

### Tablet Layout (600px - 840px)
- Split view with drawer sidebar and gallery
- Enhanced viewing experience with more screen real estate

### Desktop Layout (≥ 840px)
- Three-panel layout: drawer, gallery, and details
- Horizontal gallery for easy browsing
- Simultaneous viewing of gallery and destination details

## 🏞️ Featured Destinations

The app showcases 11 beautiful locations across Pakistan:

### Northern Areas (Gilgit-Baltistan)
- **Fairy Meadows** - Alpine meadow with views of Nanga Parbat
- **Hunza Valley** - Cultural richness with snow-capped peaks
- **Shangrila Resort** - Luxury resort near Skardu with turquoise lakes
- **Naltar Valley** - Pristine beauty with skiing opportunities

### Kashmir Region
- **Neelum Valley** - Lush forests and waterfalls in Azad Kashmir

### Khyber Pakhtunkhwa
- **Swat Valley** - "Switzerland of the East" with Buddhist heritage
- **Kalash Valley** - Home to the unique Kalash culture

### Punjab
- **Badshahi Mosque** - Magnificent Mughal architecture in Lahore
- **Lahore Fort** - UNESCO World Heritage Site

### Sindh
- **Mohenjo-daro** - Ancient Indus Valley Civilization ruins
- **Makli Necropolis** - Historic graveyard with intricate stone carvings

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (latest stable version)
- Dart SDK
- Android Studio / VS Code with Flutter extensions
- Android/iOS simulator or physical device

### Dependencies

Add these dependencies to your `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  auto_size_text: ^3.0.0

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^2.0.0
```

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/saqibcheema/responsive-design-tour-app-ui.git
   cd responsive_tour_app
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Add image assets**
   
   Create an `images` folder in the root directory and add the following images:
   - `fairymedows.jpg`
   - `hunzavalley.jpg`
   - `neelumvalley.jpg`
   - `shanrila.jpg`
   - `swat.jpg`
   - `naltar.jpg`
   - `kalash.jpeg`
   - `mohenjo.jpeg`
   - `badshahi.jpg`
   - `makli.jpg`
   - `fort.jpg`

4. **Update pubspec.yaml**
   ```yaml
   flutter:
     assets:
       - images/
   ```

5. **Run the application**
   ```bash
   flutter run
   ```

## 🏗️ Project Structure

```
lib/
├── data/
│   ├── places.dart          # Tourist destinations data
│   └── states.dart          # Pakistani states/regions list
├── model/
│   └── place.dart           # Place data model
├── pages/
│   ├── home_page.dart       # Main application page
│   └── details_page.dart    # Destination details page
├── widgets/
│   ├── drawer_widget.dart        # Navigation drawer
│   ├── gallery_item_widget.dart  # Individual gallery item
│   ├── place_gallery_widget.dart # Gallery grid view
│   └── responsive_widget.dart    # Responsive layout handler
└── main.dart                # Application entry point
```

## 🎨 Responsive Breakpoints

The app uses the following breakpoints for responsive design:

- **Mobile**: ≤ 600px width
- **Tablet**: 600px - 840px width  
- **Desktop**: ≥ 840px width

## 🔧 Key Components

### ResponsiveWidget
Handles responsive layout switching based on screen size:
```dart
ResponsiveWidget(
  mobile: buildMobile(),
  tablet: buildTablet(), 
  desktop: buildDesktop(),
)
```

### Place Model
Simple data structure for tourist destinations:
```dart
class Place {
  final String image;
  final String title;
  final String subtitle;
  final String description;
}
```

### Custom Scroll Behavior
Enables mouse and touch scrolling across all platforms:
```dart
class CustomScrollBehaviour extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.mouse,
    PointerDeviceKind.touch
  };
}
```

## 🎯 Features in Detail

### Auto-sizing Text
Uses `auto_size_text` package for responsive typography that adapts to different screen sizes.

### Interactive Gallery
- Grid layout that adjusts based on device orientation
- Smooth navigation between destinations
- Touch/click interactions optimized for each platform

### State Management
Simple setState-based state management for place selection and UI updates.

## 🚀 Building for Production

### Android
```bash
flutter build apk --release
```

### iOS
```bash
flutter build ios --release
```

### Web
```bash
flutter build web --release
```

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 🙏 Acknowledgments

- Images of Pakistani tourist destinations
- Flutter team for the amazing framework
- Contributors to the `auto_size_text` package

## 📞 Contact

For any queries or suggestions, please reach out:
- Email: saqibyu961@gmail.com
- GitHub: https://github.com/saqibcheema

---

**Made with ❤️ using Flutter**
