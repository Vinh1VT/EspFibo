#include <stdio.h>
#include <sys/_intsup.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

void fibotab(int* a, int b); 
void allumer();
void eteindre();
void delai();
void blink_n(int a);
int detect_input();
int fibo_n(int n);

void app_main(void)
{
    int a = 0;

    while(1){
    if(!detect_input()){
        blink_n(fibo_n(a));
        a++;
    }
    }

    //Old code for pregenerated fibo
    /*int N = 6;
    int Termes[N];
    fibo(Termes,N);
    //printf("preboucle\n");
    for(int i=0; i<N;i++){
        //printf("entree\n");
        //printf("%d\n",Termes[i]);
        blink_N(Termes[i]);
    }*/
}
