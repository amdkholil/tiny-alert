# tiny_alert (flutter package)

Just simple alert in tiny size for simple UI.

<img src="https://raw.githubusercontent.com/amdkholil/tiny-alert/main/tiny_alert.gif" width="300">
<img src="https://raw.githubusercontent.com/amdkholil/tiny-alert/main/tiny_alert2.gif" width="400">

## Getting Started

add dependency latest version with command:
```command
$ flutter pub add tiny_alert
```

or just adding to `pubspec.yaml`
```yaml
dependecies:
    tiny_alert: <version>
```

and then run bellow command to get packages:
```comand
$ flutter pub get
```

## Examples

- ### Success
```dart
TinyAlert.success(
    context,
    title: "Success!",
    message: "This is a success message!",
);
```

- ### Info
```dart
TinyAlert.info(
    context,
    title: "Info!",
    message: "This is a info message!",
);
```

- ### Warning
```dart
TinyAlert.warning(
    context,
    title: "Warning!",
    message: "This is a warning message!",
);
```

- ### Error
```dart
TinyAlert.error(
    context,
    title: "Error!",
    message: "This is a error message!",
);
```

- ### Confirmation
```dart
TinyAlert.confirm(
    context,
    title: "Confrimation!",
    message: "This is a confirmation message!",
    onConfirm: () {
        Navigator.pop(context);
    },
);
// also available onCancale function
```

- ### Loading
```dart
TinyAlert.progress(context, 
    label: "Loading...", 
    barrierDismissible: true,
); // barrierDismissible is optional, the default is false
```

- ### Snackbar
```dart
TinyAlert.snackbar(
    context,
    "This is snackbar message!",
);
```


> There are several features that the author cannot write in this documentation due to the author's limitations.
