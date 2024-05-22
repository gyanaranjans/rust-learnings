#include <stdio.h>

void process(int *src, int *dst, int N) {
    if (0<N){
        int i = 0;
        do {
            int temp =0;
            int j=0;
            if (i>0){
                do {
                    temp += src[j];
                    j++;
                } while (j<i);
            }
            temp += src[i]; // add the current element
            dst[i]= temp;
            i++;
        } while (i<N);
    }
}

int main(void) {
    int src[] = {1, 2, 3, 4, 5}; 
    int dst[5]; 
    int N = sizeof(src) / sizeof(src[0]);

    process(src, dst, N);

    // print the dst array to verify the result
    for(int i = 0; i < N; i++) {
        printf("%d ", dst[i]);
    }

    return 0;
}