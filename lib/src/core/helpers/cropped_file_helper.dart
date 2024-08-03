import 'package:image_cropper/image_cropper.dart';
import 'package:news/src/core/core.dart';

class CroppedFileHelper {
  CroppedFileHelper._();

  static Future<String?> cropImage(String imagePath) async {
    CroppedFile? croppedFile = await ImageCropper().cropImage(
      sourcePath: imagePath,
      // cropStyle: CropStyle.circle,
      // aspectRatioPresets: [
      //   CropAspectRatioPreset.square,
      //   CropAspectRatioPreset.ratio3x2,
      //   CropAspectRatioPreset.original,
      //   CropAspectRatioPreset.ratio16x9
      // ],
      uiSettings: [
        AndroidUiSettings(
            activeControlsWidgetColor: AppColors.primaryColor,
            toolbarColor: AppColors.primaryColor,
            toolbarWidgetColor: AppColors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false,
            toolbarTitle: 'Edit Profile'),
        IOSUiSettings(
          showCancelConfirmationDialog: true,
          doneButtonTitle: 'Done',
          cancelButtonTitle: 'Cancel',
          hidesNavigationBar: true,
          title: 'Edit Profile',
        ),
      ],
    );
    return croppedFile!.path;
  }
}
