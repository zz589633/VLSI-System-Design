int main(void)
{
  extern int array_size_i;
  extern int array_size_j;
  extern int array_size_k;
  extern short array_addr;
  extern int _test_start;
  short A_data;
  short B_data;
  int result;

  for (int i = 0; i < *(&array_size_i); i++)
  {
    for (int j = 0; j < *(&array_size_j); j++)
    {
      A_data = 0;
      B_data = 0;
      result = 0;
      for (int k = 0; k < *(&array_size_k); k++)
      {
        A_data = *(&array_addr + (i * (*(&array_size_k))) + k);
        B_data = *(&array_addr + ((*(&array_size_i)) * (*(&array_size_k))) + (k * (*(&array_size_j))) + j);
        result = (A_data * B_data) + result;
      }
      *(&_test_start + ((i * (*(&array_size_j))) + j)) = result;
    }
  }
  return 0;
}
