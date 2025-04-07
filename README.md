# Currency Converter App

A simple Flutter application that converts currency values in real-time using exchange rates fetched from an API. This app demonstrates the use of Flutter widgets, HTTP requests, and state management.

## Features

- Convert USD to Kenyan Shillings (KES) in real-time.
- Fetches live exchange rates from an API.
- User-friendly interface with Material Design.
- Input validation to handle incorrect or invalid inputs.

## Screenshots

![Currency Converter Screenshot](https://via.placeholder.com/400x300.png?text=Screenshot+Placeholder)

## Getting Started

### Prerequisites

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- A code editor like [Visual Studio Code](https://code.visualstudio.com/) or Android Studio.
- An active internet connection for fetching exchange rates.

### Installation

1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd flutter_application_1
  2. install dependencies
     flutter pub get
3.run the app
    flutter run
lib/
├── [main.dart](http://_vscodecontentref_/1)                          # Entry point of the application
├── currency_converter_material_page.dart # Main UI and logic for currency conversion

API Integration
This app uses the ExchangeRate-API to fetch real-time exchange rates. Replace the API URL in the code with your preferred API if needed<vscode_annotation details='%5B%7B%22title%22%3A%22hardcoded-credentials%22%2C%22description%22%3A%22Embedding%20credentials%20in%20source%20code%20risks%20unauthorized%20access%22%7D%5D'>. </vscode_annotation><vscode_annotation details='%5B%7B%22title%22%3A%22hardcoded-credentials%22%2C%22description%22%3A%22Embedding%20credentials%20in%20source%20code%20risks%20unauthorized%20access%22%7D%5D'> </vscode_annotation>```dart const apiUrl = 'https://api.exchangerate-api.com/v4/latest/USD';

Save this content in a file named README.md in the root of your project directory. Let me know if you need further assistance!Save this content in a file named README.md in the root of your project directory. Let me know if you need further assistance!

## How to Use

1. Enter the amount in USD in the input field.
2. Tap the "CONVERT CURRENCY" button.
3. The converted amount in KES will be displayed.

## Dependencies

- `flutter`
- `http`

## Known Issues

- Ensure the API URL is valid and accessible.
- Handle network errors gracefully (e.g., no internet connection).

## License

This project is licensed under the MIT License. See the LICENSE file for details.

## Author

Developed by **Saint-St**.

---

Feel free to contribute to this project by submitting issues or pull requests!


