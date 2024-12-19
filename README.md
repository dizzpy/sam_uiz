
# sam_uiz

A customizable UI components library for Flutter. This package provides reusable components like buttons, input fields, and cards for quick integration into your Flutter apps.

## Features

- **DizzexButton**: A customizable button widget.
- **DizzexCard**: A customizable card widget to wrap content.
- **DizzexInputBox**: A customizable input box widget for text entry.

## Installation

To use this package, add `sam_uiz` to your `pubspec.yaml` file:

```yaml
dependencies:
  sam_uiz:
    git:
      url: https://github.com/dizzpy/sam_uiz.git
```

## Usage

### DizzexButton

```dart
DizzexButton(
  title: 'Press Me',
  onPressed: () {
    print('Button pressed!');
  },
)
```

### DizzexCard

```dart
DizzexCard(
  widget: Text('Card content'),
)
```

### DizzexInputBox

```dart
DizzexInputBox(
  controller: myController,
  hintText: 'Enter text here',
  title: 'Input Field',
)
```

## Example

You can check out the example usage in the `/example` folder.

## License

This package is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.

## Contributing

Feel free to open an issue or pull request if you'd like to contribute to this package.
