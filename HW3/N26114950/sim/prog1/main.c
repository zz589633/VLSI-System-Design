int main(void)
{
  extern unsigned int array_size;
  extern short array_addr;
  extern short _test_start;
  *(&_test_start) = *(&array_addr);

  for (int array_comp = 1; array_comp < array_size; array_comp++)
  {
    int insert = 0;
    for (int test_comp = 0; test_comp < array_comp; test_comp++)
    {
      if (*(&array_addr + array_comp) < *(&_test_start + test_comp))
      {
        for (int i = array_comp; i > test_comp; i--)
        {
          *(&_test_start + i) = *(&_test_start + i - 1);
        }
        *(&_test_start + test_comp) = *(&array_addr + array_comp);
        insert = 1;
        break;
      }
    }
    if (insert == 0)
      *(&_test_start + array_comp) = *(&array_addr + array_comp);
  }

  /*
    int array_comp=1;
    int test_comp =0;
          for (int i = array_comp; i > 3; i--) {
            *(&_test_start + i) = *(&_test_start + i - 1);
          }
          *(&_test_start + test_comp) = *(&array_addr + array_comp);
  */
  return 0;
}
