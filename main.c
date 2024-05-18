void main(int *src, int *dst, int N) {
  if (0<N){
    int i = 0;
    do {
      int temp =0;
      int j=0;
      if (j<i){
        do {
          temp += src[j];
          j++;
        } while (j<i);
        dst[i]= temp;
      }
      i++;
    } while (i<N);
  }
}
