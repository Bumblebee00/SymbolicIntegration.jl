data = [
    # 9_1
    (integrand = 2/x, result = 2log(x), integration_var = x) # 9_1_12_1
    (integrand = 2((1 + x^3)^4.1)*((2 + 2((1 / x)^3))^5), result = -((4.57143*HypergeometricFunctions._₂F₁(-9.1, -(14//3)+0im, -(11//3), -x^3))/x^14), integration_var = x) # 9_1_24
    # 1_1_1_1
    (integrand = 1/x, result = log(x), integration_var = x)
    (integrand = a^-3, result = (-1//2) / (a^2), integration_var = a)
    (integrand = 1/(1+x), result = log(1+x), integration_var = x)
    (integrand = (1+2a)^-3, result = (-1//4)*(1+2a)^-2, integration_var = a)
    (integrand = (1+2(3+4x))^3, result = (1//32)*(1+2(3+4x))^4, integration_var = x) #1_1_1_1_5
    # 1_1_1_2
    (integrand = (4 + 4x)*((10 + 2x)^3), result = (32//5)*x*((5 + x)^4), integration_var = x) #1_1_1_2_1
    (integrand = 1/((2 + 4x)*(5 - 10x)), result = (1//20)*atanh(2x), integration_var = x) # 2 
    (integrand = 1/((2 + 4*x)*(5  + 2*x)), result = (1//16)*(log(2+4x)-log(5+2x)), integration_var = x) # 3 here also log(1+2x) is correct, because of +c
    (integrand = ((21 + 3x)^5)*((1 / (4 + x))^7), result = (-27//2)*(7+x)^6/(4+x)^6, integration_var = x) # 4 TODO here integrating (21 + 3x)^5) / (4 + x)^7 would not work because of pattern mathcing 1/((...)*(...))
    (integrand = (2+3x)^(1//2)*(4-6x)^(1//2), result = (2-3x)^(3//2)*x*(2+3x)^(3//2)/sqrt(2) + (6/sqrt(2))*x*sqrt(2-3x)*sqrt(2+3x) + 4*sqrt(2)*asin(3x/2), integration_var = x) #1_1_1_2_5 TODO 1_1_1_2_8 doesnt get applied because of pattern matching
    (integrand = 1/((-3 + 2*x)^(3//2)*(3 + 2*x)^(3//2)), result = -x / (9sqrt(3 + 2x)*sqrt(-3 + 2x)), integration_var = x) # 6
    (integrand = (-1+2x)^(-5//2)*(3+6x)^(-5//2), result = -(x/(27sqrt(3)*(-1 + 2x)^(3/2) *(1 + 2x)^(3/2))) + (2x)/(27*sqrt(3)*sqrt(-1 + 2x)*sqrt(1 + 2x)), integration_var = x) # 7 TODO this doesnt get applied bc to be applied the exponent need to be <= -3/2, and 1/((...)*(...)) is not supported by current pattern matching
    (integrand = (-1+2x)^2*(3+6x)^2, result = 9x - 24x^3 + (144x^5)/5, integration_var = x)
    (integrand = (1+2x)^2*(3-6x)^2, result = 9x - 24x^3 + (144x^5)/5, integration_var = x)
    (integrand = (-1+2x)^(0.1)*(3+6x)^(0.1), result = (x*(-3 + 12x^2)^0.1*HypergeometricFunctions._₂F₁(-0.1, 1//2, 3//2, 4x^2))/(1 - 4x^2)^0.1, integration_var = x) # 9
    (integrand = (1/(-1+2x))^2*(3+6x)^(1.1), result = (3 + 6x)^1.1/(2*(1 - 2x)) -  0.25*(3 + 6x)^1.1*HypergeometricFunctions._₂F₁(1, 1.1+0im, 2.1, (1//2)*(1 + 2x)), integration_var = x) # 10
    (integrand = (1/(-1+2x))^2*(3+6x)^(-1.1), result = 666, integration_var = x) # 11 TODO doesnt work bc of patterm matching 1/((...)*(...))
    (integrand = (-1 + 2x)^2*(3 + 6x)^(2.1), result = 0.215054(3 + 6x)^3.1 - 0.0542005(3 + 6x)^4.1 +  0.00363108(3 + 6x)^5.1, integration_var = x) # 12
    (integrand = (1+2x)^(1//2)*(3-6x)^(3//2), result = (3//2)sqrt(3)*sqrt(1 - 2x)*x*sqrt(1 + 2x) + (1//2)sqrt(3)*(1 - 2x)^(3//2)*(1 + 2x)^(3//2) + (3//4)sqrt(3)*asin(2x), integration_var = x) # 18 TODO rule 1_1_1_2_8 doenst get applied bc of pattern matching 1/((...)*(...))
    (integrand = 1/(sqrt(1+2x)*sqrt(-1+2x)), result = (1//2)*acosh(2x), integration_var = x) # 21
    (integrand = 1/(sqrt(1+2x)*sqrt(1-2x)), result = (1//2)*asin(2x), integration_var = x) # 22
    (integrand = 1/(sqrt(1+2x)*sqrt(3+4x)), result = asinh(sqrt(2)*sqrt(1+2x))/sqrt(2), integration_var = x) # 23
    (integrand = 1/((1+2x)*(3+4x)^(1//3)), result = (1//2)*sqrt(3)*atan((1 + 2(3 + 4x)^(1//3))/sqrt(3)) -  (1//4)*log(1 + 2x) + (3//4)*log(1 - (3 + 4x)^(1//3)), integration_var = x) # 24
    (integrand = 1/((1+2x)*(2+6x)^(1//3)), result = 666, integration_var = x) # 25 TODO add resutl
    (integrand = 1/((1+2x)*(3+4x)^(2//3)), result = 666, integration_var = x) # 26
    (integrand = 1/((1+2x)*(2+6x)^(2//3)), result = 666, integration_var = x) # 27
    (integrand = 1/((1+2x)^(1//3)*(3+4x)^(2//3)), result = -(sqrt(3)*atan(1/sqrt(3) + (2*2^(1//3)*(1 + 2x)^(1//3))/(sqrt(3)*(3 + 4x)^(1//3))))/(2*2^(2//3)) - log(3 + 4x)/(4*2^(2//3)) - (3log(-1 + (2^(1//3)*(1 + 2x)^(1//3))/(3 + 4x)^(1//3)))/(4*2^(2//3)), integration_var = x) # 28
    (integrand = 1/((1-2x)^(1//3)*(3+4x)^(2//3)), result = -(sqrt(3)*atan(1/sqrt(3) + (2*2^(1//3)*(1 + 2x)^(1//3))/(sqrt(3)*(3 + 4x)^(1//3))))/(2*2^(2//3)) - log(3 + 4x)/(4*2^(2//3)) - (3log(-1 + (2^(1//3)*(1 + 2x)^(1//3))/(3 + 4x)^(1//3)))/(4*2^(2//3)), integration_var = x) # 29
    # 1_1_1_3
    (integrand = (1+2x)^2*(3-6x)^2*x, result = -(3//8)*(1 - 4x^2)^3, integration_var = x) # 1
    (integrand = sqrt(2+4x)/(sqrt(-5x)*sqrt(1+3x)), result = -2*sqrt(2//15)*Elliptic.E(asin(sqrt(-3x)), 2//3), integration_var = x) # 38
    (integrand = 1/(sqrt(2+4x)*sqrt(-5x)*sqrt(1+3x)), result = -sqrt(2//15)*Elliptic.E(asin(sqrt(-3x)), 2//3), integration_var = x) # 43
    # 1_1_1_4
    (integrand = (1+2x)^2*(3+4x)^3*(5+6x)*(7+8x), result = 945x + 4887x^2 + 14316x^3 + 25994x^4 + (149856//5)*x^5 + 21440x^6 + 8704x^7 + 1536x^8, integration_var = x) # 1
    # 1_1_3_1
    (integrand = 1 / sqrt(1 - 4(x^2)), result = (1//2)*asin(2x), integration_var = x) # 28
    # 2_1
    (integrand = (1+x)^2*((2^x)^2), result = 2^(2x)/(4*log(2)^3) - (2^(2x)*(1 + x))/(2*log(2)^2) + (2^(2x)*(1 + x)^2)/(2*log(2)), integration_var = x) # 1
    (integrand = (1+x)^-2*((2^x)^2), result = 2^(2x)/(4*log(2)^3) - (2^(2x)*(1 + x))/(2*log(2)^2) + (2^(2x)*(1 + x)^2)/(2*log(2)), integration_var = x) # 2
    (integrand = 2^(2(2+x))/sqrt(1+2x), result = 2^(2x)/(4*log(2)^3) - (2^(2x)*(1 + x))/(2*log(2)^2) + (2^(2x)*(1 + x)^2)/(2*log(2)), integration_var = x) # 5 TODO the integral needs to be done before substitute
    # 2_3
    (integrand = 2^(1 + 2x), result = 1.4426950408889634*(2^(2x)), integration_var = x) # 1
    (integrand = exp(x), result = exp(x), integration_var = x) # 1 but with exp instead of ^
]