# App Alert Dialog 🚀

A Flutter package to display customizable alert dialogs with two buttons and an optional close icon.

## Features
- Customizable title, message, and icons (supports SVG)
- Optional close button
- Supports primary and secondary buttons
- Fully customizable button actions

## Screenshots

### Error Alert Dialog
<img src="https://raw.githubusercontent.com/pankaj1101/app_alert_dialog/refs/heads/main/screenshots/error_alert_dialog_with_single_buttons.png" width="45%" />
<img src="https://raw.githubusercontent.com/pankaj1101/app_alert_dialog/refs/heads/main/screenshots/error_alert_dialog_with_two_buttons.png" width="45%" />

### Success Alert Dialog
<img src="https://raw.githubusercontent.com/pankaj1101/app_alert_dialog/refs/heads/main/screenshots/success_alert_dialog_without_close_icon.png" width="45%" />
<img src="https://raw.githubusercontent.com/pankaj1101/app_alert_dialog/refs/heads/main/screenshots/sucess_alert_dialog_button.png" width="45%" />


## Installation

Add this dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  app_alert_dialog: ^0.0.1
```

Then, run:

```sh
flutter pub get
```

## Usage

Import the package:

```dart
import 'package:app_alert_dialog/app_alert_dialog.dart';
```

### Showing an Alert Dialog

```dart
AppAlertDialogs.showAlertDialog(
  context: context,
  title:'Success',
  message:'You have pushed the button this many times: \$_counter',
  primaryButton: (pContext) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(pContext).pop();
      },
      child: Text('OK'),
    );
  },
  secondaryButton: (sContext) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(sContext).pop();
      },
      child: Text('NO'),
    );
  },
);
```

## Customization

You can customize the alert dialog by modifying the `DialogBodyObject` properties:

- **`title`**: Set the title of the dialog.
- **`message`**: Provide a description or message.
- **`iconSvg`**: Pass an optional SVG icon.
- **`primaryButton`**: Define the primary action button.
- **`secondaryButton`**: Define the secondary action button.

## License

This package is licensed under the MIT License. See the `LICENSE` file for details.

## Contributions

Contributions are welcome! Feel free to submit a pull request or report issues.

## Contact

For any queries or support, feel free to reach out via [GitHub Issues](https://github.com/pankaj1101/app_alert_dialog/issues).

