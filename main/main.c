#include <stdio.h>
#include <sys/_intsup.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

void fibo(int* a, int b);
void allumer();
void eteindre();

void app_main(void)
{
    int N = 10;
    int Termes[N];
    fibo(Termes,N);

    while(1){
    printf("entree \n");
    allumer();
    vTaskDelay(100);
    eteindre();
    vTaskDelay(100);
    printf("sortie\n");}

    for(int i=0; i<N;i++){
        printf("%d ",Termes[i]);
    }
    printf("\n");
}
