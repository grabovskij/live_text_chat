List<String> get imagesFormats => [
      'png',
      'jpg',
      'jpeg',
      'webp',
    ];

bool isImage(String fileName) {
  return imagesFormats.contains(fileName.split('.').last.toLowerCase());
}
