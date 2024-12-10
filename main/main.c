#include <stdio.h>
#include <sys/_intsup.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

void fibo(int* a, int b);
int led();

void app_main(void)
{
    int N = 10;
    int Termes[N];
    int a;
    fibo(Termes,N);
    printf("entree \n");
    a = led();
    printf("sortie %x\n",a);
    for(int i=0; i<N;i++){
        printf("%d ",Termes[i]);
    }
    printf("\n");
}
