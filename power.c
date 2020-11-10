#include <stdio.h>
#include "myMath.h"

double Power(double x , int y){
    int counter=0;
    double result=1;
    while(counter<y){
        result*=x;
        counter++;
    }
    if(y<0) result=1.0/result;
    return result;
}
double Exponent(int x){
double result=Power(e,x);
return result;
}