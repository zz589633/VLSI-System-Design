/*int main(void) {
  extern char _test_start;
  extern char _binary_image_bmp_start;
  extern char _binary_image_bmp_end;
  extern unsigned int _binary_image_bmp_size;

  return 0;
}
*/
int main(void)
{
  extern unsigned char _binary_image_bmp_start;
  extern unsigned char _test_start;

  unsigned int byte_size0 = *(&_binary_image_bmp_start + 2);
  unsigned int byte_size1 = *(&_binary_image_bmp_start + 3);
  unsigned int byte_size2 = *(&_binary_image_bmp_start + 4);
  unsigned int byte_size3 = *(&_binary_image_bmp_start + 5);
  unsigned int bmp_byte_size = (byte_size3 << 24) + (byte_size2 << 16) + (byte_size1 << 8) + byte_size0;

  for (int i = 0; i < 54; i++)
    *(&_test_start + i) = *(&_binary_image_bmp_start + i);

  for (int i = 54; i < bmp_byte_size; i += 3)
  {
    unsigned char gray;
    if ((*(&_binary_image_bmp_start + i) == 0xff) && (*(&_binary_image_bmp_start + i + 1) == 0xff) && (*(&_binary_image_bmp_start + i + 2) == 0xff))
      gray = 0xff;
    else
    {
      unsigned char blue = *(&_binary_image_bmp_start + i);
      unsigned char green = *(&_binary_image_bmp_start + i + 1);
      unsigned char red = *(&_binary_image_bmp_start + i + 2);
      gray = ((blue * 11) + (green * 59) + (red * 30)) / 100;
    }
    *(&_test_start + i) = gray;
    *(&_test_start + i + 1) = gray;
    *(&_test_start + i + 2) = gray;
  }

  return 0;
}