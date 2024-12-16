#include <stdio.h>
#include <sys/_intsup.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

void fibo(int* a, int b);
void allumer();
void eteindre();
void delai();
void blink_N(int a);

void app_main(void)
{
    int N = 6;
    int Termes[N];
    fibo(Termes,N);
    //printf("preboucle\n");
    for(int i=0; i<N;i++){
        //printf("entree\n");
        //printf("%d\n",Termes[i]);
        blink_N(Termes[i]);
    }
    printf("\n");
}
