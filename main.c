#include <stdio.h>
#include "myMath.h"
void Ex1(double x){
    double solve1,solve2,solve3,step1,step2,step3,step4;
    int rounded;
    int one=1;
    rounded = x/one;
    ////////////////////////////////////////
    step1 = Exponent(rounded);
    step2 = Power(x, 3);
    solve1 = add(step1, step2);
    solve1 = sub(solve1, 2);
    ////////////////////////////////////////
    step1 = mul(3, x);
    step2 = Power(x, 2);
    step3 = mul(2, step2);
    solve2 = add(step1, step3);
    ////////////////////////////////////////
    step1 = Power(x, 3);
    step2 = mul(4, step1);
    step3 = div(step2, 5);
    step4 = mul(2, x);
    solve3 = sub(step3, step4);
    ////////////////////////////////////////
    printf("solution of e^x+x^3-2:%lf \n",solve1);
    printf("solution of 3x+2x^2: %lf \n", solve2);
    printf("solution of (4x^3)/5-2x %lf", solve3);
}
int main()
{
    double num;
   printf("Enter a real number");
   scanf("%lf", &num);
    Ex1(num);
    return 0;
}