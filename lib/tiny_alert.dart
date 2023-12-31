import 'package:flutter/material.dart';

/// Loading type
enum TinyAlertLoadingType {
  circular,
  linear,
}

/// Tiny Alert
class TinyAlert {
  /// Show a success message
  static void success(
    BuildContext context, {
    required String title,
    required String message,
    bool showConfirmButton = true,
    String confirmButtonText = "OK",
    VoidCallback? onConfirm,
    bool showCancelButton = false,
    String cancelButtonText = "Cancel",
    VoidCallback? onCancel,
    bool barrierDismissible = true,
    double iconSize = 80,
    double maxWidth = 400,
    Color backgroundColor = Colors.white,
    BorderRadius borderRadius = const BorderRadius.all(Radius.circular(20)),
  }) {
    Size size = MediaQuery.of(context).size;
    maxWidth = size.width > maxWidth ? maxWidth : size.width;
    showDialog(
      barrierDismissible: barrierDismissible,
      useSafeArea: true,
      context: context,
      builder: (ctx) => Dialog(
        child: Container(
          padding: const EdgeInsets.fromLTRB(24, 16, 24, 8),
          width: maxWidth,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: borderRadius,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image(
                image: const AssetImage("lib/assets/success.png",
                    package: "tiny_alert"),
                width: iconSize,
                height: iconSize,
              ),
              const SizedBox(height: 8),
              Text(
                title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(height: 6),
              Text(
                message,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (showCancelButton)
                    TextButton(
                      onPressed: onCancel ?? () => Navigator.pop(context),
                      child: Text(cancelButtonText),
                    ),
                  TextButton(
                    onPressed: onConfirm ?? () => Navigator.pop(context),
                    child: Text(confirmButtonText),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Show an info message
  static void info(
    BuildContext context, {
    required String title,
    required String message,
    bool showConfirmButton = true,
    String confirmButtonText = "OK",
    VoidCallback? onConfirm,
    bool showCancelButton = false,
    String cancelButtonText = "Cancel",
    VoidCallback? onCancel,
    bool barrierDismissible = true,
    double iconSize = 80,
    double maxWidth = 400,
    Color backgroundColor = Colors.white,
    BorderRadius borderRadius = const BorderRadius.all(Radius.circular(20)),
  }) {
    Size size = MediaQuery.of(context).size;
    maxWidth = size.width > maxWidth ? maxWidth : size.width;
    showDialog(
      barrierDismissible: barrierDismissible,
      useSafeArea: true,
      context: context,
      builder: (ctx) => Dialog(
        child: Container(
          padding: const EdgeInsets.fromLTRB(24, 16, 24, 8),
          width: maxWidth,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: borderRadius,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image(
                image: const AssetImage("lib/assets/info.png",
                    package: "tiny_alert"),
                width: iconSize,
                height: iconSize,
              ),
              const SizedBox(height: 8),
              Text(
                title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(height: 6),
              Text(
                message,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (showCancelButton)
                    TextButton(
                      onPressed: onCancel ?? () => Navigator.pop(context),
                      child: Text(cancelButtonText),
                    ),
                  TextButton(
                    onPressed: onConfirm ?? () => Navigator.pop(context),
                    child: Text(confirmButtonText),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Show a confirmation message
  static void confirm(
    BuildContext context, {
    required String title,
    required String message,
    required VoidCallback onConfirm,
    bool showConfirmButton = true,
    String confirmButtonText = "OK",
    Color? confirmButtonColor,
    bool showCancelButton = true,
    String cancelButtonText = "Cancel",
    VoidCallback? onCancel,
    bool barrierDismissible = true,
    double iconSize = 80,
    double maxWidth = 400,
    Color backgroundColor = Colors.white,
    BorderRadius borderRadius = const BorderRadius.all(Radius.circular(20)),
  }) {
    Size size = MediaQuery.of(context).size;
    maxWidth = size.width > maxWidth ? maxWidth : size.width;
    showDialog(
      barrierDismissible: barrierDismissible,
      useSafeArea: true,
      context: context,
      builder: (ctx) => Dialog(
        child: Container(
          padding: const EdgeInsets.fromLTRB(24, 16, 24, 8),
          width: maxWidth,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: borderRadius,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image(
                image: const AssetImage("lib/assets/confirm.png",
                    package: "tiny_alert"),
                width: iconSize,
                height: iconSize,
              ),
              const SizedBox(height: 8),
              Text(
                title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(height: 6),
              Text(
                message,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (showCancelButton)
                    TextButton(
                      onPressed: onCancel ?? () => Navigator.pop(context),
                      child: Text(cancelButtonText),
                    ),
                  TextButton(
                    onPressed: onConfirm,
                    child: Text(
                      confirmButtonText,
                      style: TextStyle(
                        color: confirmButtonColor ??
                            Theme.of(context).buttonTheme.colorScheme!.primary,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Show a warning message
  static void warning(
    BuildContext context, {
    required String title,
    required String message,
    bool showConfirmButton = true,
    String confirmButtonText = "OK",
    VoidCallback? onConfirm,
    bool showCancelButton = false,
    String cancelButtonText = "Cancel",
    VoidCallback? onCancel,
    bool barrierDismissible = true,
    double iconSize = 80,
    double maxWidth = 400,
    Color backgroundColor = Colors.white,
    BorderRadius borderRadius = const BorderRadius.all(Radius.circular(20)),
  }) {
    Size size = MediaQuery.of(context).size;
    maxWidth = size.width > maxWidth ? maxWidth : size.width;
    showDialog(
      barrierDismissible: barrierDismissible,
      useSafeArea: true,
      context: context,
      builder: (ctx) => Dialog(
        child: Container(
          padding: const EdgeInsets.fromLTRB(24, 16, 24, 8),
          width: maxWidth,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: borderRadius,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image(
                image: const AssetImage("lib/assets/warning.png",
                    package: "tiny_alert"),
                width: iconSize,
                height: iconSize,
              ),
              const SizedBox(height: 8),
              Text(
                title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(height: 6),
              Text(
                message,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (showCancelButton)
                    TextButton(
                      onPressed: onCancel ?? () => Navigator.pop(context),
                      child: Text(cancelButtonText),
                    ),
                  TextButton(
                    onPressed: onConfirm ?? () => Navigator.pop(context),
                    child: Text(confirmButtonText),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Show an error message
  static void error(
    BuildContext context, {
    required String title,
    required String message,
    bool showConfirmButton = true,
    String confirmButtonText = "OK",
    VoidCallback? onConfirm,
    bool showCancelButton = false,
    String cancelButtonText = "Cancel",
    VoidCallback? onCancel,
    bool barrierDismissible = true,
    double iconSize = 80,
    double maxWidth = 400,
    Color backgroundColor = Colors.white,
    BorderRadius borderRadius = const BorderRadius.all(Radius.circular(20)),
  }) {
    Size size = MediaQuery.of(context).size;
    maxWidth = size.width > maxWidth ? maxWidth : size.width;
    showDialog(
      barrierDismissible: barrierDismissible,
      useSafeArea: true,
      context: context,
      builder: (ctx) => Dialog(
        child: Container(
          padding: const EdgeInsets.fromLTRB(24, 16, 24, 8),
          width: maxWidth,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: borderRadius,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image(
                image: const AssetImage("lib/assets/error.png",
                    package: "tiny_alert"),
                width: iconSize,
                height: iconSize,
              ),
              const SizedBox(height: 8),
              Text(
                title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(height: 6),
              Text(
                message,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (showCancelButton)
                    TextButton(
                      onPressed: onCancel ?? () => Navigator.pop(context),
                      child: Text(cancelButtonText),
                    ),
                  TextButton(
                    onPressed: onConfirm ?? () => Navigator.pop(context),
                    child: Text(confirmButtonText),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Show a loading
  static void progress(
    BuildContext context, {
    String? label,
    double? progress,
    bool barrierDismissible = false,
    TinyAlertLoadingType type = TinyAlertLoadingType.circular,
    double maxWidth = 400,
    Color backgroundColor = Colors.white,
    BorderRadius borderRadius = const BorderRadius.all(Radius.circular(20)),
  }) {
    Size size = MediaQuery.of(context).size;
    maxWidth = size.width > maxWidth ? maxWidth : size.width;
    showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (ctx) => Dialog(
        child: Container(
          padding: const EdgeInsets.fromLTRB(24, 16, 24, 8),
          width: maxWidth,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: borderRadius,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (type == TinyAlertLoadingType.linear)
                SizedBox(
                    width: 150, child: LinearProgressIndicator(value: progress))
              else
                SizedBox(
                    height: 50,
                    width: 50,
                    child: CircularProgressIndicator(value: progress)),
              const SizedBox(height: 8),
              if (label != null)
                Text(
                  label,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
            ],
          ),
        ),
      ),
    );
  }

  /// Show a snackbar
  static snackbar(
    BuildContext context,
    String message, {
    bool? showCloseIcon,
    int? seconds,
    TextStyle? textStyle,
    int maxLines = 2,
    TextAlign textAlign = TextAlign.center,
    Color backgroundColor = Colors.black87,
    Color closeIconColor = Colors.white,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 0,
        content: Text(
          message,
          textAlign: textAlign,
          maxLines: maxLines,
          style: textStyle,
        ),
        showCloseIcon: showCloseIcon ?? true,
        closeIconColor: closeIconColor,
        duration: Duration(seconds: seconds ?? 4),
      ),
    );
  }
}
