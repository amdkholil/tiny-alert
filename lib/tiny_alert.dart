import 'package:flutter/material.dart';

enum TinyAlertLoadingType {
  circular,
  linear,
}

class TinyAlert {
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
    double iconSize = 100,
  }) {
    showDialog(
      barrierDismissible: barrierDismissible,
      useSafeArea: true,
      context: context,
      builder: (ctx) => Dialog(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 16, 24, 8),
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
    double iconSize = 100,
  }) {
    showDialog(
      barrierDismissible: barrierDismissible,
      useSafeArea: true,
      context: context,
      builder: (ctx) => Dialog(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 16, 24, 8),
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
    double iconSize = 100,
  }) {
    showDialog(
      barrierDismissible: barrierDismissible,
      useSafeArea: true,
      context: context,
      builder: (ctx) => Dialog(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 16, 24, 8),
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
    double iconSize = 100,
  }) {
    showDialog(
      barrierDismissible: barrierDismissible,
      useSafeArea: true,
      context: context,
      builder: (ctx) => Dialog(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 16, 24, 8),
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
    double iconSize = 100,
  }) {
    showDialog(
      barrierDismissible: barrierDismissible,
      useSafeArea: true,
      context: context,
      builder: (ctx) => Dialog(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 16, 24, 8),
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

  static void progress(
    BuildContext context, {
    required String label,
    double? progress,
    bool barrierDismissible = false,
    TinyAlertLoadingType type = TinyAlertLoadingType.circular,
  }) {
    showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (ctx) => Dialog(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 16, 24, 8),
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
              Text(
                label,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static snackbar(BuildContext context, String message,
      {bool? showCloseIcon, int? seconds}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.black87,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 0,
        content: Text(
          message,
          textAlign: TextAlign.center,
        ),
        showCloseIcon: showCloseIcon ?? true,
        closeIconColor: Colors.white,
        duration: Duration(seconds: seconds ?? 4),
      ),
    );
  }
}
