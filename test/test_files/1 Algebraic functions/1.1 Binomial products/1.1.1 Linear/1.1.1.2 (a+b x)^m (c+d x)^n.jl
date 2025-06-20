# Julia syntax integrals translated from Mathematica
# Original file: ./MathematicaSyntaxTestFiles/1 Algebraic functions/1.1 Binomial products/1.1.1 Linear/1.1.1.2 (a+b x)^m (c+d x)^n.m
data = [
# ::Package::

# ::Title::Closed::
# Integrands of the form (c x)^m (a+b x)^n


# ::Section::Closed::
# Integrands of the form (b x)^n


# ::Subsection::Closed::
# Integrands of the form b


    (integrand = 0, result = 0, integration_var = x, mistery_val = 1),
    (integrand = 1, result = x, integration_var = x, mistery_val = 1),
    (integrand = 5, result = 5*x, integration_var = x, mistery_val = 1),
    (integrand = -2, result = -2*x, integration_var = x, mistery_val = 1),
    (integrand = -3//2, result = -3//2*x, integration_var = x, mistery_val = 1),
    (integrand = π, result = π*x, integration_var = x, mistery_val = 1),
    (integrand = a, result = a*x, integration_var = x, mistery_val = 1),
    (integrand = 3*a, result = 3*a*x, integration_var = x, mistery_val = 1),
    (integrand = π/sqrt(16 - ℯ^2), result = (π*x)/sqrt(16 - ℯ^2), integration_var = x, mistery_val = 1),


# ::Subsection::Closed::
# Integrands of the form x^n


    (integrand = x^100, result = x^101//101, integration_var = x, mistery_val = 1),
    (integrand = x^3, result = x^4//4, integration_var = x, mistery_val = 1),
    (integrand = x^2, result = x^3//3, integration_var = x, mistery_val = 1),
    (integrand = x^1, result = x^2//2, integration_var = x, mistery_val = 1),
    (integrand = x^0, result = x, integration_var = x, mistery_val = 1),
    (integrand = 1/x^1, result = log(x), integration_var = x, mistery_val = 1),
    (integrand = 1/x^2, result = -(1/x), integration_var = x, mistery_val = 1),
    (integrand = 1/x^3, result = -(1/(2*x^2)), integration_var = x, mistery_val = 1),
    (integrand = 1/x^4, result = -(1/(3*x^3)), integration_var = x, mistery_val = 1),
    (integrand = 1/x^100, result = -1/(99*x^99), integration_var = x, mistery_val = 1),


# ::Subsection::Closed::
# Integrands of the form (b x)^(n/2)


    (integrand = x^(5//2), result = 2*x^(7//2)/7, integration_var = x, mistery_val = 1),
    (integrand = x^(3//2), result = 2*x^(5//2)/5, integration_var = x, mistery_val = 1),
    (integrand = x^(1//2), result = 2*x^(3//2)/3, integration_var = x, mistery_val = 1),
    (integrand = 1/x^(1//2), result = 2*sqrt(x), integration_var = x, mistery_val = 1),
    (integrand = 1/x^(3//2), result = -2/sqrt(x), integration_var = x, mistery_val = 1),
    (integrand = 1/x^(5//2), result = -2/(3*x^(3//2)), integration_var = x, mistery_val = 1),


# ::Subsection::Closed::
# Integrands of the form (b x)^(n/3)


    (integrand = x^(5//3), result = (3*x^(8//3))/8, integration_var = x, mistery_val = 1),
    (integrand = x^(4//3), result = (3*x^(7//3))/7, integration_var = x, mistery_val = 1),
    (integrand = x^(2//3), result = (3//5)*x^(5//3), integration_var = x, mistery_val = 1),
    (integrand = x^(1//3), result = (3//4)*x^(4//3), integration_var = x, mistery_val = 1),
    (integrand = 1/x^(1//3), result = (3*x^(2//3))/2, integration_var = x, mistery_val = 1),
    (integrand = 1/x^(2//3), result = 3*x^(1//3), integration_var = x, mistery_val = 1),
    (integrand = 1/x^(4//3), result = -(3/x^(1//3)), integration_var = x, mistery_val = 1),
    (integrand = 1/x^(5//3), result = -(3/(2*x^(2//3))), integration_var = x, mistery_val = 1),


# ::Subsection::Closed::
# Integrands of the form (b x)^n with n symbolic


    (integrand = x^n, result = x^(1 + n)/(1 + n), integration_var = x, mistery_val = 1),
    (integrand = (b*x)^n, result = (b*x)^(1 + n)/(b*(1 + n)), integration_var = x, mistery_val = 1),


# ::Section::Closed::
# Integrands of the form (c+d (a+b x))^n


# ::Subsection::Closed::
# Integrands of the form (c+d (a+b x))^n


    (integrand = 1/(sqrt(-a) + e*(c + d*x)), result = log(sqrt(-a) + c*e + d*e*x)/(d*e), integration_var = x, mistery_val = 2),


# ::Subsection::Closed::
# Integrands of the form (c+d (a+b x))^(n/2)


    (integrand = (c + d*(a + b*x))^(5//2), result = (2*(c + d*(a + b*x))^(7//2))/(7*b*d), integration_var = x, mistery_val = 2),
    (integrand = (c + d*(a + b*x))^(3//2), result = (2*(c + d*(a + b*x))^(5//2))/(5*b*d), integration_var = x, mistery_val = 2),
    (integrand = (c + d*(a + b*x))^(1//2), result = (2*(c + d*(a + b*x))^(3//2))/(3*b*d), integration_var = x, mistery_val = 2),
    (integrand = 1/(c + d*(a + b*x))^(1//2), result = (2*sqrt(c + d*(a + b*x)))/(b*d), integration_var = x, mistery_val = 2),
    (integrand = 1/(c + d*(a + b*x))^(3//2), result = -(2/(b*d*sqrt(c + d*(a + b*x)))), integration_var = x, mistery_val = 2),
    (integrand = 1/(c + d*(a + b*x))^(5//2), result = -(2/(3*b*d*(c + d*(a + b*x))^(3//2))), integration_var = x, mistery_val = 2),


# ::Section::Closed::
# Integrands of the form (c x)^m (a+b x)^n


# ::Subsection::Closed::
# Integrands of the form x^m (a+b x)^n


# ::Subsubsection::Closed::
# n>0


    (integrand = x^3*(a + b*x), result = (a*x^4)/4 + (b*x^5)/5, integration_var = x, mistery_val = 2),
    (integrand = x^2*(a + b*x), result = (a*x^3)/3 + (b*x^4)/4, integration_var = x, mistery_val = 2),
    (integrand = x^1*(a + b*x), result = (a*x^2)/2 + (b*x^3)/3, integration_var = x, mistery_val = 2),
    (integrand = x^0*(a + b*x), result = a*x + (b*x^2)/2, integration_var = x, mistery_val = 1),
    (integrand = (a + b*x)/x^1, result = b*x + a*log(x), integration_var = x, mistery_val = 2),
    (integrand = (a + b*x)/x^2, result = -(a/x) + b*log(x), integration_var = x, mistery_val = 2),
    (integrand = (a + b*x)/x^3, result = -((a + b*x)^2/(2*a*x^2)), integration_var = x, mistery_val = 1),
    (integrand = (a + b*x)/x^4, result = -(a/(3*x^3)) - b/(2*x^2), integration_var = x, mistery_val = 2),
    (integrand = (a + b*x)/x^5, result = -(a/(4*x^4)) - b/(3*x^3), integration_var = x, mistery_val = 2),


    (integrand = x^3*(a + b*x)^2, result = (a^2*x^4)/4 + (2//5)*a*b*x^5 + (b^2*x^6)/6, integration_var = x, mistery_val = 2),
    (integrand = x^2*(a + b*x)^2, result = (a^2*x^3)/3 + (1//2)*a*b*x^4 + (b^2*x^5)/5, integration_var = x, mistery_val = 2),
    (integrand = x^1*(a + b*x)^2, result = (a^2*x^2)/2 + (2//3)*a*b*x^3 + (b^2*x^4)/4, integration_var = x, mistery_val = 2),
    (integrand = x^0*(a + b*x)^2, result = (a + b*x)^3/(3*b), integration_var = x, mistery_val = 1),

    (integrand = (a + b*x)^2/x^1, result = 2*a*b*x + (b^2*x^2)/2 + a^2*log(x), integration_var = x, mistery_val = 2),
    (integrand = (a + b*x)^2/x^2, result = -(a^2/x) + b^2*x + 2*a*b*log(x), integration_var = x, mistery_val = 2),
    (integrand = (a + b*x)^2/x^3, result = -(a^2/(2*x^2)) - (2*a*b)/x + b^2*log(x), integration_var = x, mistery_val = 2),

    (integrand = (a + b*x)^2/x^4, result = -((a + b*x)^3/(3*a*x^3)), integration_var = x, mistery_val = 1),
    (integrand = (a + b*x)^2/x^5, result = -(a^2/(4*x^4)) - (2*a*b)/(3*x^3) - b^2/(2*x^2), integration_var = x, mistery_val = 2),
    (integrand = (a + b*x)^2/x^6, result = -(a^2/(5*x^5)) - (a*b)/(2*x^4) - b^2/(3*x^3), integration_var = x, mistery_val = 2),
    (integrand = (a + b*x)^2/x^7, result = -(a^2/(6*x^6)) - (2*a*b)/(5*x^5) - b^2/(4*x^4), integration_var = x, mistery_val = 2),
    (integrand = (a + b*x)^2/x^8, result = -(a^2/(7*x^7)) - (a*b)/(3*x^6) - b^2/(5*x^5), integration_var = x, mistery_val = 2),


    (integrand = x^4*(a + b*x)^3, result = (a^3*x^5)/5 + (1//2)*a^2*b*x^6 + (3//7)*a*b^2*x^7 + (b^3*x^8)/8, integration_var = x, mistery_val = 2),
    (integrand = x^3*(a + b*x)^3, result = (a^3*x^4)/4 + (3//5)*a^2*b*x^5 + (1//2)*a*b^2*x^6 + (b^3*x^7)/7, integration_var = x, mistery_val = 2),
    (integrand = x^2*(a + b*x)^3, result = (a^3*x^3)/3 + (3//4)*a^2*b*x^4 + (3//5)*a*b^2*x^5 + (b^3*x^6)/6, integration_var = x, mistery_val = 2),

    (integrand = x^1*(a + b*x)^3, result = -((a*(a + b*x)^4)/(4*b^2)) + (a + b*x)^5/(5*b^2), integration_var = x, mistery_val = 2),
    (integrand = x^0*(a + b*x)^3, result = (a + b*x)^4/(4*b), integration_var = x, mistery_val = 1),

    (integrand = (a + b*x)^3/x^1, result = 3*a^2*b*x + (3//2)*a*b^2*x^2 + (b^3*x^3)/3 + a^3*log(x), integration_var = x, mistery_val = 2),
    (integrand = (a + b*x)^3/x^2, result = -(a^3/x) + 3*a*b^2*x + (b^3*x^2)/2 + 3*a^2*b*log(x), integration_var = x, mistery_val = 2),
    (integrand = (a + b*x)^3/x^3, result = -a^3/(2*x^2) - (3*a^2*b)/x + b^3*x + 3*a*b^2*log(x), integration_var = x, mistery_val = 2),
    (integrand = (a + b*x)^3/x^4, result = -(a^3/(3*x^3)) - (3*a^2*b)/(2*x^2) - (3*a*b^2)/x + b^3*log(x), integration_var = x, mistery_val = 2),

    (integrand = (a + b*x)^3/x^5, result = -((a + b*x)^4/(4*a*x^4)), integration_var = x, mistery_val = 1),
    (integrand = (a + b*x)^3/x^6, result = -((a + b*x)^4/(5*a*x^5)) + (b*(a + b*x)^4)/(20*a^2*x^4), integration_var = x, mistery_val = 2),

    (integrand = (a + b*x)^3/x^7, result = -(a^3/(6*x^6)) - (3*a^2*b)/(5*x^5) - (3*a*b^2)/(4*x^4) - b^3/(3*x^3), integration_var = x, mistery_val = 2),
    (integrand = (a + b*x)^3/x^8, result = -(a^3/(7*x^7)) - (a^2*b)/(2*x^6) - (3*a*b^2)/(5*x^5) - b^3/(4*x^4), integration_var = x, mistery_val = 2),


    (integrand = x^6*(a + b*x)^5, result = (a^5*x^7)/7 + (5//8)*a^4*b*x^8 + (10//9)*a^3*b^2*x^9 + a^2*b^3*x^10 + (5//11)*a*b^4*x^11 + (b^5*x^12)/12, integration_var = x, mistery_val = 2),
    (integrand = x^5*(a + b*x)^5, result = (a^5*x^6)/6 + (5//7)*a^4*b*x^7 + (5//4)*a^3*b^2*x^8 + (10//9)*a^2*b^3*x^9 + (1//2)*a*b^4*x^10 + (b^5*x^11)/11, integration_var = x, mistery_val = 2),
    (integrand = x^4*(a + b*x)^5, result = (a^5*x^5)/5 + (5//6)*a^4*b*x^6 + (10//7)*a^3*b^2*x^7 + (5//4)*a^2*b^3*x^8 + (5//9)*a*b^4*x^9 + (b^5*x^10)/10, integration_var = x, mistery_val = 2),

    (integrand = x^3*(a + b*x)^5, result = -((a^3*(a + b*x)^6)/(6*b^4)) + (3*a^2*(a + b*x)^7)/(7*b^4) - (3*a*(a + b*x)^8)/(8*b^4) + (a + b*x)^9/(9*b^4), integration_var = x, mistery_val = 2),
    (integrand = x^2*(a + b*x)^5, result = (a^2*(a + b*x)^6)/(6*b^3) - (2*a*(a + b*x)^7)/(7*b^3) + (a + b*x)^8/(8*b^3), integration_var = x, mistery_val = 2),
    (integrand = x^1*(a + b*x)^5, result = -((a*(a + b*x)^6)/(6*b^2)) + (a + b*x)^7/(7*b^2), integration_var = x, mistery_val = 2),
    (integrand = x^0*(a + b*x)^5, result = (a + b*x)^6/(6*b), integration_var = x, mistery_val = 1),

    (integrand = (a + b*x)^5/x^1, result = 5*a^4*b*x + 5*a^3*b^2*x^2 + (10//3)*a^2*b^3*x^3 + (5//4)*a*b^4*x^4 + (b^5*x^5)/5 + a^5*log(x), integration_var = x, mistery_val = 2),
    (integrand = (a + b*x)^5/x^2, result = -(a^5/x) + 10*a^3*b^2*x + 5*a^2*b^3*x^2 + (5//3)*a*b^4*x^3 + (b^5*x^4)/4 + 5*a^4*b*log(x), integration_var = x, mistery_val = 2),
    (integrand = (a + b*x)^5/x^3, result = -(a^5/(2*x^2)) - (5*a^4*b)/x + 10*a^2*b^3*x + (5//2)*a*b^4*x^2 + (b^5*x^3)/3 + 10*a^3*b^2*log(x), integration_var = x, mistery_val = 2),
    (integrand = (a + b*x)^5/x^4, result = -(a^5/(3*x^3)) - (5*a^4*b)/(2*x^2) - (10*a^3*b^2)/x + 5*a*b^4*x + (b^5*x^2)/2 + 10*a^2*b^3*log(x), integration_var = x, mistery_val = 2),
    (integrand = (a + b*x)^5/x^5, result = -(a^5/(4*x^4)) - (5*a^4*b)/(3*x^3) - (5*a^3*b^2)/x^2 - (10*a^2*b^3)/x + b^5*x + 5*a*b^4*log(x), integration_var = x, mistery_val = 2),
    (integrand = (a + b*x)^5/x^6, result = -(a^5/(5*x^5)) - (5*a^4*b)/(4*x^4) - (10*a^3*b^2)/(3*x^3) - (5*a^2*b^3)/x^2 - (5*a*b^4)/x + b^5*log(x), integration_var = x, mistery_val = 2),

    (integrand = (a + b*x)^5/x^7, result = -((a + b*x)^6/(6*a*x^6)), integration_var = x, mistery_val = 1),
    (integrand = (a + b*x)^5/x^8, result = -((a + b*x)^6/(7*a*x^7)) + (b*(a + b*x)^6)/(42*a^2*x^6), integration_var = x, mistery_val = 2),
    (integrand = (a + b*x)^5/x^9, result = -((a + b*x)^6/(8*a*x^8)) + (b*(a + b*x)^6)/(28*a^2*x^7) - (b^2*(a + b*x)^6)/(168*a^3*x^6), integration_var = x, mistery_val = 3),

    (integrand = (a + b*x)^5/x^10, result = -(a^5/(9*x^9)) - (5*a^4*b)/(8*x^8) - (10*a^3*b^2)/(7*x^7) - (5*a^2*b^3)/(3*x^6) - (a*b^4)/x^5 - b^5/(4*x^4), integration_var = x, mistery_val = 2),
    (integrand = (a + b*x)^5/x^11, result = -(a^5/(10*x^10)) - (5*a^4*b)/(9*x^9) - (5*a^3*b^2)/(4*x^8) - (10*a^2*b^3)/(7*x^7) - (5*a*b^4)/(6*x^6) - b^5/(5*x^5), integration_var = x, mistery_val = 2),
    (integrand = (a + b*x)^5/x^12, result = -(a^5/(11*x^11)) - (a^4*b)/(2*x^10) - (10*a^3*b^2)/(9*x^9) - (5*a^2*b^3)/(4*x^8) - (5*a*b^4)/(7*x^7) - b^5/(6*x^6), integration_var = x, mistery_val = 2),
    (integrand = (a + b*x)^5/x^13, result = -(a^5/(12*x^12)) - (5*a^4*b)/(11*x^11) - (a^3*b^2)/x^10 - (10*a^2*b^3)/(9*x^9) - (5*a*b^4)/(8*x^8) - b^5/(7*x^7), integration_var = x, mistery_val = 2),
    (integrand = (a + b*x)^5/x^14, result = -(a^5/(13*x^13)) - (5*a^4*b)/(12*x^12) - (10*a^3*b^2)/(11*x^11) - (a^2*b^3)/x^10 - (5*a*b^4)/(9*x^9) - b^5/(8*x^8), integration_var = x, mistery_val = 2),


    (integrand = x^8*(a + b*x)^7, result = (a^7*x^9)/9 + (7//10)*a^6*b*x^10 + (21//11)*a^5*b^2*x^11 + (35//12)*a^4*b^3*x^12 + (35//13)*a^3*b^4*x^13 + (3//2)*a^2*b^5*x^14 + (7//15)*a*b^6*x^15 + (b^7*x^16)/16, integration_var = x, mistery_val = 2),
    (integrand = x^7*(a + b*x)^7, result = (a^7*x^8)/8 + (7*a^6*b*x^9)/9 + (21*a^5*b^2*x^10)/10 + (35*a^4*b^3*x^11)/11 + (35*a^3*b^4*x^12)/12 + (21*a^2*b^5*x^13)/13 + (a*b^6*x^14)/2 + (b^7*x^15)/15, integration_var = x, mistery_val = 2),
    (integrand = x^6*(a + b*x)^7, result = (a^7*x^7)/7 + (7//8)*a^6*b*x^8 + (7//3)*a^5*b^2*x^9 + (7//2)*a^4*b^3*x^10 + (35//11)*a^3*b^4*x^11 + (7//4)*a^2*b^5*x^12 + (7//13)*a*b^6*x^13 + (b^7*x^14)/14, integration_var = x, mistery_val = 2),

    (integrand = x^5*(a + b*x)^7, result = -((a^5*(a + b*x)^8)/(8*b^6)) + (5*a^4*(a + b*x)^9)/(9*b^6) - (a^3*(a + b*x)^10)/b^6 + (10*a^2*(a + b*x)^11)/(11*b^6) - (5*a*(a + b*x)^12)/(12*b^6) + (a + b*x)^13/(13*b^6), integration_var = x, mistery_val = 2),
    (integrand = x^4*(a + b*x)^7, result = (a^4*(a + b*x)^8)/(8*b^5) - (4*a^3*(a + b*x)^9)/(9*b^5) + (3*a^2*(a + b*x)^10)/(5*b^5) - (4*a*(a + b*x)^11)/(11*b^5) + (a + b*x)^12/(12*b^5), integration_var = x, mistery_val = 2),
    (integrand = x^3*(a + b*x)^7, result = -((a^3*(a + b*x)^8)/(8*b^4)) + (a^2*(a + b*x)^9)/(3*b^4) - (3*a*(a + b*x)^10)/(10*b^4) + (a + b*x)^11/(11*b^4), integration_var = x, mistery_val = 2),
    (integrand = x^2*(a + b*x)^7, result = (a^2*(a + b*x)^8)/(8*b^3) - (2*a*(a + b*x)^9)/(9*b^3) + (a + b*x)^10/(10*b^3), integration_var = x, mistery_val = 2),
    (integrand = x^1*(a + b*x)^7, result = -((a*(a + b*x)^8)/(8*b^2)) + (a + b*x)^9/(9*b^2), integration_var = x, mistery_val = 2),
    (integrand = x^0*(a + b*x)^7, result = (a + b*x)^8/(8*b), integration_var = x, mistery_val = 1),

    (integrand = (a + b*x)^7/x^1, result = 7*a^6*b*x + (21*a^5*b^2*x^2)/2 + (35*a^4*b^3*x^3)/3 + (35*a^3*b^4*x^4)/4 + (21*a^2*b^5*x^5)/5 + (7*a*b^6*x^6)/6 + (b^7*x^7)/7 + a^7*log(x), integration_var = x, mistery_val = 2),
    (integrand = (a + b*x)^7/x^2, result = -(a^7/x) + 21*a^5*b^2*x + (35*a^4*b^3*x^2)/2 + (35*a^3*b^4*x^3)/3 + (21*a^2*b^5*x^4)/4 + (7*a*b^6*x^5)/5 + (b^7*x^6)/6 + 7*a^6*b*log(x), integration_var = x, mistery_val = 2),
    (integrand = (a + b*x)^7/x^3, result = -a^7/(2*x^2) - (7*a^6*b)/x + 35*a^4*b^3*x + (35*a^3*b^4*x^2)/2 + 7*a^2*b^5*x^3 + (7*a*b^6*x^4)/4 + (b^7*x^5)/5 + 21*a^5*b^2*log(x), integration_var = x, mistery_val = 2),
    (integrand = (a + b*x)^7/x^4, result = -(a^7/(3*x^3)) - (7*a^6*b)/(2*x^2) - (21*a^5*b^2)/x + 35*a^3*b^4*x + (21//2)*a^2*b^5*x^2 + (7//3)*a*b^6*x^3 + (b^7*x^4)/4 + 35*a^4*b^3*log(x), integration_var = x, mistery_val = 2),
    (integrand = (a + b*x)^7/x^5, result = -(a^7/(4*x^4)) - (7*a^6*b)/(3*x^3) - (21*a^5*b^2)/(2*x^2) - (35*a^4*b^3)/x + 21*a^2*b^5*x + (7//2)*a*b^6*x^2 + (b^7*x^3)/3 + 35*a^3*b^4*log(x), integration_var = x, mistery_val = 2),
    (integrand = (a + b*x)^7/x^6, result = -(a^7/(5*x^5)) - (7*a^6*b)/(4*x^4) - (7*a^5*b^2)/x^3 - (35*a^4*b^3)/(2*x^2) - (35*a^3*b^4)/x + 7*a*b^6*x + (b^7*x^2)/2 + 21*a^2*b^5*log(x), integration_var = x, mistery_val = 2),
    (integrand = (a + b*x)^7/x^7, result = -(a^7/(6*x^6)) - (7*a^6*b)/(5*x^5) - (21*a^5*b^2)/(4*x^4) - (35*a^4*b^3)/(3*x^3) - (35*a^3*b^4)/(2*x^2) - (21*a^2*b^5)/x + b^7*x + 7*a*b^6*log(x), integration_var = x, mistery_val = 2),
    (integrand = (a + b*x)^7/x^8, result = -(a^7/(7*x^7)) - (7*a^6*b)/(6*x^6) - (21*a^5*b^2)/(5*x^5) - (35*a^4*b^3)/(4*x^4) - (35*a^3*b^4)/(3*x^3) - (21*a^2*b^5)/(2*x^2) - (7*a*b^6)/x + b^7*log(x), integration_var = x, mistery_val = 2),
# 
#     (integrand = (a + b*x)^7/x^9, result = -(a + b*x)^8/(8*a*x^8), integration_var = x, mistery_val = 1),
#     (integrand = (a + b*x)^7/x^10, result = -((a + b*x)^8/(9*a*x^9)) + (b*(a + b*x)^8)/(72*a^2*x^8), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^7/x^11, result = -((a + b*x)^8/(10*a*x^10)) + (b*(a + b*x)^8)/(45*a^2*x^9) - (b^2*(a + b*x)^8)/(360*a^3*x^8), integration_var = x, mistery_val = 3),
#     (integrand = (a + b*x)^7/x^12, result = -((a + b*x)^8/(11*a*x^11)) + (3*b*(a + b*x)^8)/(110*a^2*x^10) - (b^2*(a + b*x)^8)/(165*a^3*x^9) + (b^3*(a + b*x)^8)/(1320*a^4*x^8), integration_var = x, mistery_val = 4),
#     (integrand = (a + b*x)^7/x^13, result = -((a + b*x)^8/(12*a*x^12)) + (b*(a + b*x)^8)/(33*a^2*x^11) - (b^2*(a + b*x)^8)/(110*a^3*x^10) + (b^3*(a + b*x)^8)/(495*a^4*x^9) - (b^4*(a + b*x)^8)/(3960*a^5*x^8), integration_var = x, mistery_val = 5),
# 
#     (integrand = (a + b*x)^7/x^14, result = -(a^7/(13*x^13)) - (7*a^6*b)/(12*x^12) - (21*a^5*b^2)/(11*x^11) - (7*a^4*b^3)/(2*x^10) - (35*a^3*b^4)/(9*x^9) - (21*a^2*b^5)/(8*x^8) - (a*b^6)/x^7 - b^7/(6*x^6), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^7/x^15, result = -(a^7/(14*x^14)) - (7*a^6*b)/(13*x^13) - (7*a^5*b^2)/(4*x^12) - (35*a^4*b^3)/(11*x^11) - (7*a^3*b^4)/(2*x^10) - (7*a^2*b^5)/(3*x^9) - (7*a*b^6)/(8*x^8) - b^7/(7*x^7), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^7/x^16, result = -(a^7/(15*x^15)) - (a^6*b)/(2*x^14) - (21*a^5*b^2)/(13*x^13) - (35*a^4*b^3)/(12*x^12) - (35*a^3*b^4)/(11*x^11) - (21*a^2*b^5)/(10*x^10) - (7*a*b^6)/(9*x^9) - b^7/(8*x^8), integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = x^11*(a + b*x)^10, result = (a^10*x^12)/12 + (10//13)*a^9*b*x^13 + (45//14)*a^8*b^2*x^14 + 8*a^7*b^3*x^15 + (105//8)*a^6*b^4*x^16 + (252//17)*a^5*b^5*x^17 + (35//3)*a^4*b^6*x^18 + (120//19)*a^3*b^7*x^19 + (9//4)*a^2*b^8*x^20 + (10//21)*a*b^9*x^21 + (b^10*x^22)/22, integration_var = x, mistery_val = 2),
#     (integrand = x^10*(a + b*x)^10, result = (a^10*x^11)/11 + (5//6)*a^9*b*x^12 + (45//13)*a^8*b^2*x^13 + (60//7)*a^7*b^3*x^14 + 14*a^6*b^4*x^15 + (63//4)*a^5*b^5*x^16 + (210//17)*a^4*b^6*x^17 + (20//3)*a^3*b^7*x^18 + (45//19)*a^2*b^8*x^19 + (1//2)*a*b^9*x^20 + (b^10*x^21)/21, integration_var = x, mistery_val = 2),
#     (integrand = x^9*(a + b*x)^10, result = (a^10*x^10)/10 + (10//11)*a^9*b*x^11 + (15//4)*a^8*b^2*x^12 + (120//13)*a^7*b^3*x^13 + 15*a^6*b^4*x^14 + (84//5)*a^5*b^5*x^15 + (105//8)*a^4*b^6*x^16 + (120//17)*a^3*b^7*x^17 + (5//2)*a^2*b^8*x^18 + (10//19)*a*b^9*x^19 + (b^10*x^20)/20, integration_var = x, mistery_val = 2),
# 
#     (integrand = x^8*(a + b*x)^10, result = (a^8*(a + b*x)^11)/(11*b^9) - (2*a^7*(a + b*x)^12)/(3*b^9) + (28*a^6*(a + b*x)^13)/(13*b^9) - (4*a^5*(a + b*x)^14)/b^9 + (14*a^4*(a + b*x)^15)/(3*b^9) - (7*a^3*(a + b*x)^16)/(2*b^9) + (28*a^2*(a + b*x)^17)/(17*b^9) - (4*a*(a + b*x)^18)/(9*b^9) + (a + b*x)^19/(19*b^9), integration_var = x, mistery_val = 2),
#     (integrand = x^7*(a + b*x)^10, result = -((a^7*(a + b*x)^11)/(11*b^8)) + (7*a^6*(a + b*x)^12)/(12*b^8) - (21*a^5*(a + b*x)^13)/(13*b^8) + (5*a^4*(a + b*x)^14)/(2*b^8) - (7*a^3*(a + b*x)^15)/(3*b^8) + (21*a^2*(a + b*x)^16)/(16*b^8) - (7*a*(a + b*x)^17)/(17*b^8) + (a + b*x)^18/(18*b^8), integration_var = x, mistery_val = 2),
#     (integrand = x^6*(a + b*x)^10, result = (a^6*(a + b*x)^11)/(11*b^7) - (a^5*(a + b*x)^12)/(2*b^7) + (15*a^4*(a + b*x)^13)/(13*b^7) - (10*a^3*(a + b*x)^14)/(7*b^7) + (a^2*(a + b*x)^15)/b^7 - (3*a*(a + b*x)^16)/(8*b^7) + (a + b*x)^17/(17*b^7), integration_var = x, mistery_val = 2),
#     (integrand = x^5*(a + b*x)^10, result = -((a^5*(a + b*x)^11)/(11*b^6)) + (5*a^4*(a + b*x)^12)/(12*b^6) - (10*a^3*(a + b*x)^13)/(13*b^6) + (5*a^2*(a + b*x)^14)/(7*b^6) - (a*(a + b*x)^15)/(3*b^6) + (a + b*x)^16/(16*b^6), integration_var = x, mistery_val = 2),
#     (integrand = x^4*(a + b*x)^10, result = (a^4*(a + b*x)^11)/(11*b^5) - (a^3*(a + b*x)^12)/(3*b^5) + (6*a^2*(a + b*x)^13)/(13*b^5) - (2*a*(a + b*x)^14)/(7*b^5) + (a + b*x)^15/(15*b^5), integration_var = x, mistery_val = 2),
#     (integrand = x^3*(a + b*x)^10, result = -((a^3*(a + b*x)^11)/(11*b^4)) + (a^2*(a + b*x)^12)/(4*b^4) - (3*a*(a + b*x)^13)/(13*b^4) + (a + b*x)^14/(14*b^4), integration_var = x, mistery_val = 2),
#     (integrand = x^2*(a + b*x)^10, result = (a^2*(a + b*x)^11)/(11*b^3) - (a*(a + b*x)^12)/(6*b^3) + (a + b*x)^13/(13*b^3), integration_var = x, mistery_val = 2),
#     (integrand = x^1*(a + b*x)^10, result = -((a*(a + b*x)^11)/(11*b^2)) + (a + b*x)^12/(12*b^2), integration_var = x, mistery_val = 2),
#     (integrand = x^0*(a + b*x)^10, result = (a + b*x)^11/(11*b), integration_var = x, mistery_val = 1),
# 
#     (integrand = (a + b*x)^10/x^1, result = 10*a^9*b*x + (45//2)*a^8*b^2*x^2 + 40*a^7*b^3*x^3 + (105//2)*a^6*b^4*x^4 + (252//5)*a^5*b^5*x^5 + 35*a^4*b^6*x^6 + (120//7)*a^3*b^7*x^7 + (45//8)*a^2*b^8*x^8 + (10//9)*a*b^9*x^9 + (b^10*x^10)/10 + a^10*log(x), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^10/x^2, result = -(a^10/x) + 45*a^8*b^2*x + 60*a^7*b^3*x^2 + 70*a^6*b^4*x^3 + 63*a^5*b^5*x^4 + 42*a^4*b^6*x^5 + 20*a^3*b^7*x^6 + (45//7)*a^2*b^8*x^7 + (5//4)*a*b^9*x^8 + (b^10*x^9)/9 + 10*a^9*b*log(x), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^10/x^3, result = -(a^10/(2*x^2)) - (10*a^9*b)/x + 120*a^7*b^3*x + 105*a^6*b^4*x^2 + 84*a^5*b^5*x^3 + (105//2)*a^4*b^6*x^4 + 24*a^3*b^7*x^5 + (15//2)*a^2*b^8*x^6 + (10//7)*a*b^9*x^7 + (b^10*x^8)/8 + 45*a^8*b^2*log(x), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^10/x^4, result = -(a^10/(3*x^3)) - (5*a^9*b)/x^2 - (45*a^8*b^2)/x + 210*a^6*b^4*x + 126*a^5*b^5*x^2 + 70*a^4*b^6*x^3 + 30*a^3*b^7*x^4 + 9*a^2*b^8*x^5 + (5//3)*a*b^9*x^6 + (b^10*x^7)/7 + 120*a^7*b^3*log(x), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^10/x^5, result = -(a^10/(4*x^4)) - (10*a^9*b)/(3*x^3) - (45*a^8*b^2)/(2*x^2) - (120*a^7*b^3)/x + 252*a^5*b^5*x + 105*a^4*b^6*x^2 + 40*a^3*b^7*x^3 + (45//4)*a^2*b^8*x^4 + 2*a*b^9*x^5 + (b^10*x^6)/6 + 210*a^6*b^4*log(x), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^10/x^6, result = -(a^10/(5*x^5)) - (5*a^9*b)/(2*x^4) - (15*a^8*b^2)/x^3 - (60*a^7*b^3)/x^2 - (210*a^6*b^4)/x + 210*a^4*b^6*x + 60*a^3*b^7*x^2 + 15*a^2*b^8*x^3 + (5//2)*a*b^9*x^4 + (b^10*x^5)/5 + 252*a^5*b^5*log(x), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^10/x^7, result = -(a^10/(6*x^6)) - (2*a^9*b)/x^5 - (45*a^8*b^2)/(4*x^4) - (40*a^7*b^3)/x^3 - (105*a^6*b^4)/x^2 - (252*a^5*b^5)/x + 120*a^3*b^7*x + (45//2)*a^2*b^8*x^2 + (10//3)*a*b^9*x^3 + (b^10*x^4)/4 + 210*a^4*b^6*log(x), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^10/x^8, result = -(a^10/(7*x^7)) - (5*a^9*b)/(3*x^6) - (9*a^8*b^2)/x^5 - (30*a^7*b^3)/x^4 - (70*a^6*b^4)/x^3 - (126*a^5*b^5)/x^2 - (210*a^4*b^6)/x + 45*a^2*b^8*x + 5*a*b^9*x^2 + (b^10*x^3)/3 + 120*a^3*b^7*log(x), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^10/x^9, result = -(a^10/(8*x^8)) - (10*a^9*b)/(7*x^7) - (15*a^8*b^2)/(2*x^6) - (24*a^7*b^3)/x^5 - (105*a^6*b^4)/(2*x^4) - (84*a^5*b^5)/x^3 - (105*a^4*b^6)/x^2 - (120*a^3*b^7)/x + 10*a*b^9*x + (b^10*x^2)/2 + 45*a^2*b^8*log(x), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^10/x^10, result = -(a^10/(9*x^9)) - (5*a^9*b)/(4*x^8) - (45*a^8*b^2)/(7*x^7) - (20*a^7*b^3)/x^6 - (42*a^6*b^4)/x^5 - (63*a^5*b^5)/x^4 - (70*a^4*b^6)/x^3 - (60*a^3*b^7)/x^2 - (45*a^2*b^8)/x + b^10*x + 10*a*b^9*log(x), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^10/x^11, result = -(a^10/(10*x^10)) - (10*a^9*b)/(9*x^9) - (45*a^8*b^2)/(8*x^8) - (120*a^7*b^3)/(7*x^7) - (35*a^6*b^4)/x^6 - (252*a^5*b^5)/(5*x^5) - (105*a^4*b^6)/(2*x^4) - (40*a^3*b^7)/x^3 - (45*a^2*b^8)/(2*x^2) - (10*a*b^9)/x + b^10*log(x), integration_var = x, mistery_val = 2),
# 
#     (integrand = (a + b*x)^10/x^12, result = -((a + b*x)^11/(11*a*x^11)), integration_var = x, mistery_val = 1),
#     (integrand = (a + b*x)^10/x^13, result = -((a + b*x)^11/(12*a*x^12)) + (b*(a + b*x)^11)/(132*a^2*x^11), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^10/x^14, result = -((a + b*x)^11/(13*a*x^13)) + (b*(a + b*x)^11)/(78*a^2*x^12) - (b^2*(a + b*x)^11)/(858*a^3*x^11), integration_var = x, mistery_val = 3),
#     (integrand = (a + b*x)^10/x^15, result = -((a + b*x)^11/(14*a*x^14)) + (3*b*(a + b*x)^11)/(182*a^2*x^13) - (b^2*(a + b*x)^11)/(364*a^3*x^12) + (b^3*(a + b*x)^11)/(4004*a^4*x^11), integration_var = x, mistery_val = 4),
#     (integrand = (a + b*x)^10/x^16, result = -((a + b*x)^11/(15*a*x^15)) + (2*b*(a + b*x)^11)/(105*a^2*x^14) - (2*b^2*(a + b*x)^11)/(455*a^3*x^13) + (b^3*(a + b*x)^11)/(1365*a^4*x^12) - (b^4*(a + b*x)^11)/(15015*a^5*x^11), integration_var = x, mistery_val = 5),
#     (integrand = (a + b*x)^10/x^17, result = -((a + b*x)^11/(16*a*x^16)) + (b*(a + b*x)^11)/(48*a^2*x^15) - (b^2*(a + b*x)^11)/(168*a^3*x^14) + (b^3*(a + b*x)^11)/(728*a^4*x^13) - (b^4*(a + b*x)^11)/(4368*a^5*x^12) + (b^5*(a + b*x)^11)/(48048*a^6*x^11), integration_var = x, mistery_val = 6),
#     (integrand = (a + b*x)^10/x^18, result = -((a + b*x)^11/(17*a*x^17)) + (3*b*(a + b*x)^11)/(136*a^2*x^16) - (b^2*(a + b*x)^11)/(136*a^3*x^15) + (b^3*(a + b*x)^11)/(476*a^4*x^14) - (3*b^4*(a + b*x)^11)/(6188*a^5*x^13) + (b^5*(a + b*x)^11)/(12376*a^6*x^12) - (b^6*(a + b*x)^11)/(136136*a^7*x^11), integration_var = x, mistery_val = 7),
# 
#     (integrand = (a + b*x)^10/x^19, result = -(a^10/(18*x^18)) - (10*a^9*b)/(17*x^17) - (45*a^8*b^2)/(16*x^16) - (8*a^7*b^3)/x^15 - (15*a^6*b^4)/x^14 - (252*a^5*b^5)/(13*x^13) - (35*a^4*b^6)/(2*x^12) - (120*a^3*b^7)/(11*x^11) - (9*a^2*b^8)/(2*x^10) - (10*a*b^9)/(9*x^9) - b^10/(8*x^8), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^10/x^20, result = -(a^10/(19*x^19)) - (5*a^9*b)/(9*x^18) - (45*a^8*b^2)/(17*x^17) - (15*a^7*b^3)/(2*x^16) - (14*a^6*b^4)/x^15 - (18*a^5*b^5)/x^14 - (210*a^4*b^6)/(13*x^13) - (10*a^3*b^7)/x^12 - (45*a^2*b^8)/(11*x^11) - (a*b^9)/x^10 - b^10/(9*x^9), integration_var = x, mistery_val = 2),
# 
# 
# # 
#     (integrand = (a + b*x)^20/x^32, result = -((a + b*x)^21/(31*a*x^31)) + (b*(a + b*x)^21)/(93*a^2*x^30) - (3*b^2*(a + b*x)^21)/(899*a^3*x^29) + (6*b^3*(a + b*x)^21)/(6293*a^4*x^28) - (2*b^4*(a + b*x)^21)/(8091*a^5*x^27) + (2*b^5*(a + b*x)^21)/(35061*a^6*x^26) - (2*b^6*(a + b*x)^21)/(175305*a^7*x^25) + (b^7*(a + b*x)^21)/(525915*a^8*x^24) - (b^8*(a + b*x)^21)/(4032015*a^9*x^23) + (b^9*(a + b*x)^21)/(44352165*a^10*x^22) - (b^10*(a + b*x)^21)/(931395465*a^11*x^21), integration_var = x, mistery_val = 11),
#     (integrand = (a + b*x)^20/x^33, result = -((a + b*x)^21/(32*a*x^32)) + (11*b*(a + b*x)^21)/(992*a^2*x^31) - (11*b^2*(a + b*x)^21)/(2976*a^3*x^30) + (33*b^3*(a + b*x)^21)/(28768*a^4*x^29) - (33*b^4*(a + b*x)^21)/(100688*a^5*x^28) + (11*b^5*(a + b*x)^21)/(129456*a^6*x^27) - (11*b^6*(a + b*x)^21)/(560976*a^7*x^26) + (11*b^7*(a + b*x)^21)/(2804880*a^8*x^25) - (11*b^8*(a + b*x)^21)/(16829280*a^9*x^24) + (11*b^9*(a + b*x)^21)/(129024480*a^10*x^23) - (b^10*(a + b*x)^21)/(129024480*a^11*x^22) + (b^11*(a + b*x)^21)/(2709514080*a^12*x^21), integration_var = x, mistery_val = 12),
#     (integrand = (a + b*x)^20/x^34, result = -((a + b*x)^21/(33*a*x^33)) + (b*(a + b*x)^21)/(88*a^2*x^32) - (b^2*(a + b*x)^21)/(248*a^3*x^31) + (b^3*(a + b*x)^21)/(744*a^4*x^30) - (3*b^4*(a + b*x)^21)/(7192*a^5*x^29) + (3*b^5*(a + b*x)^21)/(25172*a^6*x^28) - (b^6*(a + b*x)^21)/(32364*a^7*x^27) + (b^7*(a + b*x)^21)/(140244*a^8*x^26) - (b^8*(a + b*x)^21)/(701220*a^9*x^25) + (b^9*(a + b*x)^21)/(4207320*a^10*x^24) - (b^10*(a + b*x)^21)/(32256120*a^11*x^23) + (b^11*(a + b*x)^21)/(354817320*a^12*x^22) - (b^12*(a + b*x)^21)/(7451163720*a^13*x^21), integration_var = x, mistery_val = 13),
# 
#     (integrand = (a + b*x)^20/x^35, result = -(a^20/(34*x^34)) - (20*a^19*b)/(33*x^33) - (95*a^18*b^2)/(16*x^32) - (1140*a^17*b^3)/(31*x^31) - (323*a^16*b^4)/(2*x^30) - (15504*a^15*b^5)/(29*x^29) - (9690*a^14*b^6)/(7*x^28) - (25840*a^13*b^7)/(9*x^27) - (4845*a^12*b^8)/x^26 - (33592*a^11*b^9)/(5*x^25) - (46189*a^10*b^10)/(6*x^24) - (167960*a^9*b^11)/(23*x^23) - (62985*a^8*b^12)/(11*x^22) - (25840*a^7*b^13)/(7*x^21) - (1938*a^6*b^14)/x^20 - (816*a^5*b^15)/x^19 - (1615*a^4*b^16)/(6*x^18) - (1140*a^3*b^17)/(17*x^17) - (95*a^2*b^18)/(8*x^16) - (4*a*b^19)/(3*x^15) - b^20/(14*x^14), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^20/x^36, result = -(a^20/(35*x^35)) - (10*a^19*b)/(17*x^34) - (190*a^18*b^2)/(33*x^33) - (285*a^17*b^3)/(8*x^32) - (4845*a^16*b^4)/(31*x^31) - (2584*a^15*b^5)/(5*x^30) - (38760*a^14*b^6)/(29*x^29) - (19380*a^13*b^7)/(7*x^28) - (41990*a^12*b^8)/(9*x^27) - (6460*a^11*b^9)/x^26 - (184756*a^10*b^10)/(25*x^25) - (20995*a^9*b^11)/(3*x^24) - (125970*a^8*b^12)/(23*x^23) - (38760*a^7*b^13)/(11*x^22) - (12920*a^6*b^14)/(7*x^21) - (3876*a^5*b^15)/(5*x^20) - (255*a^4*b^16)/x^19 - (190*a^3*b^17)/(3*x^18) - (190*a^2*b^18)/(17*x^17) - (5*a*b^19)/(4*x^16) - b^20/(15*x^15), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^20/x^37, result = -(a^20/(36*x^36)) - (4*a^19*b)/(7*x^35) - (95*a^18*b^2)/(17*x^34) - (380*a^17*b^3)/(11*x^33) - (4845*a^16*b^4)/(32*x^32) - (15504*a^15*b^5)/(31*x^31) - (1292*a^14*b^6)/x^30 - (77520*a^13*b^7)/(29*x^29) - (62985*a^12*b^8)/(14*x^28) - (167960*a^11*b^9)/(27*x^27) - (7106*a^10*b^10)/x^26 - (33592*a^9*b^11)/(5*x^25) - (20995*a^8*b^12)/(4*x^24) - (77520*a^7*b^13)/(23*x^23) - (19380*a^6*b^14)/(11*x^22) - (5168*a^5*b^15)/(7*x^21) - (969*a^4*b^16)/(4*x^20) - (60*a^3*b^17)/x^19 - (95*a^2*b^18)/(9*x^18) - (20*a*b^19)/(17*x^17) - b^20/(16*x^16), integration_var = x, mistery_val = 2),
# # *)
# 
# 
#     (integrand = c*(a + b*x), result = (c*(a + b*x)^2)/(2*b), integration_var = x, mistery_val = 1),
#     (integrand = ((c + d)*(a + b*x))/e, result = ((c + d)*(a + b*x)^2)/(2*b*e), integration_var = x, mistery_val = 1),
# 
# 
# # ::Subsubsection::Closed::
# # n<0
# 
# 
#     (integrand = x^5/(a + b*x), result = (a^4*x)/b^5 - (a^3*x^2)/(2*b^4) + (a^2*x^3)/(3*b^3) - (a*x^4)/(4*b^2) + x^5/(5*b) - (a^5*log(a + b*x))/b^6, integration_var = x, mistery_val = 2),
#     (integrand = x^4/(a + b*x), result = -((a^3*x)/b^4) + (a^2*x^2)/(2*b^3) - (a*x^3)/(3*b^2) + x^4/(4*b) + (a^4*log(a + b*x))/b^5, integration_var = x, mistery_val = 2),
#     (integrand = x^3/(a + b*x), result = (a^2*x)/b^3 - (a*x^2)/(2*b^2) + x^3/(3*b) - (a^3*log(a + b*x))/b^4, integration_var = x, mistery_val = 2),
#     (integrand = x^2/(a + b*x), result = -((a*x)/b^2) + x^2/(2*b) + (a^2*log(a + b*x))/b^3, integration_var = x, mistery_val = 2),
#     (integrand = x^1/(a + b*x), result = x/b - (a*log(a + b*x))/b^2, integration_var = x, mistery_val = 2),
#     (integrand = x^0/(a + b*x), result = log(a + b*x)/b, integration_var = x, mistery_val = 1),
#     (integrand = 1/(x^1*(a + b*x)), result = log(x)/a - log(a + b*x)/a, integration_var = x, mistery_val = 3),
#     (integrand = 1/(x^2*(a + b*x)), result = -(1/(a*x)) - (b*log(x))/a^2 + (b*log(a + b*x))/a^2, integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^3*(a + b*x)), result = -(1/(2*a*x^2)) + b/(a^2*x) + (b^2*log(x))/a^3 - (b^2*log(a + b*x))/a^3, integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^4*(a + b*x)), result = -(1/(3*a*x^3)) + b/(2*a^2*x^2) - b^2/(a^3*x) - (b^3*log(x))/a^4 + (b^3*log(a + b*x))/a^4, integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^5*(a + b*x)), result = -(1/(4*a*x^4)) + b/(3*a^2*x^3) - b^2/(2*a^3*x^2) + b^3/(a^4*x) + (b^4*log(x))/a^5 - (b^4*log(a + b*x))/a^5, integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = x^6/(a + b*x)^2, result = (5*a^4*x)/b^6 - (2*a^3*x^2)/b^5 + (a^2*x^3)/b^4 - (a*x^4)/(2*b^3) + x^5/(5*b^2) - a^6/(b^7*(a + b*x)) - (6*a^5*log(a + b*x))/b^7, integration_var = x, mistery_val = 2),
#     (integrand = x^5/(a + b*x)^2, result = -((4*a^3*x)/b^5) + (3*a^2*x^2)/(2*b^4) - (2*a*x^3)/(3*b^3) + x^4/(4*b^2) + a^5/(b^6*(a + b*x)) + (5*a^4*log(a + b*x))/b^6, integration_var = x, mistery_val = 2),
#     (integrand = x^4/(a + b*x)^2, result = (3*a^2*x)/b^4 - (a*x^2)/b^3 + x^3/(3*b^2) - a^4/(b^5*(a + b*x)) - (4*a^3*log(a + b*x))/b^5, integration_var = x, mistery_val = 2),
#     (integrand = x^3/(a + b*x)^2, result = -((2*a*x)/b^3) + x^2/(2*b^2) + a^3/(b^4*(a + b*x)) + (3*a^2*log(a + b*x))/b^4, integration_var = x, mistery_val = 2),
#     (integrand = x^2/(a + b*x)^2, result = x/b^2 - a^2/(b^3*(a + b*x)) - (2*a*log(a + b*x))/b^3, integration_var = x, mistery_val = 2),
#     (integrand = x^1/(a + b*x)^2, result = a/(b^2*(a + b*x)) + log(a + b*x)/b^2, integration_var = x, mistery_val = 2),
#     (integrand = x^0/(a + b*x)^2, result = -(1/(b*(a + b*x))), integration_var = x, mistery_val = 1),
#     (integrand = 1/(x^1*(a + b*x)^2), result = 1/(a*(a + b*x)) + log(x)/a^2 - log(a + b*x)/a^2, integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^2*(a + b*x)^2), result = -(1/(a^2*x)) - b/(a^2*(a + b*x)) - (2*b*log(x))/a^3 + (2*b*log(a + b*x))/a^3, integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^3*(a + b*x)^2), result = -(1/(2*a^2*x^2)) + (2*b)/(a^3*x) + b^2/(a^3*(a + b*x)) + (3*b^2*log(x))/a^4 - (3*b^2*log(a + b*x))/a^4, integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^4*(a + b*x)^2), result = -(1/(3*a^2*x^3)) + b/(a^3*x^2) - (3*b^2)/(a^4*x) - b^3/(a^4*(a + b*x)) - (4*b^3*log(x))/a^5 + (4*b^3*log(a + b*x))/a^5, integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^5*(a + b*x)^2), result = -(1/(4*a^2*x^4)) + (2*b)/(3*a^3*x^3) - (3*b^2)/(2*a^4*x^2) + (4*b^3)/(a^5*x) + b^4/(a^5*(a + b*x)) + (5*b^4*log(x))/a^6 - (5*b^4*log(a + b*x))/a^6, integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = x^7/(a + b*x)^3, result = (15*a^4*x)/b^7 - (5*a^3*x^2)/b^6 + (2*a^2*x^3)/b^5 - (3*a*x^4)/(4*b^4) + x^5/(5*b^3) + a^7/(2*b^8*(a + b*x)^2) - (7*a^6)/(b^8*(a + b*x)) - (21*a^5*log(a + b*x))/b^8, integration_var = x, mistery_val = 2),
#     (integrand = x^6/(a + b*x)^3, result = -((10*a^3*x)/b^6) + (3*a^2*x^2)/b^5 - (a*x^3)/b^4 + x^4/(4*b^3) - a^6/(2*b^7*(a + b*x)^2) + (6*a^5)/(b^7*(a + b*x)) + (15*a^4*log(a + b*x))/b^7, integration_var = x, mistery_val = 2),
#     (integrand = x^5/(a + b*x)^3, result = (6*a^2*x)/b^5 - (3*a*x^2)/(2*b^4) + x^3/(3*b^3) + a^5/(2*b^6*(a + b*x)^2) - (5*a^4)/(b^6*(a + b*x)) - (10*a^3*log(a + b*x))/b^6, integration_var = x, mistery_val = 2),
#     (integrand = x^4/(a + b*x)^3, result = -((3*a*x)/b^4) + x^2/(2*b^3) - a^4/(2*b^5*(a + b*x)^2) + (4*a^3)/(b^5*(a + b*x)) + (6*a^2*log(a + b*x))/b^5, integration_var = x, mistery_val = 2),
#     (integrand = x^3/(a + b*x)^3, result = x/b^3 + a^3/(2*b^4*(a + b*x)^2) - (3*a^2)/(b^4*(a + b*x)) - (3*a*log(a + b*x))/b^4, integration_var = x, mistery_val = 2),
#     (integrand = x^2/(a + b*x)^3, result = -(a^2/(2*b^3*(a + b*x)^2)) + (2*a)/(b^3*(a + b*x)) + log(a + b*x)/b^3, integration_var = x, mistery_val = 2),
#     (integrand = x^1/(a + b*x)^3, result = x^2/(2*a*(a + b*x)^2), integration_var = x, mistery_val = 1),
#     (integrand = x^0/(a + b*x)^3, result = -1/(2*b*(a + b*x)^2), integration_var = x, mistery_val = 1),
#     (integrand = 1/(x^1*(a + b*x)^3), result = 1/(2*a*(a + b*x)^2) + 1/(a^2*(a + b*x)) + log(x)/a^3 - log(a + b*x)/a^3, integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^2*(a + b*x)^3), result = -(1/(a^3*x)) - b/(2*a^2*(a + b*x)^2) - (2*b)/(a^3*(a + b*x)) - (3*b*log(x))/a^4 + (3*b*log(a + b*x))/a^4, integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^3*(a + b*x)^3), result = -(1/(2*a^3*x^2)) + (3*b)/(a^4*x) + b^2/(2*a^3*(a + b*x)^2) + (3*b^2)/(a^4*(a + b*x)) + (6*b^2*log(x))/a^5 - (6*b^2*log(a + b*x))/a^5, integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^4*(a + b*x)^3), result = -(1/(3*a^3*x^3)) + (3*b)/(2*a^4*x^2) - (6*b^2)/(a^5*x) - b^3/(2*a^4*(a + b*x)^2) - (4*b^3)/(a^5*(a + b*x)) - (10*b^3*log(x))/a^6 + (10*b^3*log(a + b*x))/a^6, integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^5*(a + b*x)^3), result = -(1/(4*a^3*x^4)) + b/(a^4*x^3) - (3*b^2)/(a^5*x^2) + (10*b^3)/(a^6*x) + b^4/(2*a^5*(a + b*x)^2) + (5*b^4)/(a^6*(a + b*x)) + (15*b^4*log(x))/a^7 - (15*b^4*log(a + b*x))/a^7, integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = x^8/(a + b*x)^4, result = (35*a^4*x)/b^8 - (10*a^3*x^2)/b^7 + (10*a^2*x^3)/(3*b^6) - (a*x^4)/b^5 + x^5/(5*b^4) - a^8/(3*b^9*(a + b*x)^3) + (4*a^7)/(b^9*(a + b*x)^2) - (28*a^6)/(b^9*(a + b*x)) - (56*a^5*log(a + b*x))/b^9, integration_var = x, mistery_val = 2),
#     (integrand = x^7/(a + b*x)^4, result = -((20*a^3*x)/b^7) + (5*a^2*x^2)/b^6 - (4*a*x^3)/(3*b^5) + x^4/(4*b^4) + a^7/(3*b^8*(a + b*x)^3) - (7*a^6)/(2*b^8*(a + b*x)^2) + (21*a^5)/(b^8*(a + b*x)) + (35*a^4*log(a + b*x))/b^8, integration_var = x, mistery_val = 2),
#     (integrand = x^6/(a + b*x)^4, result = (10*a^2*x)/b^6 - (2*a*x^2)/b^5 + x^3/(3*b^4) - a^6/(3*b^7*(a + b*x)^3) + (3*a^5)/(b^7*(a + b*x)^2) - (15*a^4)/(b^7*(a + b*x)) - (20*a^3*log(a + b*x))/b^7, integration_var = x, mistery_val = 2),
#     (integrand = x^5/(a + b*x)^4, result = -((4*a*x)/b^5) + x^2/(2*b^4) + a^5/(3*b^6*(a + b*x)^3) - (5*a^4)/(2*b^6*(a + b*x)^2) + (10*a^3)/(b^6*(a + b*x)) + (10*a^2*log(a + b*x))/b^6, integration_var = x, mistery_val = 2),
#     (integrand = x^4/(a + b*x)^4, result = x/b^4 - a^4/(3*b^5*(a + b*x)^3) + (2*a^3)/(b^5*(a + b*x)^2) - (6*a^2)/(b^5*(a + b*x)) - (4*a*log(a + b*x))/b^5, integration_var = x, mistery_val = 2),
#     (integrand = x^3/(a + b*x)^4, result = a^3/(3*b^4*(a + b*x)^3) - (3*a^2)/(2*b^4*(a + b*x)^2) + (3*a)/(b^4*(a + b*x)) + log(a + b*x)/b^4, integration_var = x, mistery_val = 2),
#     (integrand = x^2/(a + b*x)^4, result = x^3/(3*a*(a + b*x)^3), integration_var = x, mistery_val = 1),
#     (integrand = x^1/(a + b*x)^4, result = a/(3*b^2*(a + b*x)^3) - 1/(2*b^2*(a + b*x)^2), integration_var = x, mistery_val = 2),
#     (integrand = x^0/(a + b*x)^4, result = -(1/(3*b*(a + b*x)^3)), integration_var = x, mistery_val = 1),
#     (integrand = 1/(x^1*(a + b*x)^4), result = 1/(3*a*(a + b*x)^3) + 1/(2*a^2*(a + b*x)^2) + 1/(a^3*(a + b*x)) + log(x)/a^4 - log(a + b*x)/a^4, integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^2*(a + b*x)^4), result = -(1/(a^4*x)) - b/(3*a^2*(a + b*x)^3) - b/(a^3*(a + b*x)^2) - (3*b)/(a^4*(a + b*x)) - (4*b*log(x))/a^5 + (4*b*log(a + b*x))/a^5, integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^3*(a + b*x)^4), result = -(1/(2*a^4*x^2)) + (4*b)/(a^5*x) + b^2/(3*a^3*(a + b*x)^3) + (3*b^2)/(2*a^4*(a + b*x)^2) + (6*b^2)/(a^5*(a + b*x)) + (10*b^2*log(x))/a^6 - (10*b^2*log(a + b*x))/a^6, integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^4*(a + b*x)^4), result = -(1/(3*a^4*x^3)) + (2*b)/(a^5*x^2) - (10*b^2)/(a^6*x) - b^3/(3*a^4*(a + b*x)^3) - (2*b^3)/(a^5*(a + b*x)^2) - (10*b^3)/(a^6*(a + b*x)) - (20*b^3*log(x))/a^7 + (20*b^3*log(a + b*x))/a^7, integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^5*(a + b*x)^4), result = -(1/(4*a^4*x^4)) + (4*b)/(3*a^5*x^3) - (5*b^2)/(a^6*x^2) + (20*b^3)/(a^7*x) + b^4/(3*a^5*(a + b*x)^3) + (5*b^4)/(2*a^6*(a + b*x)^2) + (15*b^4)/(a^7*(a + b*x)) + (35*b^4*log(x))/a^8 - (35*b^4*log(a + b*x))/a^8, integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = x^10/(a + b*x)^7, result = -((84*a^3*x)/b^10) + (14*a^2*x^2)/b^9 - (7*a*x^3)/(3*b^8) + x^4/(4*b^7) - a^10/(6*b^11*(a + b*x)^6) + (2*a^9)/(b^11*(a + b*x)^5) - (45*a^8)/(4*b^11*(a + b*x)^4) + (40*a^7)/(b^11*(a + b*x)^3) - (105*a^6)/(b^11*(a + b*x)^2) + (252*a^5)/(b^11*(a + b*x)) + (210*a^4*log(a + b*x))/b^11, integration_var = x, mistery_val = 2),
#     (integrand = x^9/(a + b*x)^7, result = (28*a^2*x)/b^9 - (7*a*x^2)/(2*b^8) + x^3/(3*b^7) + a^9/(6*b^10*(a + b*x)^6) - (9*a^8)/(5*b^10*(a + b*x)^5) + (9*a^7)/(b^10*(a + b*x)^4) - (28*a^6)/(b^10*(a + b*x)^3) + (63*a^5)/(b^10*(a + b*x)^2) - (126*a^4)/(b^10*(a + b*x)) - (84*a^3*log(a + b*x))/b^10, integration_var = x, mistery_val = 2),
#     (integrand = x^8/(a + b*x)^7, result = -((7*a*x)/b^8) + x^2/(2*b^7) - a^8/(6*b^9*(a + b*x)^6) + (8*a^7)/(5*b^9*(a + b*x)^5) - (7*a^6)/(b^9*(a + b*x)^4) + (56*a^5)/(3*b^9*(a + b*x)^3) - (35*a^4)/(b^9*(a + b*x)^2) + (56*a^3)/(b^9*(a + b*x)) + (28*a^2*log(a + b*x))/b^9, integration_var = x, mistery_val = 2),
#     (integrand = x^7/(a + b*x)^7, result = x/b^7 + a^7/(6*b^8*(a + b*x)^6) - (7*a^6)/(5*b^8*(a + b*x)^5) + (21*a^5)/(4*b^8*(a + b*x)^4) - (35*a^4)/(3*b^8*(a + b*x)^3) + (35*a^3)/(2*b^8*(a + b*x)^2) - (21*a^2)/(b^8*(a + b*x)) - (7*a*log(a + b*x))/b^8, integration_var = x, mistery_val = 2),
#     (integrand = x^6/(a + b*x)^7, result = -(a^6/(6*b^7*(a + b*x)^6)) + (6*a^5)/(5*b^7*(a + b*x)^5) - (15*a^4)/(4*b^7*(a + b*x)^4) + (20*a^3)/(3*b^7*(a + b*x)^3) - (15*a^2)/(2*b^7*(a + b*x)^2) + (6*a)/(b^7*(a + b*x)) + log(a + b*x)/b^7, integration_var = x, mistery_val = 2),
#     (integrand = x^5/(a + b*x)^7, result = x^6/(6*a*(a + b*x)^6), integration_var = x, mistery_val = 1),
#     (integrand = x^4/(a + b*x)^7, result = x^5/(6*a*(a + b*x)^6) + x^5/(30*a^2*(a + b*x)^5), integration_var = x, mistery_val = 2),
# # {x^3/(a + b*x)^7, x, 2, x^4/(6*a*(a + b*x)^6) + x^4/(15*a^2*(a + b*x)^5) + x^4/(60*a^3*(a + b*x)^4), a^3/(6*b^4*(a + b*x)^6) - (3*a^2)/(5*b^4*(a + b*x)^5) + (3*a)/(4*b^4*(a + b*x)^4) - 1/(3*b^4*(a + b*x)^3)}
#     (integrand = x^2/(a + b*x)^7, result = -(a^2/(6*b^3*(a + b*x)^6)) + (2*a)/(5*b^3*(a + b*x)^5) - 1/(4*b^3*(a + b*x)^4), integration_var = x, mistery_val = 2),
#     (integrand = x^1/(a + b*x)^7, result = a/(6*b^2*(a + b*x)^6) - 1/(5*b^2*(a + b*x)^5), integration_var = x, mistery_val = 2),
#     (integrand = x^0/(a + b*x)^7, result = -1/(6*b*(a + b*x)^6), integration_var = x, mistery_val = 1),
#     (integrand = 1/(x^1*(a + b*x)^7), result = 1/(6*a*(a + b*x)^6) + 1/(5*a^2*(a + b*x)^5) + 1/(4*a^3*(a + b*x)^4) + 1/(3*a^4*(a + b*x)^3) + 1/(2*a^5*(a + b*x)^2) + 1/(a^6*(a + b*x)) + log(x)/a^7 - log(a + b*x)/a^7, integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^2*(a + b*x)^7), result = -(1/(a^7*x)) - b/(6*a^2*(a + b*x)^6) - (2*b)/(5*a^3*(a + b*x)^5) - (3*b)/(4*a^4*(a + b*x)^4) - (4*b)/(3*a^5*(a + b*x)^3) - (5*b)/(2*a^6*(a + b*x)^2) - (6*b)/(a^7*(a + b*x)) - (7*b*log(x))/a^8 + (7*b*log(a + b*x))/a^8, integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^3*(a + b*x)^7), result = -(1/(2*a^7*x^2)) + (7*b)/(a^8*x) + b^2/(6*a^3*(a + b*x)^6) + (3*b^2)/(5*a^4*(a + b*x)^5) + (3*b^2)/(2*a^5*(a + b*x)^4) + (10*b^2)/(3*a^6*(a + b*x)^3) + (15*b^2)/(2*a^7*(a + b*x)^2) + (21*b^2)/(a^8*(a + b*x)) + (28*b^2*log(x))/a^9 - (28*b^2*log(a + b*x))/a^9, integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^4*(a + b*x)^7), result = -(1/(3*a^7*x^3)) + (7*b)/(2*a^8*x^2) - (28*b^2)/(a^9*x) - b^3/(6*a^4*(a + b*x)^6) - (4*b^3)/(5*a^5*(a + b*x)^5) - (5*b^3)/(2*a^6*(a + b*x)^4) - (20*b^3)/(3*a^7*(a + b*x)^3) - (35*b^3)/(2*a^8*(a + b*x)^2) - (56*b^3)/(a^9*(a + b*x)) - (84*b^3*log(x))/a^10 + (84*b^3*log(a + b*x))/a^10, integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = x^12/(a + b*x)^10, result = (55*a^2*x)/b^12 - (5*a*x^2)/b^11 + x^3/(3*b^10) - a^12/(9*b^13*(a + b*x)^9) + (3*a^11)/(2*b^13*(a + b*x)^8) - (66*a^10)/(7*b^13*(a + b*x)^7) + (110*a^9)/(3*b^13*(a + b*x)^6) - (99*a^8)/(b^13*(a + b*x)^5) + (198*a^7)/(b^13*(a + b*x)^4) - (308*a^6)/(b^13*(a + b*x)^3) + (396*a^5)/(b^13*(a + b*x)^2) - (495*a^4)/(b^13*(a + b*x)) - (220*a^3*log(a + b*x))/b^13, integration_var = x, mistery_val = 2),
#     (integrand = x^11/(a + b*x)^10, result = -((10*a*x)/b^11) + x^2/(2*b^10) + a^11/(9*b^12*(a + b*x)^9) - (11*a^10)/(8*b^12*(a + b*x)^8) + (55*a^9)/(7*b^12*(a + b*x)^7) - (55*a^8)/(2*b^12*(a + b*x)^6) + (66*a^7)/(b^12*(a + b*x)^5) - (231*a^6)/(2*b^12*(a + b*x)^4) + (154*a^5)/(b^12*(a + b*x)^3) - (165*a^4)/(b^12*(a + b*x)^2) + (165*a^3)/(b^12*(a + b*x)) + (55*a^2*log(a + b*x))/b^12, integration_var = x, mistery_val = 2),
#     (integrand = x^10/(a + b*x)^10, result = x/b^10 - a^10/(9*b^11*(a + b*x)^9) + (5*a^9)/(4*b^11*(a + b*x)^8) - (45*a^8)/(7*b^11*(a + b*x)^7) + (20*a^7)/(b^11*(a + b*x)^6) - (42*a^6)/(b^11*(a + b*x)^5) + (63*a^5)/(b^11*(a + b*x)^4) - (70*a^4)/(b^11*(a + b*x)^3) + (60*a^3)/(b^11*(a + b*x)^2) - (45*a^2)/(b^11*(a + b*x)) - (10*a*log(a + b*x))/b^11, integration_var = x, mistery_val = 2),
#     (integrand = x^9/(a + b*x)^10, result = a^9/(9*b^10*(a + b*x)^9) - (9*a^8)/(8*b^10*(a + b*x)^8) + (36*a^7)/(7*b^10*(a + b*x)^7) - (14*a^6)/(b^10*(a + b*x)^6) + (126*a^5)/(5*b^10*(a + b*x)^5) - (63*a^4)/(2*b^10*(a + b*x)^4) + (28*a^3)/(b^10*(a + b*x)^3) - (18*a^2)/(b^10*(a + b*x)^2) + (9*a)/(b^10*(a + b*x)) + log(a + b*x)/b^10, integration_var = x, mistery_val = 2),
#     (integrand = x^8/(a + b*x)^10, result = x^9/(9*a*(a + b*x)^9), integration_var = x, mistery_val = 1),
#     (integrand = x^7/(a + b*x)^10, result = x^8/(9*a*(a + b*x)^9) + x^8/(72*a^2*(a + b*x)^8), integration_var = x, mistery_val = 2),
#     (integrand = x^6/(a + b*x)^10, result = x^7/(9*a*(a + b*x)^9) + x^7/(36*a^2*(a + b*x)^8) + x^7/(252*a^3*(a + b*x)^7), integration_var = x, mistery_val = 3),
#     (integrand = x^5/(a + b*x)^10, result = x^6/(9*a*(a + b*x)^9) + x^6/(24*a^2*(a + b*x)^8) + x^6/(84*a^3*(a + b*x)^7) + x^6/(504*a^4*(a + b*x)^6), integration_var = x, mistery_val = 4),
#     (integrand = x^4/(a + b*x)^10, result = -(a^4/(9*b^5*(a + b*x)^9)) + a^3/(2*b^5*(a + b*x)^8) - (6*a^2)/(7*b^5*(a + b*x)^7) + (2*a)/(3*b^5*(a + b*x)^6) - 1/(5*b^5*(a + b*x)^5), integration_var = x, mistery_val = 2),
#     (integrand = x^3/(a + b*x)^10, result = a^3/(9*b^4*(a + b*x)^9) - (3*a^2)/(8*b^4*(a + b*x)^8) + (3*a)/(7*b^4*(a + b*x)^7) - 1/(6*b^4*(a + b*x)^6), integration_var = x, mistery_val = 2),
#     (integrand = x^2/(a + b*x)^10, result = -(a^2/(9*b^3*(a + b*x)^9)) + a/(4*b^3*(a + b*x)^8) - 1/(7*b^3*(a + b*x)^7), integration_var = x, mistery_val = 2),
#     (integrand = x^1/(a + b*x)^10, result = a/(9*b^2*(a + b*x)^9) - 1/(8*b^2*(a + b*x)^8), integration_var = x, mistery_val = 2),
#     (integrand = x^0/(a + b*x)^10, result = -(1/(9*b*(a + b*x)^9)), integration_var = x, mistery_val = 1),
#     (integrand = 1/(x^1*(a + b*x)^10), result = 1/(9*a*(a + b*x)^9) + 1/(8*a^2*(a + b*x)^8) + 1/(7*a^3*(a + b*x)^7) + 1/(6*a^4*(a + b*x)^6) + 1/(5*a^5*(a + b*x)^5) + 1/(4*a^6*(a + b*x)^4) + 1/(3*a^7*(a + b*x)^3) + 1/(2*a^8*(a + b*x)^2) + 1/(a^9*(a + b*x)) + log(x)/a^10 - log(a + b*x)/a^10, integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^2*(a + b*x)^10), result = -(1/(a^10*x)) - b/(9*a^2*(a + b*x)^9) - b/(4*a^3*(a + b*x)^8) - (3*b)/(7*a^4*(a + b*x)^7) - (2*b)/(3*a^5*(a + b*x)^6) - b/(a^6*(a + b*x)^5) - (3*b)/(2*a^7*(a + b*x)^4) - (7*b)/(3*a^8*(a + b*x)^3) - (4*b)/(a^9*(a + b*x)^2) - (9*b)/(a^10*(a + b*x)) - (10*b*log(x))/a^11 + (10*b*log(a + b*x))/a^11, integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^3*(a + b*x)^10), result = -(1/(2*a^10*x^2)) + (10*b)/(a^11*x) + b^2/(9*a^3*(a + b*x)^9) + (3*b^2)/(8*a^4*(a + b*x)^8) + (6*b^2)/(7*a^5*(a + b*x)^7) + (5*b^2)/(3*a^6*(a + b*x)^6) + (3*b^2)/(a^7*(a + b*x)^5) + (21*b^2)/(4*a^8*(a + b*x)^4) + (28*b^2)/(3*a^9*(a + b*x)^3) + (18*b^2)/(a^10*(a + b*x)^2) + (45*b^2)/(a^11*(a + b*x)) + (55*b^2*log(x))/a^12 - (55*b^2*log(a + b*x))/a^12, integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^4*(a + b*x)^10), result = -(1/(3*a^10*x^3)) + (5*b)/(a^11*x^2) - (55*b^2)/(a^12*x) - b^3/(9*a^4*(a + b*x)^9) - b^3/(2*a^5*(a + b*x)^8) - (10*b^3)/(7*a^6*(a + b*x)^7) - (10*b^3)/(3*a^7*(a + b*x)^6) - (7*b^3)/(a^8*(a + b*x)^5) - (14*b^3)/(a^9*(a + b*x)^4) - (28*b^3)/(a^10*(a + b*x)^3) - (60*b^3)/(a^11*(a + b*x)^2) - (165*b^3)/(a^12*(a + b*x)) - (220*b^3*log(x))/a^13 + (220*b^3*log(a + b*x))/a^13, integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = (a + b*x)^12/x^10, result = -(a^12/(9*x^9)) - (3*a^11*b)/(2*x^8) - (66*a^10*b^2)/(7*x^7) - (110*a^9*b^3)/(3*x^6) - (99*a^8*b^4)/x^5 - (198*a^7*b^5)/x^4 - (308*a^6*b^6)/x^3 - (396*a^5*b^7)/x^2 - (495*a^4*b^8)/x + 66*a^2*b^10*x + 6*a*b^11*x^2 + (b^12*x^3)/3 + 220*a^3*b^9*log(x), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^11/x^10, result = -(a^11/(9*x^9)) - (11*a^10*b)/(8*x^8) - (55*a^9*b^2)/(7*x^7) - (55*a^8*b^3)/(2*x^6) - (66*a^7*b^4)/x^5 - (231*a^6*b^5)/(2*x^4) - (154*a^5*b^6)/x^3 - (165*a^4*b^7)/x^2 - (165*a^3*b^8)/x + 11*a*b^10*x + (b^11*x^2)/2 + 55*a^2*b^9*log(x), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^10/x^10, result = -(a^10/(9*x^9)) - (5*a^9*b)/(4*x^8) - (45*a^8*b^2)/(7*x^7) - (20*a^7*b^3)/x^6 - (42*a^6*b^4)/x^5 - (63*a^5*b^5)/x^4 - (70*a^4*b^6)/x^3 - (60*a^3*b^7)/x^2 - (45*a^2*b^8)/x + b^10*x + 10*a*b^9*log(x), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^9/x^10, result = -(a^9/(9*x^9)) - (9*a^8*b)/(8*x^8) - (36*a^7*b^2)/(7*x^7) - (14*a^6*b^3)/x^6 - (126*a^5*b^4)/(5*x^5) - (63*a^4*b^5)/(2*x^4) - (28*a^3*b^6)/x^3 - (18*a^2*b^7)/x^2 - (9*a*b^8)/x + b^9*log(x), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^8/x^10, result = -((a + b*x)^9/(9*a*x^9)), integration_var = x, mistery_val = 1),
#     (integrand = (a + b*x)^7/x^10, result = -((a + b*x)^8/(9*a*x^9)) + (b*(a + b*x)^8)/(72*a^2*x^8), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^6/x^10, result = -((a + b*x)^7/(9*a*x^9)) + (b*(a + b*x)^7)/(36*a^2*x^8) - (b^2*(a + b*x)^7)/(252*a^3*x^7), integration_var = x, mistery_val = 3),
#     (integrand = (a + b*x)^5/x^10, result = -(a^5/(9*x^9)) - (5*a^4*b)/(8*x^8) - (10*a^3*b^2)/(7*x^7) - (5*a^2*b^3)/(3*x^6) - (a*b^4)/x^5 - b^5/(4*x^4), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^4/x^10, result = -(a^4/(9*x^9)) - (a^3*b)/(2*x^8) - (6*a^2*b^2)/(7*x^7) - (2*a*b^3)/(3*x^6) - b^4/(5*x^5), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^3/x^10, result = -(a^3/(9*x^9)) - (3*a^2*b)/(8*x^8) - (3*a*b^2)/(7*x^7) - b^3/(6*x^6), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^2/x^10, result = -(a^2/(9*x^9)) - (a*b)/(4*x^8) - b^2/(7*x^7), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^1/x^10, result = -(a/(9*x^9)) - b/(8*x^8), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^0/x^10, result = -(1/(9*x^9)), integration_var = x, mistery_val = 1),
#     (integrand = 1/((a + b*x)^1*x^10), result = -(1/(9*a*x^9)) + b/(8*a^2*x^8) - b^2/(7*a^3*x^7) + b^3/(6*a^4*x^6) - b^4/(5*a^5*x^5) + b^5/(4*a^6*x^4) - b^6/(3*a^7*x^3) + b^7/(2*a^8*x^2) - b^8/(a^9*x) - (b^9*log(x))/a^10 + (b^9*log(a + b*x))/a^10, integration_var = x, mistery_val = 2),
#     (integrand = 1/((a + b*x)^2*x^10), result = -(1/(9*a^2*x^9)) + b/(4*a^3*x^8) - (3*b^2)/(7*a^4*x^7) + (2*b^3)/(3*a^5*x^6) - b^4/(a^6*x^5) + (3*b^5)/(2*a^7*x^4) - (7*b^6)/(3*a^8*x^3) + (4*b^7)/(a^9*x^2) - (9*b^8)/(a^10*x) - b^9/(a^10*(a + b*x)) - (10*b^9*log(x))/a^11 + (10*b^9*log(a + b*x))/a^11, integration_var = x, mistery_val = 2),
#     (integrand = 1/((a + b*x)^3*x^10), result = -(1/(9*a^3*x^9)) + (3*b)/(8*a^4*x^8) - (6*b^2)/(7*a^5*x^7) + (5*b^3)/(3*a^6*x^6) - (3*b^4)/(a^7*x^5) + (21*b^5)/(4*a^8*x^4) - (28*b^6)/(3*a^9*x^3) + (18*b^7)/(a^10*x^2) - (45*b^8)/(a^11*x) - b^9/(2*a^10*(a + b*x)^2) - (10*b^9)/(a^11*(a + b*x)) - (55*b^9*log(x))/a^12 + (55*b^9*log(a + b*x))/a^12, integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = 1/(x^1*(2 + 3*x)), result = log(x)/2 - (1//2)*log(2 + 3*x), integration_var = x, mistery_val = 3),
#     (integrand = 1/(x^1*(4 + 6*x)), result = log(x)/4 - (1//4)*log(2 + 3*x), integration_var = x, mistery_val = 3),
#     (integrand = 1/(x^2*(4 + 6*x)), result = -(1/(4*x)) - (3*log(x))/8 + (3//8)*log(2 + 3*x), integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^3*(4 + 6*x)), result = -(1/(8*x^2)) + 3/(8*x) + (9*log(x))/16 - (9//16)*log(2 + 3*x), integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^4*(4 + 6*x)), result = -(1/(12*x^3)) + 3/(16*x^2) - 9/(16*x) - (27*log(x))/32 + (27//32)*log(2 + 3*x), integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^5*(4 + 6*x)), result = -(1/(16*x^4)) + 1/(8*x^3) - 9/(32*x^2) + 27/(32*x) + (81*log(x))/64 - (81//64)*log(2 + 3*x), integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = 1/(x^1*(4 + 6*x)^2), result = 1/(8*(2 + 3*x)) + log(x)/16 - (1//16)*log(2 + 3*x), integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^2*(4 + 6*x)^2), result = -(1/(16*x)) - 3/(16*(2 + 3*x)) - (3*log(x))/16 + (3//16)*log(2 + 3*x), integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^3*(4 + 6*x)^2), result = -(1/(32*x^2)) + 3/(16*x) + 9/(32*(2 + 3*x)) + (27*log(x))/64 - (27//64)*log(2 + 3*x), integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^4*(4 + 6*x)^2), result = -(1/(48*x^3)) + 3/(32*x^2) - 27/(64*x) - 27/(64*(2 + 3*x)) - (27*log(x))/32 + (27//32)*log(2 + 3*x), integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^5*(4 + 6*x)^2), result = -(1/(64*x^4)) + 1/(16*x^3) - 27/(128*x^2) + 27/(32*x) + 81/(128*(2 + 3*x)) + (405*log(x))/256 - (405//256)*log(2 + 3*x), integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = 1/(x^1*(4 + 6*x)^3), result = 1/(32*(2 + 3*x)^2) + 1/(32*(2 + 3*x)) + log(x)/64 - (1//64)*log(2 + 3*x), integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^2*(4 + 6*x)^3), result = -(1/(64*x)) - 3/(64*(2 + 3*x)^2) - 3/(32*(2 + 3*x)) - (9*log(x))/128 + (9//128)*log(2 + 3*x), integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^3*(4 + 6*x)^3), result = -(1/(128*x^2)) + 9/(128*x) + 9/(128*(2 + 3*x)^2) + 27/(128*(2 + 3*x)) + (27*log(x))/128 - (27//128)*log(2 + 3*x), integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^4*(4 + 6*x)^3), result = -(1/(192*x^3)) + 9/(256*x^2) - 27/(128*x) - 27/(256*(2 + 3*x)^2) - 27/(64*(2 + 3*x)) - (135*log(x))/256 + (135//256)*log(2 + 3*x), integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^5*(4 + 6*x)^3), result = -(1/(256*x^4)) + 3/(128*x^3) - 27/(256*x^2) + 135/(256*x) + 81/(512*(2 + 3*x)^2) + 405/(512*(2 + 3*x)) + (1215*log(x))/1024 - (1215*log(2 + 3*x))/1024, integration_var = x, mistery_val = 2),
# 
# 
# # Factor content out of denominator before including in Log?
#     (integrand = 1/(2 + 2*x), result = (1//2)*log(1 + x), integration_var = x, mistery_val = 1),
#     (integrand = 1/(4 - 6*x), result = (-(1//6))*log(2 - 3*x), integration_var = x, mistery_val = 1),
#     (integrand = 1/(a + sqrt(a)*x), result = log(sqrt(a) + x)/sqrt(a), integration_var = x, mistery_val = 1),
#     (integrand = 1/(a + sqrt(-a)*x), result = log(a + sqrt(-a)*x)/sqrt(-a), integration_var = x, mistery_val = 1),
#     (integrand = 1/(a^2 + sqrt(-a)*x), result = log(a^2 + sqrt(-a)*x)/sqrt(-a), integration_var = x, mistery_val = 1),
#     (integrand = 1/(a^3 + sqrt(-a)*x), result = log(a^3 + sqrt(-a)*x)/sqrt(-a), integration_var = x, mistery_val = 1),
#     (integrand = 1/(1/a + sqrt(-a)*x), result = log(1 - (-a)^(3//2)*x)/sqrt(-a), integration_var = x, mistery_val = 1),
#     (integrand = 1/(1/a^2 + sqrt(-a)*x), result = log(1 + (-a)^(5//2)*x)/sqrt(-a), integration_var = x, mistery_val = 1),
# 
# # Integrands of the form 1/(x^m*(a+b*x)) where m>0 is an integer and a^2=1
#     (integrand = 1/(x*(1 + b*x)), result = log(x) - log(1 + b*x), integration_var = x, mistery_val = 3),
#     (integrand = 1/(x*(-1 + b*x)), result = -log(x) + log(1 - b*x), integration_var = x, mistery_val = 3),
#     (integrand = 1/(x^2*(1 + b*x)), result = -(1/x) - b*log(x) + b*log(1 + b*x), integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^2*(-1 + b*x)), result = 1/x - b*log(x) + b*log(1 - b*x), integration_var = x, mistery_val = 2),
# 
# # The b*Log[x] terms cannot cancel if ArcTanh[1+2*b*x] is returned instead of Logs!
#     (integrand = b/x + 1/(x^2*(1 + b*x)), result = -(1/x) + b*log(1 + b*x), integration_var = x, mistery_val = 3),
# 
# 
# # ::Subsection::Closed::
# # Integrands of the form x^m (a+b x)^(n/2)
# 
# 
# # ::Subsubsection::Closed::
# # n>0
# 
# 
#     (integrand = x^3*sqrt(a + b*x), result = -((2*a^3*(a + b*x)^(3//2))/(3*b^4)) + (6*a^2*(a + b*x)^(5//2))/(5*b^4) - (6*a*(a + b*x)^(7//2))/(7*b^4) + (2*(a + b*x)^(9//2))/(9*b^4), integration_var = x, mistery_val = 2),
#     (integrand = x^2*sqrt(a + b*x), result = (2*a^2*(a + b*x)^(3//2))/(3*b^3) - (4*a*(a + b*x)^(5//2))/(5*b^3) + (2*(a + b*x)^(7//2))/(7*b^3), integration_var = x, mistery_val = 2),
#     (integrand = x^1*sqrt(a + b*x), result = -((2*a*(a + b*x)^(3//2))/(3*b^2)) + (2*(a + b*x)^(5//2))/(5*b^2), integration_var = x, mistery_val = 2),
#     (integrand = x^0*sqrt(a + b*x), result = (2*(a + b*x)^(3//2))/(3*b), integration_var = x, mistery_val = 1),
#     (integrand = sqrt(a + b*x)/x^1, result = 2*sqrt(a + b*x) - 2*sqrt(a)*atanh(sqrt(a + b*x)/sqrt(a)), integration_var = x, mistery_val = 3),
#     (integrand = sqrt(a + b*x)/x^2, result = -(sqrt(a + b*x)/x) - (b*atanh(sqrt(a + b*x)/sqrt(a)))/sqrt(a), integration_var = x, mistery_val = 3),
#     (integrand = sqrt(a + b*x)/x^3, result = -(sqrt(a + b*x)/(2*x^2)) - (b*sqrt(a + b*x))/(4*a*x) + (b^2*atanh(sqrt(a + b*x)/sqrt(a)))/(4*a^(3//2)), integration_var = x, mistery_val = 4),
#     (integrand = sqrt(a + b*x)/x^4, result = -(sqrt(a + b*x)/(3*x^3)) - (b*sqrt(a + b*x))/(12*a*x^2) + (b^2*sqrt(a + b*x))/(8*a^2*x) - (b^3*atanh(sqrt(a + b*x)/sqrt(a)))/(8*a^(5//2)), integration_var = x, mistery_val = 5),
# 
# 
#     (integrand = x^3*(a + b*x)^(3//2), result = -((2*a^3*(a + b*x)^(5//2))/(5*b^4)) + (6*a^2*(a + b*x)^(7//2))/(7*b^4) - (2*a*(a + b*x)^(9//2))/(3*b^4) + (2*(a + b*x)^(11//2))/(11*b^4), integration_var = x, mistery_val = 2),
#     (integrand = x^2*(a + b*x)^(3//2), result = (2*a^2*(a + b*x)^(5//2))/(5*b^3) - (4*a*(a + b*x)^(7//2))/(7*b^3) + (2*(a + b*x)^(9//2))/(9*b^3), integration_var = x, mistery_val = 2),
#     (integrand = x^1*(a + b*x)^(3//2), result = -((2*a*(a + b*x)^(5//2))/(5*b^2)) + (2*(a + b*x)^(7//2))/(7*b^2), integration_var = x, mistery_val = 2),
#     (integrand = x^0*(a + b*x)^(3//2), result = (2*(a + b*x)^(5//2))/(5*b), integration_var = x, mistery_val = 1),
#     (integrand = (a + b*x)^(3//2)/x^1, result = 2*a*sqrt(a + b*x) + (2//3)*(a + b*x)^(3//2) - 2*a^(3//2)*atanh(sqrt(a + b*x)/sqrt(a)), integration_var = x, mistery_val = 4),
#     (integrand = (a + b*x)^(3//2)/x^2, result = 3*b*sqrt(a + b*x) - (a + b*x)^(3//2)/x - 3*sqrt(a)*b*atanh(sqrt(a + b*x)/sqrt(a)), integration_var = x, mistery_val = 4),
#     (integrand = (a + b*x)^(3//2)/x^3, result = -((3*b*sqrt(a + b*x))/(4*x)) - (a + b*x)^(3//2)/(2*x^2) - (3*b^2*atanh(sqrt(a + b*x)/sqrt(a)))/(4*sqrt(a)), integration_var = x, mistery_val = 4),
#     (integrand = (a + b*x)^(3//2)/x^4, result = -((b*sqrt(a + b*x))/(4*x^2)) - (b^2*sqrt(a + b*x))/(8*a*x) - (a + b*x)^(3//2)/(3*x^3) + (b^3*atanh(sqrt(a + b*x)/sqrt(a)))/(8*a^(3//2)), integration_var = x, mistery_val = 5),
# 
# 
#     (integrand = x^3*(a + b*x)^(5//2), result = -((2*a^3*(a + b*x)^(7//2))/(7*b^4)) + (2*a^2*(a + b*x)^(9//2))/(3*b^4) - (6*a*(a + b*x)^(11//2))/(11*b^4) + (2*(a + b*x)^(13//2))/(13*b^4), integration_var = x, mistery_val = 2),
#     (integrand = x^2*(a + b*x)^(5//2), result = (2*a^2*(a + b*x)^(7//2))/(7*b^3) - (4*a*(a + b*x)^(9//2))/(9*b^3) + (2*(a + b*x)^(11//2))/(11*b^3), integration_var = x, mistery_val = 2),
#     (integrand = x^1*(a + b*x)^(5//2), result = -((2*a*(a + b*x)^(7//2))/(7*b^2)) + (2*(a + b*x)^(9//2))/(9*b^2), integration_var = x, mistery_val = 2),
#     (integrand = x^0*(a + b*x)^(5//2), result = (2*(a + b*x)^(7//2))/(7*b), integration_var = x, mistery_val = 1),
#     (integrand = (a + b*x)^(5//2)/x^1, result = 2*a^2*sqrt(a + b*x) + (2//3)*a*(a + b*x)^(3//2) + (2//5)*(a + b*x)^(5//2) - 2*a^(5//2)*atanh(sqrt(a + b*x)/sqrt(a)), integration_var = x, mistery_val = 5),
#     (integrand = (a + b*x)^(5//2)/x^2, result = 5*a*b*sqrt(a + b*x) + (5//3)*b*(a + b*x)^(3//2) - (a + b*x)^(5//2)/x - 5*a^(3//2)*b*atanh(sqrt(a + b*x)/sqrt(a)), integration_var = x, mistery_val = 5),
#     (integrand = (a + b*x)^(5//2)/x^3, result = (15//4)*b^2*sqrt(a + b*x) - (5*b*(a + b*x)^(3//2))/(4*x) - (a + b*x)^(5//2)/(2*x^2) - (15//4)*sqrt(a)*b^2*atanh(sqrt(a + b*x)/sqrt(a)), integration_var = x, mistery_val = 5),
#     (integrand = (a + b*x)^(5//2)/x^4, result = -((5*b^2*sqrt(a + b*x))/(8*x)) - (5*b*(a + b*x)^(3//2))/(12*x^2) - (a + b*x)^(5//2)/(3*x^3) - (5*b^3*atanh(sqrt(a + b*x)/sqrt(a)))/(8*sqrt(a)), integration_var = x, mistery_val = 5),
#     (integrand = (a + b*x)^(5//2)/x^5, result = -((5*b^2*sqrt(a + b*x))/(32*x^2)) - (5*b^3*sqrt(a + b*x))/(64*a*x) - (5*b*(a + b*x)^(3//2))/(24*x^3) - (a + b*x)^(5//2)/(4*x^4) + (5*b^4*atanh(sqrt(a + b*x)/sqrt(a)))/(64*a^(3//2)), integration_var = x, mistery_val = 6),
# 
# 
#     (integrand = x^7*(a + b*x)^(9//2), result = -((2*a^7*(a + b*x)^(11//2))/(11*b^8)) + (14*a^6*(a + b*x)^(13//2))/(13*b^8) - (14*a^5*(a + b*x)^(15//2))/(5*b^8) + (70*a^4*(a + b*x)^(17//2))/(17*b^8) - (70*a^3*(a + b*x)^(19//2))/(19*b^8) + (2*a^2*(a + b*x)^(21//2))/b^8 - (14*a*(a + b*x)^(23//2))/(23*b^8) + (2*(a + b*x)^(25//2))/(25*b^8), integration_var = x, mistery_val = 2),
#     (integrand = x^6*(a + b*x)^(9//2), result = (2*a^6*(a + b*x)^(11//2))/(11*b^7) - (12*a^5*(a + b*x)^(13//2))/(13*b^7) + (2*a^4*(a + b*x)^(15//2))/b^7 - (40*a^3*(a + b*x)^(17//2))/(17*b^7) + (30*a^2*(a + b*x)^(19//2))/(19*b^7) - (4*a*(a + b*x)^(21//2))/(7*b^7) + (2*(a + b*x)^(23//2))/(23*b^7), integration_var = x, mistery_val = 2),
#     (integrand = x^5*(a + b*x)^(9//2), result = -((2*a^5*(a + b*x)^(11//2))/(11*b^6)) + (10*a^4*(a + b*x)^(13//2))/(13*b^6) - (4*a^3*(a + b*x)^(15//2))/(3*b^6) + (20*a^2*(a + b*x)^(17//2))/(17*b^6) - (10*a*(a + b*x)^(19//2))/(19*b^6) + (2*(a + b*x)^(21//2))/(21*b^6), integration_var = x, mistery_val = 2),
#     (integrand = x^4*(a + b*x)^(9//2), result = (2*a^4*(a + b*x)^(11//2))/(11*b^5) - (8*a^3*(a + b*x)^(13//2))/(13*b^5) + (4*a^2*(a + b*x)^(15//2))/(5*b^5) - (8*a*(a + b*x)^(17//2))/(17*b^5) + (2*(a + b*x)^(19//2))/(19*b^5), integration_var = x, mistery_val = 2),
#     (integrand = x^3*(a + b*x)^(9//2), result = -((2*a^3*(a + b*x)^(11//2))/(11*b^4)) + (6*a^2*(a + b*x)^(13//2))/(13*b^4) - (2*a*(a + b*x)^(15//2))/(5*b^4) + (2*(a + b*x)^(17//2))/(17*b^4), integration_var = x, mistery_val = 2),
#     (integrand = x^2*(a + b*x)^(9//2), result = (2*a^2*(a + b*x)^(11//2))/(11*b^3) - (4*a*(a + b*x)^(13//2))/(13*b^3) + (2*(a + b*x)^(15//2))/(15*b^3), integration_var = x, mistery_val = 2),
#     (integrand = x^1*(a + b*x)^(9//2), result = -((2*a*(a + b*x)^(11//2))/(11*b^2)) + (2*(a + b*x)^(13//2))/(13*b^2), integration_var = x, mistery_val = 2),
#     (integrand = x^0*(a + b*x)^(9//2), result = (2*(a + b*x)^(11//2))/(11*b), integration_var = x, mistery_val = 1),
#     (integrand = (a + b*x)^(9//2)/x^1, result = 2*a^4*sqrt(a + b*x) + (2//3)*a^3*(a + b*x)^(3//2) + (2//5)*a^2*(a + b*x)^(5//2) + (2//7)*a*(a + b*x)^(7//2) + (2//9)*(a + b*x)^(9//2) - 2*a^(9//2)*atanh(sqrt(a + b*x)/sqrt(a)), integration_var = x, mistery_val = 7),
#     (integrand = (a + b*x)^(9//2)/x^2, result = 9*a^3*b*sqrt(a + b*x) + 3*a^2*b*(a + b*x)^(3//2) + (9//5)*a*b*(a + b*x)^(5//2) + (9//7)*b*(a + b*x)^(7//2) - (a + b*x)^(9//2)/x - 9*a^(7//2)*b*atanh(sqrt(a + b*x)/sqrt(a)), integration_var = x, mistery_val = 7),
#     (integrand = (a + b*x)^(9//2)/x^3, result = (63//4)*a^2*b^2*sqrt(a + b*x) + (21//4)*a*b^2*(a + b*x)^(3//2) + (63//20)*b^2*(a + b*x)^(5//2) - (9*b*(a + b*x)^(7//2))/(4*x) - (a + b*x)^(9//2)/(2*x^2) - (63//4)*a^(5//2)*b^2*atanh(sqrt(a + b*x)/sqrt(a)), integration_var = x, mistery_val = 7),
#     (integrand = (a + b*x)^(9//2)/x^4, result = (105//8)*a*b^3*sqrt(a + b*x) + (35//8)*b^3*(a + b*x)^(3//2) - (21*b^2*(a + b*x)^(5//2))/(8*x) - (3*b*(a + b*x)^(7//2))/(4*x^2) - (a + b*x)^(9//2)/(3*x^3) - (105//8)*a^(3//2)*b^3*atanh(sqrt(a + b*x)/sqrt(a)), integration_var = x, mistery_val = 7),
#     (integrand = (a + b*x)^(9//2)/x^5, result = (315//64)*b^4*sqrt(a + b*x) - (105*b^3*(a + b*x)^(3//2))/(64*x) - (21*b^2*(a + b*x)^(5//2))/(32*x^2) - (3*b*(a + b*x)^(7//2))/(8*x^3) - (a + b*x)^(9//2)/(4*x^4) - (315//64)*sqrt(a)*b^4*atanh(sqrt(a + b*x)/sqrt(a)), integration_var = x, mistery_val = 7),
#     (integrand = (a + b*x)^(9//2)/x^6, result = -((63*b^4*sqrt(a + b*x))/(128*x)) - (21*b^3*(a + b*x)^(3//2))/(64*x^2) - (21*b^2*(a + b*x)^(5//2))/(80*x^3) - (9*b*(a + b*x)^(7//2))/(40*x^4) - (a + b*x)^(9//2)/(5*x^5) - (63*b^5*atanh(sqrt(a + b*x)/sqrt(a)))/(128*sqrt(a)), integration_var = x, mistery_val = 7),
#     (integrand = (a + b*x)^(9//2)/x^7, result = -((21*b^4*sqrt(a + b*x))/(256*x^2)) - (21*b^5*sqrt(a + b*x))/(512*a*x) - (7*b^3*(a + b*x)^(3//2))/(64*x^3) - (21*b^2*(a + b*x)^(5//2))/(160*x^4) - (3*b*(a + b*x)^(7//2))/(20*x^5) - (a + b*x)^(9//2)/(6*x^6) + (21*b^6*atanh(sqrt(a + b*x)/sqrt(a)))/(512*a^(3//2)), integration_var = x, mistery_val = 8),
#     (integrand = (a + b*x)^(9//2)/x^8, result = -((3*b^4*sqrt(a + b*x))/(128*x^3)) - (3*b^5*sqrt(a + b*x))/(512*a*x^2) + (9*b^6*sqrt(a + b*x))/(1024*a^2*x) - (3*b^3*(a + b*x)^(3//2))/(64*x^4) - (3*b^2*(a + b*x)^(5//2))/(40*x^5) - (3*b*(a + b*x)^(7//2))/(28*x^6) - (a + b*x)^(9//2)/(7*x^7) - (9*b^7*atanh(sqrt(a + b*x)/sqrt(a)))/(1024*a^(5//2)), integration_var = x, mistery_val = 9),
# 
# 
#     (integrand = sqrt(-a + b*x)/x, result = 2*sqrt(-a + b*x) - 2*sqrt(a)*atan(sqrt(-a + b*x)/sqrt(a)), integration_var = x, mistery_val = 3),
#     (integrand = sqrt(-a + b*x)/x^2, result = -(sqrt(-a + b*x)/x) + (b*atan(sqrt(-a + b*x)/sqrt(a)))/sqrt(a), integration_var = x, mistery_val = 3),
#     (integrand = sqrt(-a + b*x)/x^3, result = -(sqrt(-a + b*x)/(2*x^2)) + (b*sqrt(-a + b*x))/(4*a*x) + (b^2*atan(sqrt(-a + b*x)/sqrt(a)))/(4*a^(3//2)), integration_var = x, mistery_val = 4),
# 
# 
#     (integrand = (-a + b*x)^(3//2)/x, result = -2*a*sqrt(-a + b*x) + (2//3)*(-a + b*x)^(3//2) + 2*a^(3//2)*atan(sqrt(-a + b*x)/sqrt(a)), integration_var = x, mistery_val = 4),
#     (integrand = (-a + b*x)^(3//2)/x^2, result = 3*b*sqrt(-a + b*x) - (-a + b*x)^(3//2)/x - 3*sqrt(a)*b*atan(sqrt(-a + b*x)/sqrt(a)), integration_var = x, mistery_val = 4),
#     (integrand = (-a + b*x)^(3//2)/x^3, result = -((3*b*sqrt(-a + b*x))/(4*x)) - (-a + b*x)^(3//2)/(2*x^2) + (3*b^2*atan(sqrt(-a + b*x)/sqrt(a)))/(4*sqrt(a)), integration_var = x, mistery_val = 4),
# 
# 
#     (integrand = (-a + b*x)^(5//2)/x, result = 2*a^2*sqrt(-a + b*x) - (2//3)*a*(-a + b*x)^(3//2) + (2//5)*(-a + b*x)^(5//2) - 2*a^(5//2)*atan(sqrt(-a + b*x)/sqrt(a)), integration_var = x, mistery_val = 5),
#     (integrand = (-a + b*x)^(5//2)/x^2, result = -5*a*b*sqrt(-a + b*x) + (5//3)*b*(-a + b*x)^(3//2) - (-a + b*x)^(5//2)/x + 5*a^(3//2)*b*atan(sqrt(-a + b*x)/sqrt(a)), integration_var = x, mistery_val = 5),
#     (integrand = (-a + b*x)^(5//2)/x^3, result = (15//4)*b^2*sqrt(-a + b*x) - (5*b*(-a + b*x)^(3//2))/(4*x) - (-a + b*x)^(5//2)/(2*x^2) - (15//4)*sqrt(a)*b^2*atan(sqrt(-a + b*x)/sqrt(a)), integration_var = x, mistery_val = 5),
# 
# 
# # ::Subsubsection::Closed::
# # n<0
# 
# 
#     (integrand = x^4/sqrt(a + b*x), result = (2*a^4*sqrt(a + b*x))/b^5 - (8*a^3*(a + b*x)^(3//2))/(3*b^5) + (12*a^2*(a + b*x)^(5//2))/(5*b^5) - (8*a*(a + b*x)^(7//2))/(7*b^5) + (2*(a + b*x)^(9//2))/(9*b^5), integration_var = x, mistery_val = 2),
#     (integrand = x^3/sqrt(a + b*x), result = -((2*a^3*sqrt(a + b*x))/b^4) + (2*a^2*(a + b*x)^(3//2))/b^4 - (6*a*(a + b*x)^(5//2))/(5*b^4) + (2*(a + b*x)^(7//2))/(7*b^4), integration_var = x, mistery_val = 2),
#     (integrand = x^2/sqrt(a + b*x), result = (2*a^2*sqrt(a + b*x))/b^3 - (4*a*(a + b*x)^(3//2))/(3*b^3) + (2*(a + b*x)^(5//2))/(5*b^3), integration_var = x, mistery_val = 2),
#     (integrand = x^1/sqrt(a + b*x), result = -((2*a*sqrt(a + b*x))/b^2) + (2*(a + b*x)^(3//2))/(3*b^2), integration_var = x, mistery_val = 2),
#     (integrand = x^0/sqrt(a + b*x), result = (2*sqrt(a + b*x))/b, integration_var = x, mistery_val = 1),
#     (integrand = 1/(x^1*sqrt(a + b*x)), result = (-2*atanh(sqrt(a + b*x)/sqrt(a)))/sqrt(a), integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^2*sqrt(a + b*x)), result = -(sqrt(a + b*x)/(a*x)) + (b*atanh(sqrt(a + b*x)/sqrt(a)))/a^(3//2), integration_var = x, mistery_val = 3),
#     (integrand = 1/(x^3*sqrt(a + b*x)), result = -(sqrt(a + b*x)/(2*a*x^2)) + (3*b*sqrt(a + b*x))/(4*a^2*x) - (3*b^2*atanh(sqrt(a + b*x)/sqrt(a)))/(4*a^(5//2)), integration_var = x, mistery_val = 4),
#     (integrand = 1/(x^4*sqrt(a + b*x)), result = -(sqrt(a + b*x)/(3*a*x^3)) + (5*b*sqrt(a + b*x))/(12*a^2*x^2) - (5*b^2*sqrt(a + b*x))/(8*a^3*x) + (5*b^3*atanh(sqrt(a + b*x)/sqrt(a)))/(8*a^(7//2)), integration_var = x, mistery_val = 5),
# 
# 
#     (integrand = x^4/(a + b*x)^(3//2), result = -((2*a^4)/(b^5*sqrt(a + b*x))) - (8*a^3*sqrt(a + b*x))/b^5 + (4*a^2*(a + b*x)^(3//2))/b^5 - (8*a*(a + b*x)^(5//2))/(5*b^5) + (2*(a + b*x)^(7//2))/(7*b^5), integration_var = x, mistery_val = 2),
#     (integrand = x^3/(a + b*x)^(3//2), result = (2*a^3)/(b^4*sqrt(a + b*x)) + (6*a^2*sqrt(a + b*x))/b^4 - (2*a*(a + b*x)^(3//2))/b^4 + (2*(a + b*x)^(5//2))/(5*b^4), integration_var = x, mistery_val = 2),
#     (integrand = x^2/(a + b*x)^(3//2), result = -((2*a^2)/(b^3*sqrt(a + b*x))) - (4*a*sqrt(a + b*x))/b^3 + (2*(a + b*x)^(3//2))/(3*b^3), integration_var = x, mistery_val = 2),
#     (integrand = x^1/(a + b*x)^(3//2), result = (2*a)/(b^2*sqrt(a + b*x)) + (2*sqrt(a + b*x))/b^2, integration_var = x, mistery_val = 2),
#     (integrand = x^0/(a + b*x)^(3//2), result = -(2/(b*sqrt(a + b*x))), integration_var = x, mistery_val = 1),
#     (integrand = 1/(x^1*(a + b*x)^(3//2)), result = 2/(a*sqrt(a + b*x)) - (2*atanh(sqrt(a + b*x)/sqrt(a)))/a^(3//2), integration_var = x, mistery_val = 3),
#     (integrand = 1/(x^2*(a + b*x)^(3//2)), result = -((3*b)/(a^2*sqrt(a + b*x))) - 1/(a*x*sqrt(a + b*x)) + (3*b*atanh(sqrt(a + b*x)/sqrt(a)))/a^(5//2), integration_var = x, mistery_val = 4),
#     (integrand = 1/(x^3*(a + b*x)^(3//2)), result = (15*b^2)/(4*a^3*sqrt(a + b*x)) - 1/(2*a*x^2*sqrt(a + b*x)) + (5*b)/(4*a^2*x*sqrt(a + b*x)) - (15*b^2*atanh(sqrt(a + b*x)/sqrt(a)))/(4*a^(7//2)), integration_var = x, mistery_val = 5),
# 
# 
#     (integrand = x^4/(a + b*x)^(5//2), result = -((2*a^4)/(3*b^5*(a + b*x)^(3//2))) + (8*a^3)/(b^5*sqrt(a + b*x)) + (12*a^2*sqrt(a + b*x))/b^5 - (8*a*(a + b*x)^(3//2))/(3*b^5) + (2*(a + b*x)^(5//2))/(5*b^5), integration_var = x, mistery_val = 2),
#     (integrand = x^3/(a + b*x)^(5//2), result = (2*a^3)/(3*b^4*(a + b*x)^(3//2)) - (6*a^2)/(b^4*sqrt(a + b*x)) - (6*a*sqrt(a + b*x))/b^4 + (2*(a + b*x)^(3//2))/(3*b^4), integration_var = x, mistery_val = 2),
#     (integrand = x^2/(a + b*x)^(5//2), result = -((2*a^2)/(3*b^3*(a + b*x)^(3//2))) + (4*a)/(b^3*sqrt(a + b*x)) + (2*sqrt(a + b*x))/b^3, integration_var = x, mistery_val = 2),
#     (integrand = x^1/(a + b*x)^(5//2), result = (2*a)/(3*b^2*(a + b*x)^(3//2)) - 2/(b^2*sqrt(a + b*x)), integration_var = x, mistery_val = 2),
#     (integrand = x^0/(a + b*x)^(5//2), result = -(2/(3*b*(a + b*x)^(3//2))), integration_var = x, mistery_val = 1),
#     (integrand = 1/(x^1*(a + b*x)^(5//2)), result = 2/(3*a*(a + b*x)^(3//2)) + 2/(a^2*sqrt(a + b*x)) - (2*atanh(sqrt(a + b*x)/sqrt(a)))/a^(5//2), integration_var = x, mistery_val = 4),
#     (integrand = 1/(x^2*(a + b*x)^(5//2)), result = -((5*b)/(3*a^2*(a + b*x)^(3//2))) - 1/(a*x*(a + b*x)^(3//2)) - (5*b)/(a^3*sqrt(a + b*x)) + (5*b*atanh(sqrt(a + b*x)/sqrt(a)))/a^(7//2), integration_var = x, mistery_val = 5),
#     (integrand = 1/(x^3*(a + b*x)^(5//2)), result = (35*b^2)/(12*a^3*(a + b*x)^(3//2)) - 1/(2*a*x^2*(a + b*x)^(3//2)) + (7*b)/(4*a^2*x*(a + b*x)^(3//2)) + (35*b^2)/(4*a^4*sqrt(a + b*x)) - (35*b^2*atanh(sqrt(a + b*x)/sqrt(a)))/(4*a^(9//2)), integration_var = x, mistery_val = 6),
# 
# 
#     (integrand = 1/(x^1*sqrt(-a + b*x)), result = (2*atan(sqrt(-a + b*x)/sqrt(a)))/sqrt(a), integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^2*sqrt(-a + b*x)), result = sqrt(-a + b*x)/(a*x) + (b*atan(sqrt(-a + b*x)/sqrt(a)))/a^(3//2), integration_var = x, mistery_val = 3),
#     (integrand = 1/(x^3*sqrt(-a + b*x)), result = sqrt(-a + b*x)/(2*a*x^2) + (3*b*sqrt(-a + b*x))/(4*a^2*x) + (3*b^2*atan(sqrt(-a + b*x)/sqrt(a)))/(4*a^(5//2)), integration_var = x, mistery_val = 4),
# 
# 
#     (integrand = 1/(x^1*(-a + b*x)^(3//2)), result = -2/(a*sqrt(-a + b*x)) - (2*atan(sqrt(-a + b*x)/sqrt(a)))/a^(3//2), integration_var = x, mistery_val = 3),
#     (integrand = 1/(x^2*(-a + b*x)^(3//2)), result = -((3*b)/(a^2*sqrt(-a + b*x))) + 1/(a*x*sqrt(-a + b*x)) - (3*b*atan(sqrt(-a + b*x)/sqrt(a)))/a^(5//2), integration_var = x, mistery_val = 4),
#     (integrand = 1/(x^3*(-a + b*x)^(3//2)), result = -((15*b^2)/(4*a^3*sqrt(-a + b*x))) + 1/(2*a*x^2*sqrt(-a + b*x)) + (5*b)/(4*a^2*x*sqrt(-a + b*x)) - (15*b^2*atan(sqrt(-a + b*x)/sqrt(a)))/(4*a^(7//2)), integration_var = x, mistery_val = 5),
# 
# 
#     (integrand = 1/(x^1*(-a + b*x)^(5//2)), result = -(2/(3*a*(-a + b*x)^(3//2))) + 2/(a^2*sqrt(-a + b*x)) + (2*atan(sqrt(-a + b*x)/sqrt(a)))/a^(5//2), integration_var = x, mistery_val = 4),
#     (integrand = 1/(x^2*(-a + b*x)^(5//2)), result = -((5*b)/(3*a^2*(-a + b*x)^(3//2))) + 1/(a*x*(-a + b*x)^(3//2)) + (5*b)/(a^3*sqrt(-a + b*x)) + (5*b*atan(sqrt(-a + b*x)/sqrt(a)))/a^(7//2), integration_var = x, mistery_val = 5),
#     (integrand = 1/(x^3*(-a + b*x)^(5//2)), result = -((35*b^2)/(12*a^3*(-a + b*x)^(3//2))) + 1/(2*a*x^2*(-a + b*x)^(3//2)) + (7*b)/(4*a^2*x*(-a + b*x)^(3//2)) + (35*b^2)/(4*a^4*sqrt(-a + b*x)) + (35*b^2*atan(sqrt(-a + b*x)/sqrt(a)))/(4*a^(9//2)), integration_var = x, mistery_val = 6),
# 
# 
#     (integrand = (x^(-1 + m)*(2*a*m + b*(-1 + 2*m)*x))/(2*(a + b*x)^(3//2)), result = x^m/sqrt(a + b*x), integration_var = x, mistery_val = 2),
#     (integrand = -((b*x^m)/(2*(a + b*x)^(3//2))) + (m*x^(-1 + m))/sqrt(a + b*x), result = x^m/sqrt(a + b*x), integration_var = x, mistery_val = -5),
# 
# 
#     (integrand = x^((1 - n)/2 + (1//2)*(-3 + n))/sqrt(a + b*x), result = -((2*atanh(sqrt(a + b*x)/sqrt(a)))/sqrt(a)), integration_var = x, mistery_val = 3),
# 
# 
# # ::Subsection::Closed::
# # Integrands of the form x^m (a+b x)^(n/3)
# 
# 
# # ::Subsubsection::Closed::
# # n>0
# 
# 
#     (integrand = x^3*(a + b*x)^(1//3), result = (-3*a^3*(a + b*x)^(4//3))/(4*b^4) + (9*a^2*(a + b*x)^(7//3))/(7*b^4) - (9*a*(a + b*x)^(10//3))/(10*b^4) + (3*(a + b*x)^(13//3))/(13*b^4), integration_var = x, mistery_val = 2),
#     (integrand = x^2*(a + b*x)^(1//3), result = (3*a^2*(a + b*x)^(4//3))/(4*b^3) - (6*a*(a + b*x)^(7//3))/(7*b^3) + (3*(a + b*x)^(10//3))/(10*b^3), integration_var = x, mistery_val = 2),
#     (integrand = x*(a + b*x)^(1//3), result = (-3*a*(a + b*x)^(4//3))/(4*b^2) + (3*(a + b*x)^(7//3))/(7*b^2), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^(1//3), result = (3*(a + b*x)^(4//3))/(4*b), integration_var = x, mistery_val = 1),
#     (integrand = (a + b*x)^(1//3)/x, result = 3*(a + b*x)^(1//3) - sqrt(3)*a^(1//3)*atan((a^(1//3) + 2*(a + b*x)^(1//3))/(sqrt(3)*a^(1//3))) - (1//2)*a^(1//3)*log(x) + (3//2)*a^(1//3)*log(a^(1//3) - (a + b*x)^(1//3)), integration_var = x, mistery_val = 5),
#     (integrand = (a + b*x)^(1//3)/x^2, result = -((a + b*x)^(1//3)/x) - (b*atan((a^(1//3) + 2*(a + b*x)^(1//3))/(sqrt(3)*a^(1//3))))/(sqrt(3)*a^(2//3)) - (b*log(x))/(6*a^(2//3)) + (b*log(a^(1//3) - (a + b*x)^(1//3)))/(2*a^(2//3)), integration_var = x, mistery_val = 5),
#     (integrand = (a + b*x)^(1//3)/x^3, result = -((a + b*x)^(1//3)/(2*x^2)) - (b*(a + b*x)^(1//3))/(6*a*x) + (b^2*atan((a^(1//3) + 2*(a + b*x)^(1//3))/(sqrt(3)*a^(1//3))))/(3*sqrt(3)*a^(5//3)) + (b^2*log(x))/(18*a^(5//3)) - (b^2*log(a^(1//3) - (a + b*x)^(1//3)))/(6*a^(5//3)), integration_var = x, mistery_val = 6),
# 
# 
#     (integrand = x^3*(a + b*x)^(2//3), result = (-3*a^3*(a + b*x)^(5//3))/(5*b^4) + (9*a^2*(a + b*x)^(8//3))/(8*b^4) - (9*a*(a + b*x)^(11//3))/(11*b^4) + (3*(a + b*x)^(14//3))/(14*b^4), integration_var = x, mistery_val = 2),
#     (integrand = x^2*(a + b*x)^(2//3), result = (3*a^2*(a + b*x)^(5//3))/(5*b^3) - (3*a*(a + b*x)^(8//3))/(4*b^3) + (3*(a + b*x)^(11//3))/(11*b^3), integration_var = x, mistery_val = 2),
#     (integrand = x*(a + b*x)^(2//3), result = (-3*a*(a + b*x)^(5//3))/(5*b^2) + (3*(a + b*x)^(8//3))/(8*b^2), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^(2//3), result = (3*(a + b*x)^(5//3))/(5*b), integration_var = x, mistery_val = 1),
#     (integrand = (a + b*x)^(2//3)/x, result = (3//2)*(a + b*x)^(2//3) + sqrt(3)*a^(2//3)*atan((a^(1//3) + 2*(a + b*x)^(1//3))/(sqrt(3)*a^(1//3))) - (1//2)*a^(2//3)*log(x) + (3//2)*a^(2//3)*log(a^(1//3) - (a + b*x)^(1//3)), integration_var = x, mistery_val = 5),
#     (integrand = (a + b*x)^(2//3)/x^2, result = -((a + b*x)^(2//3)/x) + (2*b*atan((a^(1//3) + 2*(a + b*x)^(1//3))/(sqrt(3)*a^(1//3))))/(sqrt(3)*a^(1//3)) - (b*log(x))/(3*a^(1//3)) + (b*log(a^(1//3) - (a + b*x)^(1//3)))/a^(1//3), integration_var = x, mistery_val = 5),
#     (integrand = (a + b*x)^(2//3)/x^3, result = -((a + b*x)^(2//3)/(2*x^2)) - (b*(a + b*x)^(2//3))/(3*a*x) - (b^2*atan((a^(1//3) + 2*(a + b*x)^(1//3))/(sqrt(3)*a^(1//3))))/(3*sqrt(3)*a^(4//3)) + (b^2*log(x))/(18*a^(4//3)) - (b^2*log(a^(1//3) - (a + b*x)^(1//3)))/(6*a^(4//3)), integration_var = x, mistery_val = 6),
# 
# 
#     (integrand = x^3*(a + b*x)^(4//3), result = (-3*a^3*(a + b*x)^(7//3))/(7*b^4) + (9*a^2*(a + b*x)^(10//3))/(10*b^4) - (9*a*(a + b*x)^(13//3))/(13*b^4) + (3*(a + b*x)^(16//3))/(16*b^4), integration_var = x, mistery_val = 2),
#     (integrand = x^2*(a + b*x)^(4//3), result = (3*a^2*(a + b*x)^(7//3))/(7*b^3) - (3*a*(a + b*x)^(10//3))/(5*b^3) + (3*(a + b*x)^(13//3))/(13*b^3), integration_var = x, mistery_val = 2),
#     (integrand = x*(a + b*x)^(4//3), result = (-3*a*(a + b*x)^(7//3))/(7*b^2) + (3*(a + b*x)^(10//3))/(10*b^2), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^(4//3), result = (3*(a + b*x)^(7//3))/(7*b), integration_var = x, mistery_val = 1),
#     (integrand = (a + b*x)^(4//3)/x, result = 3*a*(a + b*x)^(1//3) + (3//4)*(a + b*x)^(4//3) - sqrt(3)*a^(4//3)*atan((a^(1//3) + 2*(a + b*x)^(1//3))/(sqrt(3)*a^(1//3))) - (1//2)*a^(4//3)*log(x) + (3//2)*a^(4//3)*log(a^(1//3) - (a + b*x)^(1//3)), integration_var = x, mistery_val = 6),
#     (integrand = (a + b*x)^(4//3)/x^2, result = 4*b*(a + b*x)^(1//3) - (a + b*x)^(4//3)/x - (4*a^(1//3)*b*atan((a^(1//3) + 2*(a + b*x)^(1//3))/(sqrt(3)*a^(1//3))))/sqrt(3) - (2//3)*a^(1//3)*b*log(x) + 2*a^(1//3)*b*log(a^(1//3) - (a + b*x)^(1//3)), integration_var = x, mistery_val = 6),
#     (integrand = (a + b*x)^(4//3)/x^3, result = -((2*b*(a + b*x)^(1//3))/(3*x)) - (a + b*x)^(4//3)/(2*x^2) - (2*b^2*atan((a^(1//3) + 2*(a + b*x)^(1//3))/(sqrt(3)*a^(1//3))))/(3*sqrt(3)*a^(2//3)) - (b^2*log(x))/(9*a^(2//3)) + (b^2*log(a^(1//3) - (a + b*x)^(1//3)))/(3*a^(2//3)), integration_var = x, mistery_val = 6),
# 
# 
# # ::Subsubsection::Closed::
# # n<0
# 
# 
#     (integrand = x^3/(a + b*x)^(1//3), result = (-3*a^3*(a + b*x)^(2//3))/(2*b^4) + (9*a^2*(a + b*x)^(5//3))/(5*b^4) - (9*a*(a + b*x)^(8//3))/(8*b^4) + (3*(a + b*x)^(11//3))/(11*b^4), integration_var = x, mistery_val = 2),
#     (integrand = x^2/(a + b*x)^(1//3), result = (3*a^2*(a + b*x)^(2//3))/(2*b^3) - (6*a*(a + b*x)^(5//3))/(5*b^3) + (3*(a + b*x)^(8//3))/(8*b^3), integration_var = x, mistery_val = 2),
#     (integrand = x/(a + b*x)^(1//3), result = (-3*a*(a + b*x)^(2//3))/(2*b^2) + (3*(a + b*x)^(5//3))/(5*b^2), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^(-1//3), result = (3*(a + b*x)^(2//3))/(2*b), integration_var = x, mistery_val = 1),
#     (integrand = 1/(x*(a + b*x)^(1//3)), result = (sqrt(3)*atan((a^(1//3) + 2*(a + b*x)^(1//3))/(sqrt(3)*a^(1//3))))/a^(1//3) - log(x)/(2*a^(1//3)) + (3*log(a^(1//3) - (a + b*x)^(1//3)))/(2*a^(1//3)), integration_var = x, mistery_val = 4),
#     (integrand = 1/(x^2*(a + b*x)^(1//3)), result = -((a + b*x)^(2//3)/(a*x)) - (b*atan((a^(1//3) + 2*(a + b*x)^(1//3))/(sqrt(3)*a^(1//3))))/(sqrt(3)*a^(4//3)) + (b*log(x))/(6*a^(4//3)) - (b*log(a^(1//3) - (a + b*x)^(1//3)))/(2*a^(4//3)), integration_var = x, mistery_val = 5),
#     (integrand = 1/(x^3*(a + b*x)^(1//3)), result = -((a + b*x)^(2//3)/(2*a*x^2)) + (2*b*(a + b*x)^(2//3))/(3*a^2*x) + (2*b^2*atan((a^(1//3) + 2*(a + b*x)^(1//3))/(sqrt(3)*a^(1//3))))/(3*sqrt(3)*a^(7//3)) - (b^2*log(x))/(9*a^(7//3)) + (b^2*log(a^(1//3) - (a + b*x)^(1//3)))/(3*a^(7//3)), integration_var = x, mistery_val = 6),
# 
#     (integrand = x^3/(-a + b*x)^(1//3), result = (3*a^3*(-a + b*x)^(2//3))/(2*b^4) + (9*a^2*(-a + b*x)^(5//3))/(5*b^4) + (9*a*(-a + b*x)^(8//3))/(8*b^4) + (3*(-a + b*x)^(11//3))/(11*b^4), integration_var = x, mistery_val = 2),
#     (integrand = x^2/(-a + b*x)^(1//3), result = (3*a^2*(-a + b*x)^(2//3))/(2*b^3) + (6*a*(-a + b*x)^(5//3))/(5*b^3) + (3*(-a + b*x)^(8//3))/(8*b^3), integration_var = x, mistery_val = 2),
#     (integrand = x/(-a + b*x)^(1//3), result = (3*a*(-a + b*x)^(2//3))/(2*b^2) + (3*(-a + b*x)^(5//3))/(5*b^2), integration_var = x, mistery_val = 2),
#     (integrand = (-a + b*x)^(-1//3), result = (3*(-a + b*x)^(2//3))/(2*b), integration_var = x, mistery_val = 1),
#     (integrand = 1/(x*(-a + b*x)^(1//3)), result = -((sqrt(3)*atan((a^(1//3) - 2*(-a + b*x)^(1//3))/(sqrt(3)*a^(1//3))))/a^(1//3)) + log(x)/(2*a^(1//3)) - (3*log(a^(1//3) + (-a + b*x)^(1//3)))/(2*a^(1//3)), integration_var = x, mistery_val = 4),
#     (integrand = 1/(x^2*(-a + b*x)^(1//3)), result = (-a + b*x)^(2//3)/(a*x) - (b*atan((a^(1//3) - 2*(-a + b*x)^(1//3))/(sqrt(3)*a^(1//3))))/(sqrt(3)*a^(4//3)) + (b*log(x))/(6*a^(4//3)) - (b*log(a^(1//3) + (-a + b*x)^(1//3)))/(2*a^(4//3)), integration_var = x, mistery_val = 5),
#     (integrand = 1/(x^3*(-a + b*x)^(1//3)), result = (-a + b*x)^(2//3)/(2*a*x^2) + (2*b*(-a + b*x)^(2//3))/(3*a^2*x) - (2*b^2*atan((a^(1//3) - 2*(-a + b*x)^(1//3))/(sqrt(3)*a^(1//3))))/(3*sqrt(3)*a^(7//3)) + (b^2*log(x))/(9*a^(7//3)) - (b^2*log(a^(1//3) + (-a + b*x)^(1//3)))/(3*a^(7//3)), integration_var = x, mistery_val = 6),
# 
# 
#     (integrand = x^3/(a + b*x)^(2//3), result = (-3*a^3*(a + b*x)^(1//3))/b^4 + (9*a^2*(a + b*x)^(4//3))/(4*b^4) - (9*a*(a + b*x)^(7//3))/(7*b^4) + (3*(a + b*x)^(10//3))/(10*b^4), integration_var = x, mistery_val = 2),
#     (integrand = x^2/(a + b*x)^(2//3), result = (3*a^2*(a + b*x)^(1//3))/b^3 - (3*a*(a + b*x)^(4//3))/(2*b^3) + (3*(a + b*x)^(7//3))/(7*b^3), integration_var = x, mistery_val = 2),
#     (integrand = x/(a + b*x)^(2//3), result = (-3*a*(a + b*x)^(1//3))/b^2 + (3*(a + b*x)^(4//3))/(4*b^2), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^(-2//3), result = (3*(a + b*x)^(1//3))/b, integration_var = x, mistery_val = 1),
#     (integrand = 1/(x*(a + b*x)^(2//3)), result = -((sqrt(3)*atan((a^(1//3) + 2*(a + b*x)^(1//3))/(sqrt(3)*a^(1//3))))/a^(2//3)) - log(x)/(2*a^(2//3)) + (3*log(a^(1//3) - (a + b*x)^(1//3)))/(2*a^(2//3)), integration_var = x, mistery_val = 4),
#     (integrand = 1/(x^2*(a + b*x)^(2//3)), result = -((a + b*x)^(1//3)/(a*x)) + (2*b*atan((a^(1//3) + 2*(a + b*x)^(1//3))/(sqrt(3)*a^(1//3))))/(sqrt(3)*a^(5//3)) + (b*log(x))/(3*a^(5//3)) - (b*log(a^(1//3) - (a + b*x)^(1//3)))/a^(5//3), integration_var = x, mistery_val = 5),
#     (integrand = 1/(x^3*(a + b*x)^(2//3)), result = -((a + b*x)^(1//3)/(2*a*x^2)) + (5*b*(a + b*x)^(1//3))/(6*a^2*x) - (5*b^2*atan((a^(1//3) + 2*(a + b*x)^(1//3))/(sqrt(3)*a^(1//3))))/(3*sqrt(3)*a^(8//3)) - (5*b^2*log(x))/(18*a^(8//3)) + (5*b^2*log(a^(1//3) - (a + b*x)^(1//3)))/(6*a^(8//3)), integration_var = x, mistery_val = 6),
# 
# 
#     (integrand = x^3/(a + b*x)^(4//3), result = (3*a^3)/(b^4*(a + b*x)^(1//3)) + (9*a^2*(a + b*x)^(2//3))/(2*b^4) - (9*a*(a + b*x)^(5//3))/(5*b^4) + (3*(a + b*x)^(8//3))/(8*b^4), integration_var = x, mistery_val = 2),
#     (integrand = x^2/(a + b*x)^(4//3), result = (-3*a^2)/(b^3*(a + b*x)^(1//3)) - (3*a*(a + b*x)^(2//3))/b^3 + (3*(a + b*x)^(5//3))/(5*b^3), integration_var = x, mistery_val = 2),
#     (integrand = x/(a + b*x)^(4//3), result = (3*a)/(b^2*(a + b*x)^(1//3)) + (3*(a + b*x)^(2//3))/(2*b^2), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^(-4//3), result = -3/(b*(a + b*x)^(1//3)), integration_var = x, mistery_val = 1),
#     (integrand = 1/(x*(a + b*x)^(4//3)), result = 3/(a*(a + b*x)^(1//3)) + (sqrt(3)*atan((a^(1//3) + 2*(a + b*x)^(1//3))/(sqrt(3)*a^(1//3))))/a^(4//3) - log(x)/(2*a^(4//3)) + (3*log(a^(1//3) - (a + b*x)^(1//3)))/(2*a^(4//3)), integration_var = x, mistery_val = 5),
#     (integrand = 1/(x^2*(a + b*x)^(4//3)), result = -((4*b)/(a^2*(a + b*x)^(1//3))) - 1/(a*x*(a + b*x)^(1//3)) - (4*b*atan((a^(1//3) + 2*(a + b*x)^(1//3))/(sqrt(3)*a^(1//3))))/(sqrt(3)*a^(7//3)) + (2*b*log(x))/(3*a^(7//3)) - (2*b*log(a^(1//3) - (a + b*x)^(1//3)))/a^(7//3), integration_var = x, mistery_val = 6),
#     (integrand = 1/(x^3*(a + b*x)^(4//3)), result = (14*b^2)/(3*a^3*(a + b*x)^(1//3)) - 1/(2*a*x^2*(a + b*x)^(1//3)) + (7*b)/(6*a^2*x*(a + b*x)^(1//3)) + (14*b^2*atan((a^(1//3) + 2*(a + b*x)^(1//3))/(sqrt(3)*a^(1//3))))/(3*sqrt(3)*a^(10//3)) - (7*b^2*log(x))/(9*a^(10//3)) + (7*b^2*log(a^(1//3) - (a + b*x)^(1//3)))/(3*a^(10//3)), integration_var = x, mistery_val = 7),
# 
# 
#     (integrand = 1/(x*(a^3 + b^3*x)^(1//3)), result = (sqrt(3)*atan((a + 2*(a^3 + b^3*x)^(1//3))/(sqrt(3)*a)))/a - log(x)/(2*a) + (3*log(a - (a^3 + b^3*x)^(1//3)))/(2*a), integration_var = x, mistery_val = 4),
#     (integrand = 1/(x*(a^3 - b^3*x)^(1//3)), result = (sqrt(3)*atan((a + 2*(a^3 - b^3*x)^(1//3))/(sqrt(3)*a)))/a - log(x)/(2*a) + (3*log(a - (a^3 - b^3*x)^(1//3)))/(2*a), integration_var = x, mistery_val = 4),
#     (integrand = 1/(x*(-a^3 + b^3*x)^(1//3)), result = -((sqrt(3)*atan((a - 2*(-a^3 + b^3*x)^(1//3))/(sqrt(3)*a)))/a) + log(x)/(2*a) - (3*log(a + (-a^3 + b^3*x)^(1//3)))/(2*a), integration_var = x, mistery_val = 4),
#     (integrand = 1/(x*(-a^3 - b^3*x)^(1//3)), result = -((sqrt(3)*atan((a - 2*(-a^3 - b^3*x)^(1//3))/(sqrt(3)*a)))/a) + log(x)/(2*a) - (3*log(a + (-a^3 - b^3*x)^(1//3)))/(2*a), integration_var = x, mistery_val = 4),
# 
# 
#     (integrand = 1/(x*(a^3 + b^3*x)^(2//3)), result = -((sqrt(3)*atan((a + 2*(a^3 + b^3*x)^(1//3))/(sqrt(3)*a)))/a^2) - log(x)/(2*a^2) + (3*log(a - (a^3 + b^3*x)^(1//3)))/(2*a^2), integration_var = x, mistery_val = 4),
#     (integrand = 1/(x*(a^3 - b^3*x)^(2//3)), result = -((sqrt(3)*atan((a + 2*(a^3 - b^3*x)^(1//3))/(sqrt(3)*a)))/a^2) - log(x)/(2*a^2) + (3*log(a - (a^3 - b^3*x)^(1//3)))/(2*a^2), integration_var = x, mistery_val = 4),
#     (integrand = 1/(x*(-a^3 + b^3*x)^(2//3)), result = -((sqrt(3)*atan((a - 2*(-a^3 + b^3*x)^(1//3))/(sqrt(3)*a)))/a^2) - log(x)/(2*a^2) + (3*log(a + (-a^3 + b^3*x)^(1//3)))/(2*a^2), integration_var = x, mistery_val = 4),
#     (integrand = 1/(x*(-a^3 - b^3*x)^(2//3)), result = -((sqrt(3)*atan((a - 2*(-a^3 - b^3*x)^(1//3))/(sqrt(3)*a)))/a^2) - log(x)/(2*a^2) + (3*log(a + (-a^3 - b^3*x)^(1//3)))/(2*a^2), integration_var = x, mistery_val = 4),
# 
# 
# # ::Subsection::Closed::
# # Integrands of the form (c x)^(m/2) (a+b x)^n
# 
# 
# # ::Subsubsection::Closed::
# # n>0
# 
# 
#     (integrand = x^m*(a + b*x), result = (a*x^(1 + m))/(1 + m) + (b*x^(2 + m))/(2 + m), integration_var = x, mistery_val = 2),
# 
#     (integrand = x^(5//2)*(a + b*x), result = (2//7)*a*x^(7//2) + (2//9)*b*x^(9//2), integration_var = x, mistery_val = 2),
#     (integrand = x^(3//2)*(a + b*x), result = (2//5)*a*x^(5//2) + (2//7)*b*x^(7//2), integration_var = x, mistery_val = 2),
#     (integrand = sqrt(x)*(a + b*x), result = (2//3)*a*x^(3//2) + (2//5)*b*x^(5//2), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)/sqrt(x), result = 2*a*sqrt(x) + (2//3)*b*x^(3//2), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)/x^(3//2), result = -((2*a)/sqrt(x)) + 2*b*sqrt(x), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)/x^(5//2), result = -((2*a)/(3*x^(3//2))) - (2*b)/sqrt(x), integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = x^m*(a + b*x)^2, result = (a^2*x^(1 + m))/(1 + m) + (2*a*b*x^(2 + m))/(2 + m) + (b^2*x^(3 + m))/(3 + m), integration_var = x, mistery_val = 2),
# 
#     (integrand = x^(5//2)*(a + b*x)^2, result = (2//7)*a^2*x^(7//2) + (4//9)*a*b*x^(9//2) + (2//11)*b^2*x^(11//2), integration_var = x, mistery_val = 2),
#     (integrand = x^(3//2)*(a + b*x)^2, result = (2//5)*a^2*x^(5//2) + (4//7)*a*b*x^(7//2) + (2//9)*b^2*x^(9//2), integration_var = x, mistery_val = 2),
#     (integrand = sqrt(x)*(a + b*x)^2, result = (2//3)*a^2*x^(3//2) + (4//5)*a*b*x^(5//2) + (2//7)*b^2*x^(7//2), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^2/sqrt(x), result = 2*a^2*sqrt(x) + (4//3)*a*b*x^(3//2) + (2//5)*b^2*x^(5//2), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^2/x^(3//2), result = -((2*a^2)/sqrt(x)) + 4*a*b*sqrt(x) + (2//3)*b^2*x^(3//2), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^2/x^(5//2), result = -((2*a^2)/(3*x^(3//2))) - (4*a*b)/sqrt(x) + 2*b^2*sqrt(x), integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = x^m*(a + b*x)^3, result = (a^3*x^(1 + m))/(1 + m) + (3*a^2*b*x^(2 + m))/(2 + m) + (3*a*b^2*x^(3 + m))/(3 + m) + (b^3*x^(4 + m))/(4 + m), integration_var = x, mistery_val = 2),
# 
#     (integrand = x^(5//2)*(a + b*x)^3, result = (2//7)*a^3*x^(7//2) + (2//3)*a^2*b*x^(9//2) + (6//11)*a*b^2*x^(11//2) + (2//13)*b^3*x^(13//2), integration_var = x, mistery_val = 2),
#     (integrand = x^(3//2)*(a + b*x)^3, result = (2//5)*a^3*x^(5//2) + (6//7)*a^2*b*x^(7//2) + (2//3)*a*b^2*x^(9//2) + (2//11)*b^3*x^(11//2), integration_var = x, mistery_val = 2),
#     (integrand = sqrt(x)*(a + b*x)^3, result = (2//3)*a^3*x^(3//2) + (6//5)*a^2*b*x^(5//2) + (6//7)*a*b^2*x^(7//2) + (2//9)*b^3*x^(9//2), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^3/sqrt(x), result = 2*a^3*sqrt(x) + 2*a^2*b*x^(3//2) + (6//5)*a*b^2*x^(5//2) + (2//7)*b^3*x^(7//2), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^3/x^(3//2), result = -((2*a^3)/sqrt(x)) + 6*a^2*b*sqrt(x) + 2*a*b^2*x^(3//2) + (2//5)*b^3*x^(5//2), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^3/x^(5//2), result = -((2*a^3)/(3*x^(3//2))) - (6*a^2*b)/sqrt(x) + 6*a*b^2*sqrt(x) + (2//3)*b^3*x^(3//2), integration_var = x, mistery_val = 2),
# 
# 
# # ::Subsubsection::Closed::
# # n<0
# 
# 
#     (integrand = x^(5//2)/(a + b*x), result = (2*a^2*sqrt(x))/b^3 - (2*a*x^(3//2))/(3*b^2) + (2*x^(5//2))/(5*b) - (2*a^(5//2)*atan((sqrt(b)*sqrt(x))/sqrt(a)))/b^(7//2), integration_var = x, mistery_val = 5),
#     (integrand = x^(3//2)/(a + b*x), result = -((2*a*sqrt(x))/b^2) + (2*x^(3//2))/(3*b) + (2*a^(3//2)*atan((sqrt(b)*sqrt(x))/sqrt(a)))/b^(5//2), integration_var = x, mistery_val = 4),
#     (integrand = sqrt(x)/(a + b*x), result = (2*sqrt(x))/b - (2*sqrt(a)*atan((sqrt(b)*sqrt(x))/sqrt(a)))/b^(3//2), integration_var = x, mistery_val = 3),
#     (integrand = 1/(sqrt(x)*(a + b*x)), result = (2*atan((sqrt(b)*sqrt(x))/sqrt(a)))/(sqrt(a)*sqrt(b)), integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^(3//2)*(a + b*x)), result = -2/(a*sqrt(x)) - (2*sqrt(b)*atan((sqrt(b)*sqrt(x))/sqrt(a)))/a^(3//2), integration_var = x, mistery_val = 3),
#     (integrand = 1/(x^(5//2)*(a + b*x)), result = -(2/(3*a*x^(3//2))) + (2*b)/(a^2*sqrt(x)) + (2*b^(3//2)*atan((sqrt(b)*sqrt(x))/sqrt(a)))/a^(5//2), integration_var = x, mistery_val = 4),
#     (integrand = 1/(x^(7//2)*(a + b*x)), result = -(2/(5*a*x^(5//2))) + (2*b)/(3*a^2*x^(3//2)) - (2*b^2)/(a^3*sqrt(x)) - (2*b^(5//2)*atan((sqrt(b)*sqrt(x))/sqrt(a)))/a^(7//2), integration_var = x, mistery_val = 5),
# 
# 
#     (integrand = x^(5//2)/(a + b*x)^2, result = -((5*a*sqrt(x))/b^3) + (5*x^(3//2))/(3*b^2) - x^(5//2)/(b*(a + b*x)) + (5*a^(3//2)*atan((sqrt(b)*sqrt(x))/sqrt(a)))/b^(7//2), integration_var = x, mistery_val = 5),
#     (integrand = x^(3//2)/(a + b*x)^2, result = (3*sqrt(x))/b^2 - x^(3//2)/(b*(a + b*x)) - (3*sqrt(a)*atan((sqrt(b)*sqrt(x))/sqrt(a)))/b^(5//2), integration_var = x, mistery_val = 4),
#     (integrand = sqrt(x)/(a + b*x)^2, result = -(sqrt(x)/(b*(a + b*x))) + atan((sqrt(b)*sqrt(x))/sqrt(a))/(sqrt(a)*b^(3//2)), integration_var = x, mistery_val = 3),
#     (integrand = 1/(sqrt(x)*(a + b*x)^2), result = sqrt(x)/(a*(a + b*x)) + atan((sqrt(b)*sqrt(x))/sqrt(a))/(a^(3//2)*sqrt(b)), integration_var = x, mistery_val = 3),
#     (integrand = 1/(x^(3//2)*(a + b*x)^2), result = -(3/(a^2*sqrt(x))) + 1/(a*sqrt(x)*(a + b*x)) - (3*sqrt(b)*atan((sqrt(b)*sqrt(x))/sqrt(a)))/a^(5//2), integration_var = x, mistery_val = 4),
#     (integrand = 1/(x^(5//2)*(a + b*x)^2), result = -(5/(3*a^2*x^(3//2))) + (5*b)/(a^3*sqrt(x)) + 1/(a*x^(3//2)*(a + b*x)) + (5*b^(3//2)*atan((sqrt(b)*sqrt(x))/sqrt(a)))/a^(7//2), integration_var = x, mistery_val = 5),
# 
# 
#     (integrand = x^(7//2)/(a + b*x)^3, result = -((35*a*sqrt(x))/(4*b^4)) + (35*x^(3//2))/(12*b^3) - x^(7//2)/(2*b*(a + b*x)^2) - (7*x^(5//2))/(4*b^2*(a + b*x)) + (35*a^(3//2)*atan((sqrt(b)*sqrt(x))/sqrt(a)))/(4*b^(9//2)), integration_var = x, mistery_val = 6),
#     (integrand = x^(5//2)/(a + b*x)^3, result = (15*sqrt(x))/(4*b^3) - x^(5//2)/(2*b*(a + b*x)^2) - (5*x^(3//2))/(4*b^2*(a + b*x)) - (15*sqrt(a)*atan((sqrt(b)*sqrt(x))/sqrt(a)))/(4*b^(7//2)), integration_var = x, mistery_val = 5),
#     (integrand = x^(3//2)/(a + b*x)^3, result = -(x^(3//2)/(2*b*(a + b*x)^2)) - (3*sqrt(x))/(4*b^2*(a + b*x)) + (3*atan((sqrt(b)*sqrt(x))/sqrt(a)))/(4*sqrt(a)*b^(5//2)), integration_var = x, mistery_val = 4),
#     (integrand = sqrt(x)/(a + b*x)^3, result = -(sqrt(x)/(2*b*(a + b*x)^2)) + sqrt(x)/(4*a*b*(a + b*x)) + atan((sqrt(b)*sqrt(x))/sqrt(a))/(4*a^(3//2)*b^(3//2)), integration_var = x, mistery_val = 4),
#     (integrand = 1/(sqrt(x)*(a + b*x)^3), result = sqrt(x)/(2*a*(a + b*x)^2) + (3*sqrt(x))/(4*a^2*(a + b*x)) + (3*atan((sqrt(b)*sqrt(x))/sqrt(a)))/(4*a^(5//2)*sqrt(b)), integration_var = x, mistery_val = 4),
#     (integrand = 1/(x^(3//2)*(a + b*x)^3), result = -(15/(4*a^3*sqrt(x))) + 1/(2*a*sqrt(x)*(a + b*x)^2) + 5/(4*a^2*sqrt(x)*(a + b*x)) - (15*sqrt(b)*atan((sqrt(b)*sqrt(x))/sqrt(a)))/(4*a^(7//2)), integration_var = x, mistery_val = 5),
#     (integrand = 1/(x^(5//2)*(a + b*x)^3), result = -(35/(12*a^3*x^(3//2))) + (35*b)/(4*a^4*sqrt(x)) + 1/(2*a*x^(3//2)*(a + b*x)^2) + 7/(4*a^2*x^(3//2)*(a + b*x)) + (35*b^(3//2)*atan((sqrt(b)*sqrt(x))/sqrt(a)))/(4*a^(9//2)), integration_var = x, mistery_val = 6),
# 
# 
#     (integrand = x^(5//2)/(-a + b*x), result = (2*a^2*sqrt(x))/b^3 + (2*a*x^(3//2))/(3*b^2) + (2*x^(5//2))/(5*b) - (2*a^(5//2)*atanh((sqrt(b)*sqrt(x))/sqrt(a)))/b^(7//2), integration_var = x, mistery_val = 5),
#     (integrand = x^(3//2)/(-a + b*x), result = (2*a*sqrt(x))/b^2 + (2*x^(3//2))/(3*b) - (2*a^(3//2)*atanh((sqrt(b)*sqrt(x))/sqrt(a)))/b^(5//2), integration_var = x, mistery_val = 4),
#     (integrand = sqrt(x)/(-a + b*x), result = (2*sqrt(x))/b - (2*sqrt(a)*atanh((sqrt(b)*sqrt(x))/sqrt(a)))/b^(3//2), integration_var = x, mistery_val = 3),
#     (integrand = 1/(sqrt(x)*(-a + b*x)), result = (-2*atanh((sqrt(b)*sqrt(x))/sqrt(a)))/(sqrt(a)*sqrt(b)), integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^(3//2)*(-a + b*x)), result = 2/(a*sqrt(x)) - (2*sqrt(b)*atanh((sqrt(b)*sqrt(x))/sqrt(a)))/a^(3//2), integration_var = x, mistery_val = 3),
#     (integrand = 1/(x^(5//2)*(-a + b*x)), result = 2/(3*a*x^(3//2)) + (2*b)/(a^2*sqrt(x)) - (2*b^(3//2)*atanh((sqrt(b)*sqrt(x))/sqrt(a)))/a^(5//2), integration_var = x, mistery_val = 4),
#     (integrand = 1/(x^(7//2)*(-a + b*x)), result = 2/(5*a*x^(5//2)) + (2*b)/(3*a^2*x^(3//2)) + (2*b^2)/(a^3*sqrt(x)) - (2*b^(5//2)*atanh((sqrt(b)*sqrt(x))/sqrt(a)))/a^(7//2), integration_var = x, mistery_val = 5),
# 
# 
#     (integrand = x^(5//2)/(-a + b*x)^2, result = (5*a*sqrt(x))/b^3 + (5*x^(3//2))/(3*b^2) + x^(5//2)/(b*(a - b*x)) - (5*a^(3//2)*atanh((sqrt(b)*sqrt(x))/sqrt(a)))/b^(7//2), integration_var = x, mistery_val = 5),
#     (integrand = x^(3//2)/(-a + b*x)^2, result = (3*sqrt(x))/b^2 + x^(3//2)/(b*(a - b*x)) - (3*sqrt(a)*atanh((sqrt(b)*sqrt(x))/sqrt(a)))/b^(5//2), integration_var = x, mistery_val = 4),
#     (integrand = sqrt(x)/(-a + b*x)^2, result = sqrt(x)/(b*(a - b*x)) - atanh((sqrt(b)*sqrt(x))/sqrt(a))/(sqrt(a)*b^(3//2)), integration_var = x, mistery_val = 3),
#     (integrand = 1/(sqrt(x)*(-a + b*x)^2), result = sqrt(x)/(a*(a - b*x)) + atanh((sqrt(b)*sqrt(x))/sqrt(a))/(a^(3//2)*sqrt(b)), integration_var = x, mistery_val = 3),
#     (integrand = 1/(x^(3//2)*(-a + b*x)^2), result = -(3/(a^2*sqrt(x))) + 1/(a*sqrt(x)*(a - b*x)) + (3*sqrt(b)*atanh((sqrt(b)*sqrt(x))/sqrt(a)))/a^(5//2), integration_var = x, mistery_val = 4),
#     (integrand = 1/(x^(5//2)*(-a + b*x)^2), result = -(5/(3*a^2*x^(3//2))) - (5*b)/(a^3*sqrt(x)) + 1/(a*x^(3//2)*(a - b*x)) + (5*b^(3//2)*atanh((sqrt(b)*sqrt(x))/sqrt(a)))/a^(7//2), integration_var = x, mistery_val = 5),
# 
# 
#     (integrand = x^(7//2)/(-a + b*x)^3, result = (35*a*sqrt(x))/(4*b^4) + (35*x^(3//2))/(12*b^3) - x^(7//2)/(2*b*(a - b*x)^2) + (7*x^(5//2))/(4*b^2*(a - b*x)) - (35*a^(3//2)*atanh((sqrt(b)*sqrt(x))/sqrt(a)))/(4*b^(9//2)), integration_var = x, mistery_val = 6),
#     (integrand = x^(5//2)/(-a + b*x)^3, result = (15*sqrt(x))/(4*b^3) - x^(5//2)/(2*b*(a - b*x)^2) + (5*x^(3//2))/(4*b^2*(a - b*x)) - (15*sqrt(a)*atanh((sqrt(b)*sqrt(x))/sqrt(a)))/(4*b^(7//2)), integration_var = x, mistery_val = 5),
#     (integrand = x^(3//2)/(-a + b*x)^3, result = -(x^(3//2)/(2*b*(a - b*x)^2)) + (3*sqrt(x))/(4*b^2*(a - b*x)) - (3*atanh((sqrt(b)*sqrt(x))/sqrt(a)))/(4*sqrt(a)*b^(5//2)), integration_var = x, mistery_val = 4),
#     (integrand = sqrt(x)/(-a + b*x)^3, result = -(sqrt(x)/(2*b*(a - b*x)^2)) + sqrt(x)/(4*a*b*(a - b*x)) + atanh((sqrt(b)*sqrt(x))/sqrt(a))/(4*a^(3//2)*b^(3//2)), integration_var = x, mistery_val = 4),
#     (integrand = 1/(sqrt(x)*(-a + b*x)^3), result = -(sqrt(x)/(2*a*(a - b*x)^2)) - (3*sqrt(x))/(4*a^2*(a - b*x)) - (3*atanh((sqrt(b)*sqrt(x))/sqrt(a)))/(4*a^(5//2)*sqrt(b)), integration_var = x, mistery_val = 4),
#     (integrand = 1/(x^(3//2)*(-a + b*x)^3), result = 15/(4*a^3*sqrt(x)) - 1/(2*a*sqrt(x)*(a - b*x)^2) - 5/(4*a^2*sqrt(x)*(a - b*x)) - (15*sqrt(b)*atanh((sqrt(b)*sqrt(x))/sqrt(a)))/(4*a^(7//2)), integration_var = x, mistery_val = 5),
#     (integrand = 1/(x^(5//2)*(-a + b*x)^3), result = 35/(12*a^3*x^(3//2)) + (35*b)/(4*a^4*sqrt(x)) - 1/(2*a*x^(3//2)*(a - b*x)^2) - 7/(4*a^2*x^(3//2)*(a - b*x)) - (35*b^(3//2)*atanh((sqrt(b)*sqrt(x))/sqrt(a)))/(4*a^(9//2)), integration_var = x, mistery_val = 6),
# 
# 
# # ::Subsection::Closed::
# # Integrands of the form (c x)^(m/2) (a+b x)^(n/2)
# 
# 
# # ::Subsubsection::Closed::
# # n>0
# 
# 
#     (integrand = x^(5//2)*sqrt(a + b*x), result = (5*a^3*sqrt(x)*sqrt(a + b*x))/(64*b^3) - (5*a^2*x^(3//2)*sqrt(a + b*x))/(96*b^2) + (a*x^(5//2)*sqrt(a + b*x))/(24*b) + (1//4)*x^(7//2)*sqrt(a + b*x) - (5*a^4*atanh((sqrt(b)*sqrt(x))/sqrt(a + b*x)))/(64*b^(7//2)), integration_var = x, mistery_val = 7),
#     (integrand = x^(3//2)*sqrt(a + b*x), result = -((a^2*sqrt(x)*sqrt(a + b*x))/(8*b^2)) + (a*x^(3//2)*sqrt(a + b*x))/(12*b) + (1//3)*x^(5//2)*sqrt(a + b*x) + (a^3*atanh((sqrt(b)*sqrt(x))/sqrt(a + b*x)))/(8*b^(5//2)), integration_var = x, mistery_val = 6),
#     (integrand = sqrt(x)*sqrt(a + b*x), result = (a*sqrt(x)*sqrt(a + b*x))/(4*b) + (1//2)*x^(3//2)*sqrt(a + b*x) - (a^2*atanh((sqrt(b)*sqrt(x))/sqrt(a + b*x)))/(4*b^(3//2)), integration_var = x, mistery_val = 5),
#     (integrand = sqrt(a + b*x)/sqrt(x), result = sqrt(x)*sqrt(a + b*x) + (a*atanh((sqrt(b)*sqrt(x))/sqrt(a + b*x)))/sqrt(b), integration_var = x, mistery_val = 4),
#     (integrand = sqrt(a + b*x)/x^(3//2), result = (-2*sqrt(a + b*x))/sqrt(x) + 2*sqrt(b)*atanh((sqrt(b)*sqrt(x))/sqrt(a + b*x)), integration_var = x, mistery_val = 4),
#     (integrand = sqrt(a + b*x)/x^(5//2), result = (-2*(a + b*x)^(3//2))/(3*a*x^(3//2)), integration_var = x, mistery_val = 1),
#     (integrand = sqrt(a + b*x)/x^(7//2), result = -((2*(a + b*x)^(3//2))/(5*a*x^(5//2))) + (4*b*(a + b*x)^(3//2))/(15*a^2*x^(3//2)), integration_var = x, mistery_val = 2),
#     (integrand = sqrt(a + b*x)/x^(9//2), result = -((2*(a + b*x)^(3//2))/(7*a*x^(7//2))) + (8*b*(a + b*x)^(3//2))/(35*a^2*x^(5//2)) - (16*b^2*(a + b*x)^(3//2))/(105*a^3*x^(3//2)), integration_var = x, mistery_val = 3),
# 
# 
#     (integrand = x^(5//2)*sqrt(a - b*x), result = -((5*a^3*sqrt(x)*sqrt(a - b*x))/(64*b^3)) - (5*a^2*x^(3//2)*sqrt(a - b*x))/(96*b^2) - (a*x^(5//2)*sqrt(a - b*x))/(24*b) + (1//4)*x^(7//2)*sqrt(a - b*x) + (5*a^4*atan((sqrt(b)*sqrt(x))/sqrt(a - b*x)))/(64*b^(7//2)), integration_var = x, mistery_val = 7),
#     (integrand = x^(3//2)*sqrt(a - b*x), result = -((a^2*sqrt(x)*sqrt(a - b*x))/(8*b^2)) - (a*x^(3//2)*sqrt(a - b*x))/(12*b) + (1//3)*x^(5//2)*sqrt(a - b*x) + (a^3*atan((sqrt(b)*sqrt(x))/sqrt(a - b*x)))/(8*b^(5//2)), integration_var = x, mistery_val = 6),
#     (integrand = sqrt(x)*sqrt(a - b*x), result = -((a*sqrt(x)*sqrt(a - b*x))/(4*b)) + (1//2)*x^(3//2)*sqrt(a - b*x) + (a^2*atan((sqrt(b)*sqrt(x))/sqrt(a - b*x)))/(4*b^(3//2)), integration_var = x, mistery_val = 5),
#     (integrand = sqrt(a - b*x)/sqrt(x), result = sqrt(x)*sqrt(a - b*x) + (a*atan((sqrt(b)*sqrt(x))/sqrt(a - b*x)))/sqrt(b), integration_var = x, mistery_val = 4),
#     (integrand = sqrt(a - b*x)/x^(3//2), result = (-2*sqrt(a - b*x))/sqrt(x) - 2*sqrt(b)*atan((sqrt(b)*sqrt(x))/sqrt(a - b*x)), integration_var = x, mistery_val = 4),
#     (integrand = sqrt(a - b*x)/x^(5//2), result = (-2*(a - b*x)^(3//2))/(3*a*x^(3//2)), integration_var = x, mistery_val = 1),
#     (integrand = sqrt(a - b*x)/x^(7//2), result = -((2*(a - b*x)^(3//2))/(5*a*x^(5//2))) - (4*b*(a - b*x)^(3//2))/(15*a^2*x^(3//2)), integration_var = x, mistery_val = 2),
#     (integrand = sqrt(a - b*x)/x^(9//2), result = -((2*(a - b*x)^(3//2))/(7*a*x^(7//2))) - (8*b*(a - b*x)^(3//2))/(35*a^2*x^(5//2)) - (16*b^2*(a - b*x)^(3//2))/(105*a^3*x^(3//2)), integration_var = x, mistery_val = 3),
# 
# 
#     (integrand = x^(5//2)*sqrt(2 + b*x), result = (5*sqrt(x)*sqrt(2 + b*x))/(8*b^3) - (5*x^(3//2)*sqrt(2 + b*x))/(24*b^2) + (x^(5//2)*sqrt(2 + b*x))/(12*b) + (1//4)*x^(7//2)*sqrt(2 + b*x) - (5*asinh((sqrt(b)*sqrt(x))/sqrt(2)))/(4*b^(7//2)), integration_var = x, mistery_val = 6),
#     (integrand = x^(3//2)*sqrt(2 + b*x), result = -((sqrt(x)*sqrt(2 + b*x))/(2*b^2)) + (x^(3//2)*sqrt(2 + b*x))/(6*b) + (1//3)*x^(5//2)*sqrt(2 + b*x) + asinh((sqrt(b)*sqrt(x))/sqrt(2))/b^(5//2), integration_var = x, mistery_val = 5),
#     (integrand = sqrt(x)*sqrt(2 + b*x), result = (sqrt(x)*sqrt(2 + b*x))/(2*b) + (1//2)*x^(3//2)*sqrt(2 + b*x) - asinh((sqrt(b)*sqrt(x))/sqrt(2))/b^(3//2), integration_var = x, mistery_val = 4),
#     (integrand = sqrt(2 + b*x)/sqrt(x), result = sqrt(x)*sqrt(2 + b*x) + (2*asinh((sqrt(b)*sqrt(x))/sqrt(2)))/sqrt(b), integration_var = x, mistery_val = 3),
#     (integrand = sqrt(2 + b*x)/x^(3//2), result = (-2*sqrt(2 + b*x))/sqrt(x) + 2*sqrt(b)*asinh((sqrt(b)*sqrt(x))/sqrt(2)), integration_var = x, mistery_val = 3),
#     (integrand = sqrt(2 + b*x)/x^(5//2), result = -(2 + b*x)^(3//2)/(3*x^(3//2)), integration_var = x, mistery_val = 1),
#     (integrand = sqrt(2 + b*x)/x^(7//2), result = -((2 + b*x)^(3//2)/(5*x^(5//2))) + (b*(2 + b*x)^(3//2))/(15*x^(3//2)), integration_var = x, mistery_val = 2),
#     (integrand = sqrt(2 + b*x)/x^(9//2), result = -((2 + b*x)^(3//2)/(7*x^(7//2))) + (2*b*(2 + b*x)^(3//2))/(35*x^(5//2)) - (2*b^2*(2 + b*x)^(3//2))/(105*x^(3//2)), integration_var = x, mistery_val = 3),
# 
# 
#     (integrand = x^(5//2)*sqrt(2 - b*x), result = -((5*sqrt(x)*sqrt(2 - b*x))/(8*b^3)) - (5*x^(3//2)*sqrt(2 - b*x))/(24*b^2) - (x^(5//2)*sqrt(2 - b*x))/(12*b) + (1//4)*x^(7//2)*sqrt(2 - b*x) + (5*asin((sqrt(b)*sqrt(x))/sqrt(2)))/(4*b^(7//2)), integration_var = x, mistery_val = 6),
#     (integrand = x^(3//2)*sqrt(2 - b*x), result = -((sqrt(x)*sqrt(2 - b*x))/(2*b^2)) - (x^(3//2)*sqrt(2 - b*x))/(6*b) + (1//3)*x^(5//2)*sqrt(2 - b*x) + asin((sqrt(b)*sqrt(x))/sqrt(2))/b^(5//2), integration_var = x, mistery_val = 5),
#     (integrand = sqrt(x)*sqrt(2 - b*x), result = -((sqrt(x)*sqrt(2 - b*x))/(2*b)) + (1//2)*x^(3//2)*sqrt(2 - b*x) + asin((sqrt(b)*sqrt(x))/sqrt(2))/b^(3//2), integration_var = x, mistery_val = 4),
#     (integrand = sqrt(2 - b*x)/sqrt(x), result = sqrt(x)*sqrt(2 - b*x) + (2*asin((sqrt(b)*sqrt(x))/sqrt(2)))/sqrt(b), integration_var = x, mistery_val = 3),
#     (integrand = sqrt(2 - b*x)/x^(3//2), result = (-2*sqrt(2 - b*x))/sqrt(x) - 2*sqrt(b)*asin((sqrt(b)*sqrt(x))/sqrt(2)), integration_var = x, mistery_val = 3),
#     (integrand = sqrt(2 - b*x)/x^(5//2), result = -(2 - b*x)^(3//2)/(3*x^(3//2)), integration_var = x, mistery_val = 1),
#     (integrand = sqrt(2 - b*x)/x^(7//2), result = -((2 - b*x)^(3//2)/(5*x^(5//2))) - (b*(2 - b*x)^(3//2))/(15*x^(3//2)), integration_var = x, mistery_val = 2),
#     (integrand = sqrt(2 - b*x)/x^(9//2), result = -((2 - b*x)^(3//2)/(7*x^(7//2))) - (2*b*(2 - b*x)^(3//2))/(35*x^(5//2)) - (2*b^2*(2 - b*x)^(3//2))/(105*x^(3//2)), integration_var = x, mistery_val = 3),
# 
# 
#     (integrand = x^(5//2)*(a + b*x)^(3//2), result = (3*a^4*sqrt(x)*sqrt(a + b*x))/(128*b^3) - (a^3*x^(3//2)*sqrt(a + b*x))/(64*b^2) + (a^2*x^(5//2)*sqrt(a + b*x))/(80*b) + (3//40)*a*x^(7//2)*sqrt(a + b*x) + (1//5)*x^(7//2)*(a + b*x)^(3//2) - (3*a^5*atanh((sqrt(b)*sqrt(x))/sqrt(a + b*x)))/(128*b^(7//2)), integration_var = x, mistery_val = 8),
#     (integrand = x^(3//2)*(a + b*x)^(3//2), result = -((3*a^3*sqrt(x)*sqrt(a + b*x))/(64*b^2)) + (a^2*x^(3//2)*sqrt(a + b*x))/(32*b) + (1//8)*a*x^(5//2)*sqrt(a + b*x) + (1//4)*x^(5//2)*(a + b*x)^(3//2) + (3*a^4*atanh((sqrt(b)*sqrt(x))/sqrt(a + b*x)))/(64*b^(5//2)), integration_var = x, mistery_val = 7),
#     (integrand = sqrt(x)*(a + b*x)^(3//2), result = (a^2*sqrt(x)*sqrt(a + b*x))/(8*b) + (1//4)*a*x^(3//2)*sqrt(a + b*x) + (1//3)*x^(3//2)*(a + b*x)^(3//2) - (a^3*atanh((sqrt(b)*sqrt(x))/sqrt(a + b*x)))/(8*b^(3//2)), integration_var = x, mistery_val = 6),
#     (integrand = (a + b*x)^(3//2)/sqrt(x), result = (3//4)*a*sqrt(x)*sqrt(a + b*x) + (1//2)*sqrt(x)*(a + b*x)^(3//2) + (3*a^2*atanh((sqrt(b)*sqrt(x))/sqrt(a + b*x)))/(4*sqrt(b)), integration_var = x, mistery_val = 5),
#     (integrand = (a + b*x)^(3//2)/x^(3//2), result = 3*b*sqrt(x)*sqrt(a + b*x) - (2*(a + b*x)^(3//2))/sqrt(x) + 3*a*sqrt(b)*atanh((sqrt(b)*sqrt(x))/sqrt(a + b*x)), integration_var = x, mistery_val = 5),
#     (integrand = (a + b*x)^(3//2)/x^(5//2), result = -((2*b*sqrt(a + b*x))/sqrt(x)) - (2*(a + b*x)^(3//2))/(3*x^(3//2)) + 2*b^(3//2)*atanh((sqrt(b)*sqrt(x))/sqrt(a + b*x)), integration_var = x, mistery_val = 5),
# 
# 
#     (integrand = x^(5//2)*(a - b*x)^(3//2), result = -((3*a^4*sqrt(x)*sqrt(a - b*x))/(128*b^3)) - (a^3*x^(3//2)*sqrt(a - b*x))/(64*b^2) - (a^2*x^(5//2)*sqrt(a - b*x))/(80*b) + (3//40)*a*x^(7//2)*sqrt(a - b*x) + (1//5)*x^(7//2)*(a - b*x)^(3//2) + (3*a^5*atan((sqrt(b)*sqrt(x))/sqrt(a - b*x)))/(128*b^(7//2)), integration_var = x, mistery_val = 8),
#     (integrand = x^(3//2)*(a - b*x)^(3//2), result = -((3*a^3*sqrt(x)*sqrt(a - b*x))/(64*b^2)) - (a^2*x^(3//2)*sqrt(a - b*x))/(32*b) + (1//8)*a*x^(5//2)*sqrt(a - b*x) + (1//4)*x^(5//2)*(a - b*x)^(3//2) + (3*a^4*atan((sqrt(b)*sqrt(x))/sqrt(a - b*x)))/(64*b^(5//2)), integration_var = x, mistery_val = 7),
#     (integrand = sqrt(x)*(a - b*x)^(3//2), result = -((a^2*sqrt(x)*sqrt(a - b*x))/(8*b)) + (1//4)*a*x^(3//2)*sqrt(a - b*x) + (1//3)*x^(3//2)*(a - b*x)^(3//2) + (a^3*atan((sqrt(b)*sqrt(x))/sqrt(a - b*x)))/(8*b^(3//2)), integration_var = x, mistery_val = 6),
#     (integrand = (a - b*x)^(3//2)/sqrt(x), result = (3//4)*a*sqrt(x)*sqrt(a - b*x) + (1//2)*sqrt(x)*(a - b*x)^(3//2) + (3*a^2*atan((sqrt(b)*sqrt(x))/sqrt(a - b*x)))/(4*sqrt(b)), integration_var = x, mistery_val = 5),
#     (integrand = (a - b*x)^(3//2)/x^(3//2), result = -3*b*sqrt(x)*sqrt(a - b*x) - (2*(a - b*x)^(3//2))/sqrt(x) - 3*a*sqrt(b)*atan((sqrt(b)*sqrt(x))/sqrt(a - b*x)), integration_var = x, mistery_val = 5),
#     (integrand = (a - b*x)^(3//2)/x^(5//2), result = (2*b*sqrt(a - b*x))/sqrt(x) - (2*(a - b*x)^(3//2))/(3*x^(3//2)) + 2*b^(3//2)*atan((sqrt(b)*sqrt(x))/sqrt(a - b*x)), integration_var = x, mistery_val = 5),
# 
# 
#     (integrand = x^(5//2)*(2 + b*x)^(3//2), result = (3*sqrt(x)*sqrt(2 + b*x))/(8*b^3) - (x^(3//2)*sqrt(2 + b*x))/(8*b^2) + (x^(5//2)*sqrt(2 + b*x))/(20*b) + (3//20)*x^(7//2)*sqrt(2 + b*x) + (1//5)*x^(7//2)*(2 + b*x)^(3//2) - (3*asinh((sqrt(b)*sqrt(x))/sqrt(2)))/(4*b^(7//2)), integration_var = x, mistery_val = 7),
#     (integrand = x^(3//2)*(2 + b*x)^(3//2), result = -((3*sqrt(x)*sqrt(2 + b*x))/(8*b^2)) + (x^(3//2)*sqrt(2 + b*x))/(8*b) + (1//4)*x^(5//2)*sqrt(2 + b*x) + (1//4)*x^(5//2)*(2 + b*x)^(3//2) + (3*asinh((sqrt(b)*sqrt(x))/sqrt(2)))/(4*b^(5//2)), integration_var = x, mistery_val = 6),
#     (integrand = sqrt(x)*(2 + b*x)^(3//2), result = (sqrt(x)*sqrt(2 + b*x))/(2*b) + (1//2)*x^(3//2)*sqrt(2 + b*x) + (1//3)*x^(3//2)*(2 + b*x)^(3//2) - asinh((sqrt(b)*sqrt(x))/sqrt(2))/b^(3//2), integration_var = x, mistery_val = 5),
#     (integrand = (2 + b*x)^(3//2)/sqrt(x), result = (3//2)*sqrt(x)*sqrt(2 + b*x) + (1//2)*sqrt(x)*(2 + b*x)^(3//2) + (3*asinh((sqrt(b)*sqrt(x))/sqrt(2)))/sqrt(b), integration_var = x, mistery_val = 4),
#     (integrand = (2 + b*x)^(3//2)/x^(3//2), result = 3*b*sqrt(x)*sqrt(2 + b*x) - (2*(2 + b*x)^(3//2))/sqrt(x) + 6*sqrt(b)*asinh((sqrt(b)*sqrt(x))/sqrt(2)), integration_var = x, mistery_val = 4),
#     (integrand = (2 + b*x)^(3//2)/x^(5//2), result = -((2*b*sqrt(2 + b*x))/sqrt(x)) - (2*(2 + b*x)^(3//2))/(3*x^(3//2)) + 2*b^(3//2)*asinh((sqrt(b)*sqrt(x))/sqrt(2)), integration_var = x, mistery_val = 4),
# 
# 
#     (integrand = x^(5//2)*(2 - b*x)^(3//2), result = -((3*sqrt(x)*sqrt(2 - b*x))/(8*b^3)) - (x^(3//2)*sqrt(2 - b*x))/(8*b^2) - (x^(5//2)*sqrt(2 - b*x))/(20*b) + (3//20)*x^(7//2)*sqrt(2 - b*x) + (1//5)*x^(7//2)*(2 - b*x)^(3//2) + (3*asin((sqrt(b)*sqrt(x))/sqrt(2)))/(4*b^(7//2)), integration_var = x, mistery_val = 7),
#     (integrand = x^(3//2)*(2 - b*x)^(3//2), result = -((3*sqrt(x)*sqrt(2 - b*x))/(8*b^2)) - (x^(3//2)*sqrt(2 - b*x))/(8*b) + (1//4)*x^(5//2)*sqrt(2 - b*x) + (1//4)*x^(5//2)*(2 - b*x)^(3//2) + (3*asin((sqrt(b)*sqrt(x))/sqrt(2)))/(4*b^(5//2)), integration_var = x, mistery_val = 6),
#     (integrand = sqrt(x)*(2 - b*x)^(3//2), result = -((sqrt(x)*sqrt(2 - b*x))/(2*b)) + (1//2)*x^(3//2)*sqrt(2 - b*x) + (1//3)*x^(3//2)*(2 - b*x)^(3//2) + asin((sqrt(b)*sqrt(x))/sqrt(2))/b^(3//2), integration_var = x, mistery_val = 5),
#     (integrand = (2 - b*x)^(3//2)/sqrt(x), result = (3//2)*sqrt(x)*sqrt(2 - b*x) + (1//2)*sqrt(x)*(2 - b*x)^(3//2) + (3*asin((sqrt(b)*sqrt(x))/sqrt(2)))/sqrt(b), integration_var = x, mistery_val = 4),
#     (integrand = (2 - b*x)^(3//2)/x^(3//2), result = -3*b*sqrt(x)*sqrt(2 - b*x) - (2*(2 - b*x)^(3//2))/sqrt(x) - 6*sqrt(b)*asin((sqrt(b)*sqrt(x))/sqrt(2)), integration_var = x, mistery_val = 4),
#     (integrand = (2 - b*x)^(3//2)/x^(5//2), result = (2*b*sqrt(2 - b*x))/sqrt(x) - (2*(2 - b*x)^(3//2))/(3*x^(3//2)) + 2*b^(3//2)*asin((sqrt(b)*sqrt(x))/sqrt(2)), integration_var = x, mistery_val = 4),
# 
# 
#     (integrand = x^(5//2)*(a + b*x)^(5//2), result = (5*a^5*sqrt(x)*sqrt(a + b*x))/(512*b^3) - (5*a^4*x^(3//2)*sqrt(a + b*x))/(768*b^2) + (a^3*x^(5//2)*sqrt(a + b*x))/(192*b) + (1//32)*a^2*x^(7//2)*sqrt(a + b*x) + (1//12)*a*x^(7//2)*(a + b*x)^(3//2) + (1//6)*x^(7//2)*(a + b*x)^(5//2) - (5*a^6*atanh((sqrt(b)*sqrt(x))/sqrt(a + b*x)))/(512*b^(7//2)), integration_var = x, mistery_val = 9),
#     (integrand = x^(3//2)*(a + b*x)^(5//2), result = -((3*a^4*sqrt(x)*sqrt(a + b*x))/(128*b^2)) + (a^3*x^(3//2)*sqrt(a + b*x))/(64*b) + (1//16)*a^2*x^(5//2)*sqrt(a + b*x) + (1//8)*a*x^(5//2)*(a + b*x)^(3//2) + (1//5)*x^(5//2)*(a + b*x)^(5//2) + (3*a^5*atanh((sqrt(b)*sqrt(x))/sqrt(a + b*x)))/(128*b^(5//2)), integration_var = x, mistery_val = 8),
#     (integrand = sqrt(x)*(a + b*x)^(5//2), result = (5*a^3*sqrt(x)*sqrt(a + b*x))/(64*b) + (5//32)*a^2*x^(3//2)*sqrt(a + b*x) + (5//24)*a*x^(3//2)*(a + b*x)^(3//2) + (1//4)*x^(3//2)*(a + b*x)^(5//2) - (5*a^4*atanh((sqrt(b)*sqrt(x))/sqrt(a + b*x)))/(64*b^(3//2)), integration_var = x, mistery_val = 7),
#     (integrand = (a + b*x)^(5//2)/sqrt(x), result = (5//8)*a^2*sqrt(x)*sqrt(a + b*x) + (5//12)*a*sqrt(x)*(a + b*x)^(3//2) + (1//3)*sqrt(x)*(a + b*x)^(5//2) + (5*a^3*atanh((sqrt(b)*sqrt(x))/sqrt(a + b*x)))/(8*sqrt(b)), integration_var = x, mistery_val = 6),
#     (integrand = (a + b*x)^(5//2)/x^(3//2), result = (15//4)*a*b*sqrt(x)*sqrt(a + b*x) + (5//2)*b*sqrt(x)*(a + b*x)^(3//2) - (2*(a + b*x)^(5//2))/sqrt(x) + (15//4)*a^2*sqrt(b)*atanh((sqrt(b)*sqrt(x))/sqrt(a + b*x)), integration_var = x, mistery_val = 6),
#     (integrand = (a + b*x)^(5//2)/x^(5//2), result = 5*b^2*sqrt(x)*sqrt(a + b*x) - (10*b*(a + b*x)^(3//2))/(3*sqrt(x)) - (2*(a + b*x)^(5//2))/(3*x^(3//2)) + 5*a*b^(3//2)*atanh((sqrt(b)*sqrt(x))/sqrt(a + b*x)), integration_var = x, mistery_val = 6),
# 
# 
#     (integrand = x^(5//2)*(a - b*x)^(5//2), result = -((5*a^5*sqrt(x)*sqrt(a - b*x))/(512*b^3)) - (5*a^4*x^(3//2)*sqrt(a - b*x))/(768*b^2) - (a^3*x^(5//2)*sqrt(a - b*x))/(192*b) + (1//32)*a^2*x^(7//2)*sqrt(a - b*x) + (1//12)*a*x^(7//2)*(a - b*x)^(3//2) + (1//6)*x^(7//2)*(a - b*x)^(5//2) + (5*a^6*atan((sqrt(b)*sqrt(x))/sqrt(a - b*x)))/(512*b^(7//2)), integration_var = x, mistery_val = 9),
#     (integrand = x^(3//2)*(a - b*x)^(5//2), result = -((3*a^4*sqrt(x)*sqrt(a - b*x))/(128*b^2)) - (a^3*x^(3//2)*sqrt(a - b*x))/(64*b) + (1//16)*a^2*x^(5//2)*sqrt(a - b*x) + (1//8)*a*x^(5//2)*(a - b*x)^(3//2) + (1//5)*x^(5//2)*(a - b*x)^(5//2) + (3*a^5*atan((sqrt(b)*sqrt(x))/sqrt(a - b*x)))/(128*b^(5//2)), integration_var = x, mistery_val = 8),
#     (integrand = sqrt(x)*(a - b*x)^(5//2), result = -((5*a^3*sqrt(x)*sqrt(a - b*x))/(64*b)) + (5//32)*a^2*x^(3//2)*sqrt(a - b*x) + (5//24)*a*x^(3//2)*(a - b*x)^(3//2) + (1//4)*x^(3//2)*(a - b*x)^(5//2) + (5*a^4*atan((sqrt(b)*sqrt(x))/sqrt(a - b*x)))/(64*b^(3//2)), integration_var = x, mistery_val = 7),
#     (integrand = (a - b*x)^(5//2)/sqrt(x), result = (5//8)*a^2*sqrt(x)*sqrt(a - b*x) + (5//12)*a*sqrt(x)*(a - b*x)^(3//2) + (1//3)*sqrt(x)*(a - b*x)^(5//2) + (5*a^3*atan((sqrt(b)*sqrt(x))/sqrt(a - b*x)))/(8*sqrt(b)), integration_var = x, mistery_val = 6),
#     (integrand = (a - b*x)^(5//2)/x^(3//2), result = (-(15//4))*a*b*sqrt(x)*sqrt(a - b*x) - (5//2)*b*sqrt(x)*(a - b*x)^(3//2) - (2*(a - b*x)^(5//2))/sqrt(x) - (15//4)*a^2*sqrt(b)*atan((sqrt(b)*sqrt(x))/sqrt(a - b*x)), integration_var = x, mistery_val = 6),
#     (integrand = (a - b*x)^(5//2)/x^(5//2), result = 5*b^2*sqrt(x)*sqrt(a - b*x) + (10*b*(a - b*x)^(3//2))/(3*sqrt(x)) - (2*(a - b*x)^(5//2))/(3*x^(3//2)) + 5*a*b^(3//2)*atan((sqrt(b)*sqrt(x))/sqrt(a - b*x)), integration_var = x, mistery_val = 6),
# 
# 
#     (integrand = x^(5//2)*(2 + b*x)^(5//2), result = (5*sqrt(x)*sqrt(2 + b*x))/(16*b^3) - (5*x^(3//2)*sqrt(2 + b*x))/(48*b^2) + (x^(5//2)*sqrt(2 + b*x))/(24*b) + (1//8)*x^(7//2)*sqrt(2 + b*x) + (1//6)*x^(7//2)*(2 + b*x)^(3//2) + (1//6)*x^(7//2)*(2 + b*x)^(5//2) - (5*asinh((sqrt(b)*sqrt(x))/sqrt(2)))/(8*b^(7//2)), integration_var = x, mistery_val = 8),
#     (integrand = x^(3//2)*(2 + b*x)^(5//2), result = -((3*sqrt(x)*sqrt(2 + b*x))/(8*b^2)) + (x^(3//2)*sqrt(2 + b*x))/(8*b) + (1//4)*x^(5//2)*sqrt(2 + b*x) + (1//4)*x^(5//2)*(2 + b*x)^(3//2) + (1//5)*x^(5//2)*(2 + b*x)^(5//2) + (3*asinh((sqrt(b)*sqrt(x))/sqrt(2)))/(4*b^(5//2)), integration_var = x, mistery_val = 7),
#     (integrand = sqrt(x)*(2 + b*x)^(5//2), result = (5*sqrt(x)*sqrt(2 + b*x))/(8*b) + (5//8)*x^(3//2)*sqrt(2 + b*x) + (5//12)*x^(3//2)*(2 + b*x)^(3//2) + (1//4)*x^(3//2)*(2 + b*x)^(5//2) - (5*asinh((sqrt(b)*sqrt(x))/sqrt(2)))/(4*b^(3//2)), integration_var = x, mistery_val = 6),
#     (integrand = (2 + b*x)^(5//2)/sqrt(x), result = (5//2)*sqrt(x)*sqrt(2 + b*x) + (5//6)*sqrt(x)*(2 + b*x)^(3//2) + (1//3)*sqrt(x)*(2 + b*x)^(5//2) + (5*asinh((sqrt(b)*sqrt(x))/sqrt(2)))/sqrt(b), integration_var = x, mistery_val = 5),
#     (integrand = (2 + b*x)^(5//2)/x^(3//2), result = (15//2)*b*sqrt(x)*sqrt(2 + b*x) + (5//2)*b*sqrt(x)*(2 + b*x)^(3//2) - (2*(2 + b*x)^(5//2))/sqrt(x) + 15*sqrt(b)*asinh((sqrt(b)*sqrt(x))/sqrt(2)), integration_var = x, mistery_val = 5),
#     (integrand = (2 + b*x)^(5//2)/x^(5//2), result = 5*b^2*sqrt(x)*sqrt(2 + b*x) - (10*b*(2 + b*x)^(3//2))/(3*sqrt(x)) - (2*(2 + b*x)^(5//2))/(3*x^(3//2)) + 10*b^(3//2)*asinh((sqrt(b)*sqrt(x))/sqrt(2)), integration_var = x, mistery_val = 5),
# 
# 
#     (integrand = x^(5//2)*(2 - b*x)^(5//2), result = -((5*sqrt(x)*sqrt(2 - b*x))/(16*b^3)) - (5*x^(3//2)*sqrt(2 - b*x))/(48*b^2) - (x^(5//2)*sqrt(2 - b*x))/(24*b) + (1//8)*x^(7//2)*sqrt(2 - b*x) + (1//6)*x^(7//2)*(2 - b*x)^(3//2) + (1//6)*x^(7//2)*(2 - b*x)^(5//2) + (5*asin((sqrt(b)*sqrt(x))/sqrt(2)))/(8*b^(7//2)), integration_var = x, mistery_val = 8),
#     (integrand = x^(3//2)*(2 - b*x)^(5//2), result = -((3*sqrt(x)*sqrt(2 - b*x))/(8*b^2)) - (x^(3//2)*sqrt(2 - b*x))/(8*b) + (1//4)*x^(5//2)*sqrt(2 - b*x) + (1//4)*x^(5//2)*(2 - b*x)^(3//2) + (1//5)*x^(5//2)*(2 - b*x)^(5//2) + (3*asin((sqrt(b)*sqrt(x))/sqrt(2)))/(4*b^(5//2)), integration_var = x, mistery_val = 7),
#     (integrand = sqrt(x)*(2 - b*x)^(5//2), result = -((5*sqrt(x)*sqrt(2 - b*x))/(8*b)) + (5//8)*x^(3//2)*sqrt(2 - b*x) + (5//12)*x^(3//2)*(2 - b*x)^(3//2) + (1//4)*x^(3//2)*(2 - b*x)^(5//2) + (5*asin((sqrt(b)*sqrt(x))/sqrt(2)))/(4*b^(3//2)), integration_var = x, mistery_val = 6),
#     (integrand = (2 - b*x)^(5//2)/sqrt(x), result = (5//2)*sqrt(x)*sqrt(2 - b*x) + (5//6)*sqrt(x)*(2 - b*x)^(3//2) + (1//3)*sqrt(x)*(2 - b*x)^(5//2) + (5*asin((sqrt(b)*sqrt(x))/sqrt(2)))/sqrt(b), integration_var = x, mistery_val = 5),
#     (integrand = (2 - b*x)^(5//2)/x^(3//2), result = (-(15//2))*b*sqrt(x)*sqrt(2 - b*x) - (5//2)*b*sqrt(x)*(2 - b*x)^(3//2) - (2*(2 - b*x)^(5//2))/sqrt(x) - 15*sqrt(b)*asin((sqrt(b)*sqrt(x))/sqrt(2)), integration_var = x, mistery_val = 5),
#     (integrand = (2 - b*x)^(5//2)/x^(5//2), result = 5*b^2*sqrt(x)*sqrt(2 - b*x) + (10*b*(2 - b*x)^(3//2))/(3*sqrt(x)) - (2*(2 - b*x)^(5//2))/(3*x^(3//2)) + 10*b^(3//2)*asin((sqrt(b)*sqrt(x))/sqrt(2)), integration_var = x, mistery_val = 5),
# 
# 
# # ::Subsubsection::Closed::
# # n<0
# 
# 
#     (integrand = x^(5//2)/sqrt(a + b*x), result = (5*a^2*sqrt(x)*sqrt(a + b*x))/(8*b^3) - (5*a*x^(3//2)*sqrt(a + b*x))/(12*b^2) + (x^(5//2)*sqrt(a + b*x))/(3*b) - (5*a^3*atanh((sqrt(b)*sqrt(x))/sqrt(a + b*x)))/(8*b^(7//2)), integration_var = x, mistery_val = 6),
#     (integrand = x^(3//2)/sqrt(a + b*x), result = -((3*a*sqrt(x)*sqrt(a + b*x))/(4*b^2)) + (x^(3//2)*sqrt(a + b*x))/(2*b) + (3*a^2*atanh((sqrt(b)*sqrt(x))/sqrt(a + b*x)))/(4*b^(5//2)), integration_var = x, mistery_val = 5),
#     (integrand = sqrt(x)/sqrt(a + b*x), result = (sqrt(x)*sqrt(a + b*x))/b - (a*atanh((sqrt(b)*sqrt(x))/sqrt(a + b*x)))/b^(3//2), integration_var = x, mistery_val = 4),
#     (integrand = 1/(sqrt(x)*sqrt(a + b*x)), result = (2*atanh((sqrt(b)*sqrt(x))/sqrt(a + b*x)))/sqrt(b), integration_var = x, mistery_val = 3),
#     (integrand = 1/(x^(3//2)*sqrt(a + b*x)), result = (-2*sqrt(a + b*x))/(a*sqrt(x)), integration_var = x, mistery_val = 1),
#     (integrand = 1/(x^(5//2)*sqrt(a + b*x)), result = -((2*sqrt(a + b*x))/(3*a*x^(3//2))) + (4*b*sqrt(a + b*x))/(3*a^2*sqrt(x)), integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^(7//2)*sqrt(a + b*x)), result = -((2*sqrt(a + b*x))/(5*a*x^(5//2))) + (8*b*sqrt(a + b*x))/(15*a^2*x^(3//2)) - (16*b^2*sqrt(a + b*x))/(15*a^3*sqrt(x)), integration_var = x, mistery_val = 3),
#     (integrand = 1/(x^(9//2)*sqrt(a + b*x)), result = -((2*sqrt(a + b*x))/(7*a*x^(7//2))) + (12*b*sqrt(a + b*x))/(35*a^2*x^(5//2)) - (16*b^2*sqrt(a + b*x))/(35*a^3*x^(3//2)) + (32*b^3*sqrt(a + b*x))/(35*a^4*sqrt(x)), integration_var = x, mistery_val = 4),
# 
# 
#     (integrand = x^(5//2)/(a + b*x)^(3//2), result = -((2*x^(5//2))/(b*sqrt(a + b*x))) - (15*a*sqrt(x)*sqrt(a + b*x))/(4*b^3) + (5*x^(3//2)*sqrt(a + b*x))/(2*b^2) + (15*a^2*atanh((sqrt(b)*sqrt(x))/sqrt(a + b*x)))/(4*b^(7//2)), integration_var = x, mistery_val = 6),
#     (integrand = x^(3//2)/(a + b*x)^(3//2), result = -((2*x^(3//2))/(b*sqrt(a + b*x))) + (3*sqrt(x)*sqrt(a + b*x))/b^2 - (3*a*atanh((sqrt(b)*sqrt(x))/sqrt(a + b*x)))/b^(5//2), integration_var = x, mistery_val = 5),
#     (integrand = sqrt(x)/(a + b*x)^(3//2), result = (-2*sqrt(x))/(b*sqrt(a + b*x)) + (2*atanh((sqrt(b)*sqrt(x))/sqrt(a + b*x)))/b^(3//2), integration_var = x, mistery_val = 4),
#     (integrand = 1/(sqrt(x)*(a + b*x)^(3//2)), result = (2*sqrt(x))/(a*sqrt(a + b*x)), integration_var = x, mistery_val = 1),
#     (integrand = 1/(x^(3//2)*(a + b*x)^(3//2)), result = 2/(a*sqrt(x)*sqrt(a + b*x)) - (4*sqrt(a + b*x))/(a^2*sqrt(x)), integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^(5//2)*(a + b*x)^(3//2)), result = 2/(a*x^(3//2)*sqrt(a + b*x)) - (8*sqrt(a + b*x))/(3*a^2*x^(3//2)) + (16*b*sqrt(a + b*x))/(3*a^3*sqrt(x)), integration_var = x, mistery_val = 3),
#     (integrand = 1/(x^(7//2)*(a + b*x)^(3//2)), result = 2/(a*x^(5//2)*sqrt(a + b*x)) - (12*sqrt(a + b*x))/(5*a^2*x^(5//2)) + (16*b*sqrt(a + b*x))/(5*a^3*x^(3//2)) - (32*b^2*sqrt(a + b*x))/(5*a^4*sqrt(x)), integration_var = x, mistery_val = 4),
# 
# 
#     (integrand = x^(5//2)/(a + b*x)^(5//2), result = -((2*x^(5//2))/(3*b*(a + b*x)^(3//2))) - (10*x^(3//2))/(3*b^2*sqrt(a + b*x)) + (5*sqrt(x)*sqrt(a + b*x))/b^3 - (5*a*atanh((sqrt(b)*sqrt(x))/sqrt(a + b*x)))/b^(7//2), integration_var = x, mistery_val = 6),
#     (integrand = x^(3//2)/(a + b*x)^(5//2), result = -((2*x^(3//2))/(3*b*(a + b*x)^(3//2))) - (2*sqrt(x))/(b^2*sqrt(a + b*x)) + (2*atanh((sqrt(b)*sqrt(x))/sqrt(a + b*x)))/b^(5//2), integration_var = x, mistery_val = 5),
#     (integrand = sqrt(x)/(a + b*x)^(5//2), result = (2*x^(3//2))/(3*a*(a + b*x)^(3//2)), integration_var = x, mistery_val = 1),
#     (integrand = 1/(sqrt(x)*(a + b*x)^(5//2)), result = (2*sqrt(x))/(3*a*(a + b*x)^(3//2)) + (4*sqrt(x))/(3*a^2*sqrt(a + b*x)), integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^(3//2)*(a + b*x)^(5//2)), result = 2/(3*a*sqrt(x)*(a + b*x)^(3//2)) + 8/(3*a^2*sqrt(x)*sqrt(a + b*x)) - (16*sqrt(a + b*x))/(3*a^3*sqrt(x)), integration_var = x, mistery_val = 3),
#     (integrand = 1/(x^(5//2)*(a + b*x)^(5//2)), result = 2/(3*a*x^(3//2)*(a + b*x)^(3//2)) + 4/(a^2*x^(3//2)*sqrt(a + b*x)) - (16*sqrt(a + b*x))/(3*a^3*x^(3//2)) + (32*b*sqrt(a + b*x))/(3*a^4*sqrt(x)), integration_var = x, mistery_val = 4),
# 
# 
#     (integrand = x^(5//2)/sqrt(a - b*x), result = -((5*a^2*sqrt(x)*sqrt(a - b*x))/(8*b^3)) - (5*a*x^(3//2)*sqrt(a - b*x))/(12*b^2) - (x^(5//2)*sqrt(a - b*x))/(3*b) + (5*a^3*atan((sqrt(b)*sqrt(x))/sqrt(a - b*x)))/(8*b^(7//2)), integration_var = x, mistery_val = 6),
#     (integrand = x^(3//2)/sqrt(a - b*x), result = -((3*a*sqrt(x)*sqrt(a - b*x))/(4*b^2)) - (x^(3//2)*sqrt(a - b*x))/(2*b) + (3*a^2*atan((sqrt(b)*sqrt(x))/sqrt(a - b*x)))/(4*b^(5//2)), integration_var = x, mistery_val = 5),
#     (integrand = sqrt(x)/sqrt(a - b*x), result = -((sqrt(x)*sqrt(a - b*x))/b) + (a*atan((sqrt(b)*sqrt(x))/sqrt(a - b*x)))/b^(3//2), integration_var = x, mistery_val = 4),
#     (integrand = 1/(sqrt(x)*sqrt(a - b*x)), result = (2*atan((sqrt(b)*sqrt(x))/sqrt(a - b*x)))/sqrt(b), integration_var = x, mistery_val = 3),
#     (integrand = 1/(x^(3//2)*sqrt(a - b*x)), result = (-2*sqrt(a - b*x))/(a*sqrt(x)), integration_var = x, mistery_val = 1),
#     (integrand = 1/(x^(5//2)*sqrt(a - b*x)), result = -((2*sqrt(a - b*x))/(3*a*x^(3//2))) - (4*b*sqrt(a - b*x))/(3*a^2*sqrt(x)), integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = x^(5//2)/(a - b*x)^(3//2), result = (2*x^(5//2))/(b*sqrt(a - b*x)) + (15*a*sqrt(x)*sqrt(a - b*x))/(4*b^3) + (5*x^(3//2)*sqrt(a - b*x))/(2*b^2) - (15*a^2*atan((sqrt(b)*sqrt(x))/sqrt(a - b*x)))/(4*b^(7//2)), integration_var = x, mistery_val = 6),
#     (integrand = x^(3//2)/(a - b*x)^(3//2), result = (2*x^(3//2))/(b*sqrt(a - b*x)) + (3*sqrt(x)*sqrt(a - b*x))/b^2 - (3*a*atan((sqrt(b)*sqrt(x))/sqrt(a - b*x)))/b^(5//2), integration_var = x, mistery_val = 5),
#     (integrand = sqrt(x)/(a - b*x)^(3//2), result = (2*sqrt(x))/(b*sqrt(a - b*x)) - (2*atan((sqrt(b)*sqrt(x))/sqrt(a - b*x)))/b^(3//2), integration_var = x, mistery_val = 4),
#     (integrand = 1/(sqrt(x)*(a - b*x)^(3//2)), result = (2*sqrt(x))/(a*sqrt(a - b*x)), integration_var = x, mistery_val = 1),
#     (integrand = 1/(x^(3//2)*(a - b*x)^(3//2)), result = 2/(a*sqrt(x)*sqrt(a - b*x)) - (4*sqrt(a - b*x))/(a^2*sqrt(x)), integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^(5//2)*(a - b*x)^(3//2)), result = 2/(a*x^(3//2)*sqrt(a - b*x)) - (8*sqrt(a - b*x))/(3*a^2*x^(3//2)) - (16*b*sqrt(a - b*x))/(3*a^3*sqrt(x)), integration_var = x, mistery_val = 3),
# 
# 
#     (integrand = x^(5//2)/(a - b*x)^(5//2), result = (2*x^(5//2))/(3*b*(a - b*x)^(3//2)) - (10*x^(3//2))/(3*b^2*sqrt(a - b*x)) - (5*sqrt(x)*sqrt(a - b*x))/b^3 + (5*a*atan((sqrt(b)*sqrt(x))/sqrt(a - b*x)))/b^(7//2), integration_var = x, mistery_val = 6),
#     (integrand = x^(3//2)/(a - b*x)^(5//2), result = (2*x^(3//2))/(3*b*(a - b*x)^(3//2)) - (2*sqrt(x))/(b^2*sqrt(a - b*x)) + (2*atan((sqrt(b)*sqrt(x))/sqrt(a - b*x)))/b^(5//2), integration_var = x, mistery_val = 5),
#     (integrand = sqrt(x)/(a - b*x)^(5//2), result = (2*x^(3//2))/(3*a*(a - b*x)^(3//2)), integration_var = x, mistery_val = 1),
#     (integrand = 1/(sqrt(x)*(a - b*x)^(5//2)), result = (2*sqrt(x))/(3*a*(a - b*x)^(3//2)) + (4*sqrt(x))/(3*a^2*sqrt(a - b*x)), integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^(3//2)*(a - b*x)^(5//2)), result = 2/(3*a*sqrt(x)*(a - b*x)^(3//2)) + 8/(3*a^2*sqrt(x)*sqrt(a - b*x)) - (16*sqrt(a - b*x))/(3*a^3*sqrt(x)), integration_var = x, mistery_val = 3),
#     (integrand = 1/(x^(5//2)*(a - b*x)^(5//2)), result = 2/(3*a*x^(3//2)*(a - b*x)^(3//2)) + 4/(a^2*x^(3//2)*sqrt(a - b*x)) - (16*sqrt(a - b*x))/(3*a^3*x^(3//2)) - (32*b*sqrt(a - b*x))/(3*a^4*sqrt(x)), integration_var = x, mistery_val = 4),
# 
# 
#     (integrand = x^(5//2)/sqrt(2 + b*x), result = (5*sqrt(x)*sqrt(2 + b*x))/(2*b^3) - (5*x^(3//2)*sqrt(2 + b*x))/(6*b^2) + (x^(5//2)*sqrt(2 + b*x))/(3*b) - (5*asinh((sqrt(b)*sqrt(x))/sqrt(2)))/b^(7//2), integration_var = x, mistery_val = 5),
#     (integrand = x^(3//2)/sqrt(2 + b*x), result = -((3*sqrt(x)*sqrt(2 + b*x))/(2*b^2)) + (x^(3//2)*sqrt(2 + b*x))/(2*b) + (3*asinh((sqrt(b)*sqrt(x))/sqrt(2)))/b^(5//2), integration_var = x, mistery_val = 4),
#     (integrand = sqrt(x)/sqrt(2 + b*x), result = (sqrt(x)*sqrt(2 + b*x))/b - (2*asinh((sqrt(b)*sqrt(x))/sqrt(2)))/b^(3//2), integration_var = x, mistery_val = 3),
#     (integrand = 1/(sqrt(x)*sqrt(2 + b*x)), result = (2*asinh((sqrt(b)*sqrt(x))/sqrt(2)))/sqrt(b), integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^(3//2)*sqrt(2 + b*x)), result = -(sqrt(2 + b*x)/sqrt(x)), integration_var = x, mistery_val = 1),
#     (integrand = 1/(x^(5//2)*sqrt(2 + b*x)), result = -(sqrt(2 + b*x)/(3*x^(3//2))) + (b*sqrt(2 + b*x))/(3*sqrt(x)), integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^(7//2)*sqrt(2 + b*x)), result = -(sqrt(2 + b*x)/(5*x^(5//2))) + (2*b*sqrt(2 + b*x))/(15*x^(3//2)) - (2*b^2*sqrt(2 + b*x))/(15*sqrt(x)), integration_var = x, mistery_val = 3),
#     (integrand = 1/(x^(9//2)*sqrt(2 + b*x)), result = -(sqrt(2 + b*x)/(7*x^(7//2))) + (3*b*sqrt(2 + b*x))/(35*x^(5//2)) - (2*b^2*sqrt(2 + b*x))/(35*x^(3//2)) + (2*b^3*sqrt(2 + b*x))/(35*sqrt(x)), integration_var = x, mistery_val = 4),
# 
# 
#     (integrand = x^(5//2)/(2 + b*x)^(3//2), result = -((2*x^(5//2))/(b*sqrt(2 + b*x))) - (15*sqrt(x)*sqrt(2 + b*x))/(2*b^3) + (5*x^(3//2)*sqrt(2 + b*x))/(2*b^2) + (15*asinh((sqrt(b)*sqrt(x))/sqrt(2)))/b^(7//2), integration_var = x, mistery_val = 5),
#     (integrand = x^(3//2)/(2 + b*x)^(3//2), result = -((2*x^(3//2))/(b*sqrt(2 + b*x))) + (3*sqrt(x)*sqrt(2 + b*x))/b^2 - (6*asinh((sqrt(b)*sqrt(x))/sqrt(2)))/b^(5//2), integration_var = x, mistery_val = 4),
#     (integrand = sqrt(x)/(2 + b*x)^(3//2), result = (-2*sqrt(x))/(b*sqrt(2 + b*x)) + (2*asinh((sqrt(b)*sqrt(x))/sqrt(2)))/b^(3//2), integration_var = x, mistery_val = 3),
#     (integrand = 1/(sqrt(x)*(2 + b*x)^(3//2)), result = sqrt(x)/sqrt(2 + b*x), integration_var = x, mistery_val = 1),
#     (integrand = 1/(x^(3//2)*(2 + b*x)^(3//2)), result = 1/(sqrt(x)*sqrt(2 + b*x)) - sqrt(2 + b*x)/sqrt(x), integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^(5//2)*(2 + b*x)^(3//2)), result = 1/(x^(3//2)*sqrt(2 + b*x)) - (2*sqrt(2 + b*x))/(3*x^(3//2)) + (2*b*sqrt(2 + b*x))/(3*sqrt(x)), integration_var = x, mistery_val = 3),
#     (integrand = 1/(x^(7//2)*(2 + b*x)^(3//2)), result = 1/(x^(5//2)*sqrt(2 + b*x)) - (3*sqrt(2 + b*x))/(5*x^(5//2)) + (2*b*sqrt(2 + b*x))/(5*x^(3//2)) - (2*b^2*sqrt(2 + b*x))/(5*sqrt(x)), integration_var = x, mistery_val = 4),
# 
# 
#     (integrand = x^(5//2)/(2 + b*x)^(5//2), result = -((2*x^(5//2))/(3*b*(2 + b*x)^(3//2))) - (10*x^(3//2))/(3*b^2*sqrt(2 + b*x)) + (5*sqrt(x)*sqrt(2 + b*x))/b^3 - (10*asinh((sqrt(b)*sqrt(x))/sqrt(2)))/b^(7//2), integration_var = x, mistery_val = 5),
#     (integrand = x^(3//2)/(2 + b*x)^(5//2), result = -((2*x^(3//2))/(3*b*(2 + b*x)^(3//2))) - (2*sqrt(x))/(b^2*sqrt(2 + b*x)) + (2*asinh((sqrt(b)*sqrt(x))/sqrt(2)))/b^(5//2), integration_var = x, mistery_val = 4),
#     (integrand = sqrt(x)/(2 + b*x)^(5//2), result = x^(3//2)/(3*(2 + b*x)^(3//2)), integration_var = x, mistery_val = 1),
#     (integrand = 1/(sqrt(x)*(2 + b*x)^(5//2)), result = sqrt(x)/(3*(2 + b*x)^(3//2)) + sqrt(x)/(3*sqrt(2 + b*x)), integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^(3//2)*(2 + b*x)^(5//2)), result = 1/(3*sqrt(x)*(2 + b*x)^(3//2)) + 2/(3*sqrt(x)*sqrt(2 + b*x)) - (2*sqrt(2 + b*x))/(3*sqrt(x)), integration_var = x, mistery_val = 3),
#     (integrand = 1/(x^(5//2)*(2 + b*x)^(5//2)), result = 1/(3*x^(3//2)*(2 + b*x)^(3//2)) + 1/(x^(3//2)*sqrt(2 + b*x)) - (2*sqrt(2 + b*x))/(3*x^(3//2)) + (2*b*sqrt(2 + b*x))/(3*sqrt(x)), integration_var = x, mistery_val = 4),
# 
# 
#     (integrand = x^(5//2)/sqrt(2 - b*x), result = -((5*sqrt(x)*sqrt(2 - b*x))/(2*b^3)) - (5*x^(3//2)*sqrt(2 - b*x))/(6*b^2) - (x^(5//2)*sqrt(2 - b*x))/(3*b) + (5*asin((sqrt(b)*sqrt(x))/sqrt(2)))/b^(7//2), integration_var = x, mistery_val = 5),
#     (integrand = x^(3//2)/sqrt(2 - b*x), result = -((3*sqrt(x)*sqrt(2 - b*x))/(2*b^2)) - (x^(3//2)*sqrt(2 - b*x))/(2*b) + (3*asin((sqrt(b)*sqrt(x))/sqrt(2)))/b^(5//2), integration_var = x, mistery_val = 4),
#     (integrand = sqrt(x)/sqrt(2 - b*x), result = -((sqrt(x)*sqrt(2 - b*x))/b) + (2*asin((sqrt(b)*sqrt(x))/sqrt(2)))/b^(3//2), integration_var = x, mistery_val = 3),
#     (integrand = 1/(sqrt(x)*sqrt(2 - b*x)), result = (2*asin((sqrt(b)*sqrt(x))/sqrt(2)))/sqrt(b), integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^(3//2)*sqrt(2 - b*x)), result = -(sqrt(2 - b*x)/sqrt(x)), integration_var = x, mistery_val = 1),
#     (integrand = 1/(x^(5//2)*sqrt(2 - b*x)), result = -(sqrt(2 - b*x)/(3*x^(3//2))) - (b*sqrt(2 - b*x))/(3*sqrt(x)), integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = x^(5//2)/(2 - b*x)^(3//2), result = (2*x^(5//2))/(b*sqrt(2 - b*x)) + (15*sqrt(x)*sqrt(2 - b*x))/(2*b^3) + (5*x^(3//2)*sqrt(2 - b*x))/(2*b^2) - (15*asin((sqrt(b)*sqrt(x))/sqrt(2)))/b^(7//2), integration_var = x, mistery_val = 5),
#     (integrand = x^(3//2)/(2 - b*x)^(3//2), result = (2*x^(3//2))/(b*sqrt(2 - b*x)) + (3*sqrt(x)*sqrt(2 - b*x))/b^2 - (6*asin((sqrt(b)*sqrt(x))/sqrt(2)))/b^(5//2), integration_var = x, mistery_val = 4),
#     (integrand = sqrt(x)/(2 - b*x)^(3//2), result = (2*sqrt(x))/(b*sqrt(2 - b*x)) - (2*asin((sqrt(b)*sqrt(x))/sqrt(2)))/b^(3//2), integration_var = x, mistery_val = 3),
#     (integrand = 1/(sqrt(x)*(2 - b*x)^(3//2)), result = sqrt(x)/sqrt(2 - b*x), integration_var = x, mistery_val = 1),
#     (integrand = 1/(x^(3//2)*(2 - b*x)^(3//2)), result = 1/(sqrt(x)*sqrt(2 - b*x)) - sqrt(2 - b*x)/sqrt(x), integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^(5//2)*(2 - b*x)^(3//2)), result = 1/(x^(3//2)*sqrt(2 - b*x)) - (2*sqrt(2 - b*x))/(3*x^(3//2)) - (2*b*sqrt(2 - b*x))/(3*sqrt(x)), integration_var = x, mistery_val = 3),
# 
# 
#     (integrand = x^(5//2)/(2 - b*x)^(5//2), result = (2*x^(5//2))/(3*b*(2 - b*x)^(3//2)) - (10*x^(3//2))/(3*b^2*sqrt(2 - b*x)) - (5*sqrt(x)*sqrt(2 - b*x))/b^3 + (10*asin((sqrt(b)*sqrt(x))/sqrt(2)))/b^(7//2), integration_var = x, mistery_val = 5),
#     (integrand = x^(3//2)/(2 - b*x)^(5//2), result = (2*x^(3//2))/(3*b*(2 - b*x)^(3//2)) - (2*sqrt(x))/(b^2*sqrt(2 - b*x)) + (2*asin((sqrt(b)*sqrt(x))/sqrt(2)))/b^(5//2), integration_var = x, mistery_val = 4),
#     (integrand = sqrt(x)/(2 - b*x)^(5//2), result = x^(3//2)/(3*(2 - b*x)^(3//2)), integration_var = x, mistery_val = 1),
#     (integrand = 1/(sqrt(x)*(2 - b*x)^(5//2)), result = sqrt(x)/(3*(2 - b*x)^(3//2)) + sqrt(x)/(3*sqrt(2 - b*x)), integration_var = x, mistery_val = 2),
#     (integrand = 1/(x^(3//2)*(2 - b*x)^(5//2)), result = 1/(3*sqrt(x)*(2 - b*x)^(3//2)) + 2/(3*sqrt(x)*sqrt(2 - b*x)) - (2*sqrt(2 - b*x))/(3*sqrt(x)), integration_var = x, mistery_val = 3),
#     (integrand = 1/(x^(5//2)*(2 - b*x)^(5//2)), result = 1/(3*x^(3//2)*(2 - b*x)^(3//2)) + 1/(x^(3//2)*sqrt(2 - b*x)) - (2*sqrt(2 - b*x))/(3*x^(3//2)) - (2*b*sqrt(2 - b*x))/(3*sqrt(x)), integration_var = x, mistery_val = 4),
# 
# 
#     (integrand = sqrt(x)/sqrt(1 - x), result = (-sqrt(1 - x))*sqrt(x) - (1//2)*asin(1 - 2*x), integration_var = x, mistery_val = 4),
#     (integrand = 1/(sqrt(x)*sqrt(1 - x)), result = -asin(1 - 2*x), integration_var = x, mistery_val = 3),
#     (integrand = 1/(sqrt(x)*sqrt(1 - b*x)), result = (2*asin(sqrt(b)*sqrt(x)))/sqrt(b), integration_var = x, mistery_val = 2),
# 
# 
# # ::Subsection::Closed::
# # Integrands of the form (c x)^(m/3) (a+b x)^n
# 
# 
# # ::Subsubsection::Closed::
# # n>0
# 
# 
#     (integrand = x^(5//3)*(a + b*x), result = (3*a*x^(8//3))/8 + (3*b*x^(11//3))/11, integration_var = x, mistery_val = 2),
#     (integrand = x^(4//3)*(a + b*x), result = (3*a*x^(7//3))/7 + (3*b*x^(10//3))/10, integration_var = x, mistery_val = 2),
#     (integrand = x^(2//3)*(a + b*x), result = (3*a*x^(5//3))/5 + (3*b*x^(8//3))/8, integration_var = x, mistery_val = 2),
#     (integrand = x^(1//3)*(a + b*x), result = (3*a*x^(4//3))/4 + (3*b*x^(7//3))/7, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)/x^(1//3), result = (3*a*x^(2//3))/2 + (3*b*x^(5//3))/5, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)/x^(2//3), result = 3*a*x^(1//3) + (3*b*x^(4//3))/4, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)/x^(4//3), result = (-3*a)/x^(1//3) + (3*b*x^(2//3))/2, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)/x^(5//3), result = (-3*a)/(2*x^(2//3)) + 3*b*x^(1//3), integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = x^(5//3)*(a + b*x)^2, result = (3*a^2*x^(8//3))/8 + (6*a*b*x^(11//3))/11 + (3*b^2*x^(14//3))/14, integration_var = x, mistery_val = 2),
#     (integrand = x^(4//3)*(a + b*x)^2, result = (3*a^2*x^(7//3))/7 + (3*a*b*x^(10//3))/5 + (3*b^2*x^(13//3))/13, integration_var = x, mistery_val = 2),
#     (integrand = x^(2//3)*(a + b*x)^2, result = (3*a^2*x^(5//3))/5 + (3*a*b*x^(8//3))/4 + (3*b^2*x^(11//3))/11, integration_var = x, mistery_val = 2),
#     (integrand = x^(1//3)*(a + b*x)^2, result = (3*a^2*x^(4//3))/4 + (6*a*b*x^(7//3))/7 + (3*b^2*x^(10//3))/10, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^2/x^(1//3), result = (3*a^2*x^(2//3))/2 + (6*a*b*x^(5//3))/5 + (3*b^2*x^(8//3))/8, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^2/x^(2//3), result = 3*a^2*x^(1//3) + (3*a*b*x^(4//3))/2 + (3*b^2*x^(7//3))/7, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^2/x^(4//3), result = (-3*a^2)/x^(1//3) + 3*a*b*x^(2//3) + (3*b^2*x^(5//3))/5, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^2/x^(5//3), result = (-3*a^2)/(2*x^(2//3)) + 6*a*b*x^(1//3) + (3*b^2*x^(4//3))/4, integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = x^(5//3)*(a + b*x)^3, result = (3*a^3*x^(8//3))/8 + (9*a^2*b*x^(11//3))/11 + (9*a*b^2*x^(14//3))/14 + (3*b^3*x^(17//3))/17, integration_var = x, mistery_val = 2),
#     (integrand = x^(4//3)*(a + b*x)^3, result = (3*a^3*x^(7//3))/7 + (9*a^2*b*x^(10//3))/10 + (9*a*b^2*x^(13//3))/13 + (3*b^3*x^(16//3))/16, integration_var = x, mistery_val = 2),
#     (integrand = x^(2//3)*(a + b*x)^3, result = (3*a^3*x^(5//3))/5 + (9*a^2*b*x^(8//3))/8 + (9*a*b^2*x^(11//3))/11 + (3*b^3*x^(14//3))/14, integration_var = x, mistery_val = 2),
#     (integrand = x^(1//3)*(a + b*x)^3, result = (3*a^3*x^(4//3))/4 + (9*a^2*b*x^(7//3))/7 + (9*a*b^2*x^(10//3))/10 + (3*b^3*x^(13//3))/13, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^3/x^(1//3), result = (3*a^3*x^(2//3))/2 + (9*a^2*b*x^(5//3))/5 + (9*a*b^2*x^(8//3))/8 + (3*b^3*x^(11//3))/11, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^3/x^(2//3), result = 3*a^3*x^(1//3) + (9*a^2*b*x^(4//3))/4 + (9*a*b^2*x^(7//3))/7 + (3*b^3*x^(10//3))/10, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^3/x^(4//3), result = (-3*a^3)/x^(1//3) + (9*a^2*b*x^(2//3))/2 + (9*a*b^2*x^(5//3))/5 + (3*b^3*x^(8//3))/8, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^3/x^(5//3), result = (-3*a^3)/(2*x^(2//3)) + 9*a^2*b*x^(1//3) + (9*a*b^2*x^(4//3))/4 + (3*b^3*x^(7//3))/7, integration_var = x, mistery_val = 2),
# 
# 
# # ::Subsubsection::Closed::
# # n<0
# 
# 
#     (integrand = x^(5//3)/(a + b*x), result = -((3*a*x^(2//3))/(2*b^2)) + (3*x^(5//3))/(5*b) - (sqrt(3)*a^(5//3)*atan((a^(1//3) - 2*b^(1//3)*x^(1//3))/(sqrt(3)*a^(1//3))))/b^(8//3) - (3*a^(5//3)*log(a^(1//3) + b^(1//3)*x^(1//3)))/(2*b^(8//3)) + (a^(5//3)*log(a + b*x))/(2*b^(8//3)), integration_var = x, mistery_val = 6),
#     (integrand = x^(4//3)/(a + b*x), result = -((3*a*x^(1//3))/b^2) + (3*x^(4//3))/(4*b) - (sqrt(3)*a^(4//3)*atan((a^(1//3) - 2*b^(1//3)*x^(1//3))/(sqrt(3)*a^(1//3))))/b^(7//3) + (3*a^(4//3)*log(a^(1//3) + b^(1//3)*x^(1//3)))/(2*b^(7//3)) - (a^(4//3)*log(a + b*x))/(2*b^(7//3)), integration_var = x, mistery_val = 6),
#     (integrand = x^(2//3)/(a + b*x), result = (3*x^(2//3))/(2*b) + (sqrt(3)*a^(2//3)*atan((a^(1//3) - 2*b^(1//3)*x^(1//3))/(sqrt(3)*a^(1//3))))/b^(5//3) + (3*a^(2//3)*log(a^(1//3) + b^(1//3)*x^(1//3)))/(2*b^(5//3)) - (a^(2//3)*log(a + b*x))/(2*b^(5//3)), integration_var = x, mistery_val = 5),
#     (integrand = x^(1//3)/(a + b*x), result = (3*x^(1//3))/b + (sqrt(3)*a^(1//3)*atan((a^(1//3) - 2*b^(1//3)*x^(1//3))/(sqrt(3)*a^(1//3))))/b^(4//3) - (3*a^(1//3)*log(a^(1//3) + b^(1//3)*x^(1//3)))/(2*b^(4//3)) + (a^(1//3)*log(a + b*x))/(2*b^(4//3)), integration_var = x, mistery_val = 5),
#     (integrand = 1/(x^(1//3)*(a + b*x)), result = -((sqrt(3)*atan((a^(1//3) - 2*b^(1//3)*x^(1//3))/(sqrt(3)*a^(1//3))))/(a^(1//3)*b^(2//3))) - (3*log(a^(1//3) + b^(1//3)*x^(1//3)))/(2*a^(1//3)*b^(2//3)) + log(a + b*x)/(2*a^(1//3)*b^(2//3)), integration_var = x, mistery_val = 4),
#     (integrand = 1/(x^(2//3)*(a + b*x)), result = -((sqrt(3)*atan((a^(1//3) - 2*b^(1//3)*x^(1//3))/(sqrt(3)*a^(1//3))))/(a^(2//3)*b^(1//3))) + (3*log(a^(1//3) + b^(1//3)*x^(1//3)))/(2*a^(2//3)*b^(1//3)) - log(a + b*x)/(2*a^(2//3)*b^(1//3)), integration_var = x, mistery_val = 4),
#     (integrand = 1/(x^(4//3)*(a + b*x)), result = -(3/(a*x^(1//3))) + (sqrt(3)*b^(1//3)*atan((a^(1//3) - 2*b^(1//3)*x^(1//3))/(sqrt(3)*a^(1//3))))/a^(4//3) + (3*b^(1//3)*log(a^(1//3) + b^(1//3)*x^(1//3)))/(2*a^(4//3)) - (b^(1//3)*log(a + b*x))/(2*a^(4//3)), integration_var = x, mistery_val = 5),
#     (integrand = 1/(x^(5//3)*(a + b*x)), result = -(3/(2*a*x^(2//3))) + (sqrt(3)*b^(2//3)*atan((a^(1//3) - 2*b^(1//3)*x^(1//3))/(sqrt(3)*a^(1//3))))/a^(5//3) - (3*b^(2//3)*log(a^(1//3) + b^(1//3)*x^(1//3)))/(2*a^(5//3)) + (b^(2//3)*log(a + b*x))/(2*a^(5//3)), integration_var = x, mistery_val = 5),
# 
# 
#     (integrand = x^(5//3)/(a + b*x)^2, result = (5*x^(2//3))/(2*b^2) - x^(5//3)/(b*(a + b*x)) + (5*a^(2//3)*atan((a^(1//3) - 2*b^(1//3)*x^(1//3))/(sqrt(3)*a^(1//3))))/(sqrt(3)*b^(8//3)) + (5*a^(2//3)*log(a^(1//3) + b^(1//3)*x^(1//3)))/(2*b^(8//3)) - (5*a^(2//3)*log(a + b*x))/(6*b^(8//3)), integration_var = x, mistery_val = 6),
#     (integrand = x^(4//3)/(a + b*x)^2, result = (4*x^(1//3))/b^2 - x^(4//3)/(b*(a + b*x)) + (4*a^(1//3)*atan((a^(1//3) - 2*b^(1//3)*x^(1//3))/(sqrt(3)*a^(1//3))))/(sqrt(3)*b^(7//3)) - (2*a^(1//3)*log(a^(1//3) + b^(1//3)*x^(1//3)))/b^(7//3) + (2*a^(1//3)*log(a + b*x))/(3*b^(7//3)), integration_var = x, mistery_val = 6),
#     (integrand = x^(2//3)/(a + b*x)^2, result = -(x^(2//3)/(b*(a + b*x))) - (2*atan((a^(1//3) - 2*b^(1//3)*x^(1//3))/(sqrt(3)*a^(1//3))))/(sqrt(3)*a^(1//3)*b^(5//3)) - log(a^(1//3) + b^(1//3)*x^(1//3))/(a^(1//3)*b^(5//3)) + log(a + b*x)/(3*a^(1//3)*b^(5//3)), integration_var = x, mistery_val = 5),
#     (integrand = x^(1//3)/(a + b*x)^2, result = -(x^(1//3)/(b*(a + b*x))) - atan((a^(1//3) - 2*b^(1//3)*x^(1//3))/(sqrt(3)*a^(1//3)))/(sqrt(3)*a^(2//3)*b^(4//3)) + log(a^(1//3) + b^(1//3)*x^(1//3))/(2*a^(2//3)*b^(4//3)) - log(a + b*x)/(6*a^(2//3)*b^(4//3)), integration_var = x, mistery_val = 5),
#     (integrand = 1/(x^(1//3)*(a + b*x)^2), result = x^(2//3)/(a*(a + b*x)) - atan((a^(1//3) - 2*b^(1//3)*x^(1//3))/(sqrt(3)*a^(1//3)))/(sqrt(3)*a^(4//3)*b^(2//3)) - log(a^(1//3) + b^(1//3)*x^(1//3))/(2*a^(4//3)*b^(2//3)) + log(a + b*x)/(6*a^(4//3)*b^(2//3)), integration_var = x, mistery_val = 5),
#     (integrand = 1/(x^(2//3)*(a + b*x)^2), result = x^(1//3)/(a*(a + b*x)) - (2*atan((a^(1//3) - 2*b^(1//3)*x^(1//3))/(sqrt(3)*a^(1//3))))/(sqrt(3)*a^(5//3)*b^(1//3)) + log(a^(1//3) + b^(1//3)*x^(1//3))/(a^(5//3)*b^(1//3)) - log(a + b*x)/(3*a^(5//3)*b^(1//3)), integration_var = x, mistery_val = 5),
#     (integrand = 1/(x^(4//3)*(a + b*x)^2), result = -(4/(a^2*x^(1//3))) + 1/(a*x^(1//3)*(a + b*x)) + (4*b^(1//3)*atan((a^(1//3) - 2*b^(1//3)*x^(1//3))/(sqrt(3)*a^(1//3))))/(sqrt(3)*a^(7//3)) + (2*b^(1//3)*log(a^(1//3) + b^(1//3)*x^(1//3)))/a^(7//3) - (2*b^(1//3)*log(a + b*x))/(3*a^(7//3)), integration_var = x, mistery_val = 6),
#     (integrand = 1/(x^(5//3)*(a + b*x)^2), result = -(5/(2*a^2*x^(2//3))) + 1/(a*x^(2//3)*(a + b*x)) + (5*b^(2//3)*atan((a^(1//3) - 2*b^(1//3)*x^(1//3))/(sqrt(3)*a^(1//3))))/(sqrt(3)*a^(8//3)) - (5*b^(2//3)*log(a^(1//3) + b^(1//3)*x^(1//3)))/(2*a^(8//3)) + (5*b^(2//3)*log(a + b*x))/(6*a^(8//3)), integration_var = x, mistery_val = 6),
# 
# 
#     (integrand = x^(5//3)/(a + b*x)^3, result = -(x^(5//3)/(2*b*(a + b*x)^2)) - (5*x^(2//3))/(6*b^2*(a + b*x)) - (5*atan((a^(1//3) - 2*b^(1//3)*x^(1//3))/(sqrt(3)*a^(1//3))))/(3*sqrt(3)*a^(1//3)*b^(8//3)) - (5*log(a^(1//3) + b^(1//3)*x^(1//3)))/(6*a^(1//3)*b^(8//3)) + (5*log(a + b*x))/(18*a^(1//3)*b^(8//3)), integration_var = x, mistery_val = 6),
#     (integrand = x^(4//3)/(a + b*x)^3, result = -(x^(4//3)/(2*b*(a + b*x)^2)) - (2*x^(1//3))/(3*b^2*(a + b*x)) - (2*atan((a^(1//3) - 2*b^(1//3)*x^(1//3))/(sqrt(3)*a^(1//3))))/(3*sqrt(3)*a^(2//3)*b^(7//3)) + log(a^(1//3) + b^(1//3)*x^(1//3))/(3*a^(2//3)*b^(7//3)) - log(a + b*x)/(9*a^(2//3)*b^(7//3)), integration_var = x, mistery_val = 6),
#     (integrand = x^(2//3)/(a + b*x)^3, result = -(x^(2//3)/(2*b*(a + b*x)^2)) + x^(2//3)/(3*a*b*(a + b*x)) - atan((a^(1//3) - 2*b^(1//3)*x^(1//3))/(sqrt(3)*a^(1//3)))/(3*sqrt(3)*a^(4//3)*b^(5//3)) - log(a^(1//3) + b^(1//3)*x^(1//3))/(6*a^(4//3)*b^(5//3)) + log(a + b*x)/(18*a^(4//3)*b^(5//3)), integration_var = x, mistery_val = 6),
#     (integrand = x^(1//3)/(a + b*x)^3, result = -(x^(1//3)/(2*b*(a + b*x)^2)) + x^(1//3)/(6*a*b*(a + b*x)) - atan((a^(1//3) - 2*b^(1//3)*x^(1//3))/(sqrt(3)*a^(1//3)))/(3*sqrt(3)*a^(5//3)*b^(4//3)) + log(a^(1//3) + b^(1//3)*x^(1//3))/(6*a^(5//3)*b^(4//3)) - log(a + b*x)/(18*a^(5//3)*b^(4//3)), integration_var = x, mistery_val = 6),
#     (integrand = 1/(x^(1//3)*(a + b*x)^3), result = x^(2//3)/(2*a*(a + b*x)^2) + (2*x^(2//3))/(3*a^2*(a + b*x)) - (2*atan((a^(1//3) - 2*b^(1//3)*x^(1//3))/(sqrt(3)*a^(1//3))))/(3*sqrt(3)*a^(7//3)*b^(2//3)) - log(a^(1//3) + b^(1//3)*x^(1//3))/(3*a^(7//3)*b^(2//3)) + log(a + b*x)/(9*a^(7//3)*b^(2//3)), integration_var = x, mistery_val = 6),
#     (integrand = 1/(x^(2//3)*(a + b*x)^3), result = x^(1//3)/(2*a*(a + b*x)^2) + (5*x^(1//3))/(6*a^2*(a + b*x)) - (5*atan((a^(1//3) - 2*b^(1//3)*x^(1//3))/(sqrt(3)*a^(1//3))))/(3*sqrt(3)*a^(8//3)*b^(1//3)) + (5*log(a^(1//3) + b^(1//3)*x^(1//3)))/(6*a^(8//3)*b^(1//3)) - (5*log(a + b*x))/(18*a^(8//3)*b^(1//3)), integration_var = x, mistery_val = 6),
#     (integrand = 1/(x^(4//3)*(a + b*x)^3), result = -(14/(3*a^3*x^(1//3))) + 1/(2*a*x^(1//3)*(a + b*x)^2) + 7/(6*a^2*x^(1//3)*(a + b*x)) + (14*b^(1//3)*atan((a^(1//3) - 2*b^(1//3)*x^(1//3))/(sqrt(3)*a^(1//3))))/(3*sqrt(3)*a^(10//3)) + (7*b^(1//3)*log(a^(1//3) + b^(1//3)*x^(1//3)))/(3*a^(10//3)) - (7*b^(1//3)*log(a + b*x))/(9*a^(10//3)), integration_var = x, mistery_val = 7),
#     (integrand = 1/(x^(5//3)*(a + b*x)^3), result = -(10/(3*a^3*x^(2//3))) + 1/(2*a*x^(2//3)*(a + b*x)^2) + 4/(3*a^2*x^(2//3)*(a + b*x)) + (20*b^(2//3)*atan((a^(1//3) - 2*b^(1//3)*x^(1//3))/(sqrt(3)*a^(1//3))))/(3*sqrt(3)*a^(11//3)) - (10*b^(2//3)*log(a^(1//3) + b^(1//3)*x^(1//3)))/(3*a^(11//3)) + (10*b^(2//3)*log(a + b*x))/(9*a^(11//3)), integration_var = x, mistery_val = 7),
# 
# 
# # ::Subsection::Closed::
# # Integrands of the form (c x)^(m/4) (a+b x)^n
# 
# 
#     (integrand = (1 - x)^(1//4)/(1 + x), result = 4*(1 - x)^(1//4) - 2*2^(1//4)*atan((1 - x)^(1//4)/2^(1//4)) - 2*2^(1//4)*atanh((1 - x)^(1//4)/2^(1//4)), integration_var = x, mistery_val = 5),
# 
# 
# # ::Subsection::Closed::
# # Integrands of the form (c x)^m (a+b x)^n when m is symbolic
# 
# 
#     (integrand = x^m*(a + b*x)^10, result = (a^10*x^(1 + m))/(1 + m) + (10*a^9*b*x^(2 + m))/(2 + m) + (45*a^8*b^2*x^(3 + m))/(3 + m) + (120*a^7*b^3*x^(4 + m))/(4 + m) + (210*a^6*b^4*x^(5 + m))/(5 + m) + (252*a^5*b^5*x^(6 + m))/(6 + m) + (210*a^4*b^6*x^(7 + m))/(7 + m) + (120*a^3*b^7*x^(8 + m))/(8 + m) + (45*a^2*b^8*x^(9 + m))/(9 + m) + (10*a*b^9*x^(10 + m))/(10 + m) + (b^10*x^(11 + m))/(11 + m), integration_var = x, mistery_val = 2),
#     (integrand = x^m*(a + b*x)^7, result = (a^7*x^(1 + m))/(1 + m) + (7*a^6*b*x^(2 + m))/(2 + m) + (21*a^5*b^2*x^(3 + m))/(3 + m) + (35*a^4*b^3*x^(4 + m))/(4 + m) + (35*a^3*b^4*x^(5 + m))/(5 + m) + (21*a^2*b^5*x^(6 + m))/(6 + m) + (7*a*b^6*x^(7 + m))/(7 + m) + (b^7*x^(8 + m))/(8 + m), integration_var = x, mistery_val = 2),
#     (integrand = x^m*(a + b*x)^3, result = (a^3*x^(1 + m))/(1 + m) + (3*a^2*b*x^(2 + m))/(2 + m) + (3*a*b^2*x^(3 + m))/(3 + m) + (b^3*x^(4 + m))/(4 + m), integration_var = x, mistery_val = 2),
#     (integrand = x^m*(a + b*x)^2, result = (a^2*x^(1 + m))/(1 + m) + (2*a*b*x^(2 + m))/(2 + m) + (b^2*x^(3 + m))/(3 + m), integration_var = x, mistery_val = 2),
#     (integrand = x^m*(a + b*x)^1, result = (a*x^(1 + m))/(1 + m) + (b*x^(2 + m))/(2 + m), integration_var = x, mistery_val = 2),
#     (integrand = x^m/(a + b*x)^1, result = (x^(1 + m)*Hypergeometric2F1(1, 1 + m, 2 + m, -((b*x)/a)))/(a*(1 + m)), integration_var = x, mistery_val = 1),
#     (integrand = x^m/(a + b*x)^2, result = (x^(1 + m)*Hypergeometric2F1(2, 1 + m, 2 + m, -((b*x)/a)))/(a^2*(1 + m)), integration_var = x, mistery_val = 1),
#     (integrand = x^m/(a + b*x)^3, result = (x^(1 + m)*Hypergeometric2F1(3, 1 + m, 2 + m, -((b*x)/a)))/(a^3*(1 + m)), integration_var = x, mistery_val = 1),
# 
# 
#     (integrand = x^m*(a + b*x)^(5//2), result = (2*x^m*(a + b*x)^(7//2)*Hypergeometric2F1(7//2, -m, 9//2, 1 + (b*x)/a))/((-((b*x)/a))^m*(7*b)), integration_var = x, mistery_val = 2),
#     (integrand = x^m*(a + b*x)^(3//2), result = (2*x^m*(a + b*x)^(5//2)*Hypergeometric2F1(5//2, -m, 7//2, 1 + (b*x)/a))/((-((b*x)/a))^m*(5*b)), integration_var = x, mistery_val = 2),
#     (integrand = x^m*(a + b*x)^(1//2), result = (2*x^m*(a + b*x)^(3//2)*Hypergeometric2F1(3//2, -m, 5//2, 1 + (b*x)/a))/((-((b*x)/a))^m*(3*b)), integration_var = x, mistery_val = 2),
#     (integrand = x^m/(a + b*x)^(1//2), result = (2*x^m*sqrt(a + b*x)*Hypergeometric2F1(1//2, -m, 3//2, 1 + (b*x)/a))/((-((b*x)/a))^m*b), integration_var = x, mistery_val = 2),
#     (integrand = x^m/(a + b*x)^(3//2), result = -((2*x^m*Hypergeometric2F1(-(1//2), -m, 1//2, 1 + (b*x)/a))/((-((b*x)/a))^m*(b*sqrt(a + b*x)))), integration_var = x, mistery_val = 2),
#     (integrand = x^m/(a + b*x)^(5//2), result = -((2*x^m*Hypergeometric2F1(-(3//2), -m, -(1//2), 1 + (b*x)/a))/((-((b*x)/a))^m*(3*b*(a + b*x)^(3//2)))), integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = x^(2 + m)/sqrt(a + b*x), result = (2*a^2*x^m*sqrt(a + b*x)*Hypergeometric2F1(1//2, -2 - m, 3//2, 1 + (b*x)/a))/((-((b*x)/a))^m*b^3), integration_var = x, mistery_val = 2),
#     (integrand = x^(1 + m)/sqrt(a + b*x), result = -((2*a*x^m*sqrt(a + b*x)*Hypergeometric2F1(1//2, -1 - m, 3//2, 1 + (b*x)/a))/((-((b*x)/a))^m*b^2)), integration_var = x, mistery_val = 2),
#     (integrand = x^(0 + m)/sqrt(a + b*x), result = (2*x^m*sqrt(a + b*x)*Hypergeometric2F1(1//2, -m, 3//2, 1 + (b*x)/a))/((-((b*x)/a))^m*b), integration_var = x, mistery_val = 2),
#     (integrand = x^(-1 + m)/sqrt(a + b*x), result = -((2*x^m*sqrt(a + b*x)*Hypergeometric2F1(1//2, 1 - m, 3//2, 1 + (b*x)/a))/((-((b*x)/a))^m*a)), integration_var = x, mistery_val = 2),
#     (integrand = x^(-2 + m)/sqrt(a + b*x), result = (2*b*x^m*sqrt(a + b*x)*Hypergeometric2F1(1//2, 2 - m, 3//2, 1 + (b*x)/a))/((-((b*x)/a))^m*a^2), integration_var = x, mistery_val = 2),
#     (integrand = x^(-3 + m)/sqrt(a + b*x), result = -((2*b^2*x^m*sqrt(a + b*x)*Hypergeometric2F1(1//2, 3 - m, 3//2, 1 + (b*x)/a))/((-((b*x)/a))^m*a^3)), integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = x^m/sqrt(2 + 3*x), result = (x^(1 + m)*Hypergeometric2F1(1//2, 1 + m, 2 + m, -((3*x)/2)))/(sqrt(2)*(1 + m)), integration_var = x, mistery_val = 1),
#     (integrand = x^m/sqrt(2 - 3*x), result = (x^(1 + m)*Hypergeometric2F1(1//2, 1 + m, 2 + m, (3*x)/2))/(sqrt(2)*(1 + m)), integration_var = x, mistery_val = 1),
#     (integrand = x^m/sqrt(-2 + 3*x), result = (3//2)^(-1 - m)*sqrt(-2 + 3*x)*Hypergeometric2F1(1//2, -m, 3//2, 1 - (3*x)/2), integration_var = x, mistery_val = 1),
#     (integrand = x^m/sqrt(-2 - 3*x), result = ((-2^(1 + m))*3^(-1 - m)*sqrt(-2 - 3*x)*x^m*Hypergeometric2F1(1//2, -m, 3//2, 1 + (3*x)/2))/(-x)^m, integration_var = x, mistery_val = 3),
# 
# 
#     (integrand = (-x)^m/sqrt(a + b*x), result = (2*(-x)^m*sqrt(a + b*x)*Hypergeometric2F1(1//2, -m, 3//2, 1 + (b*x)/a))/((-((b*x)/a))^m*b), integration_var = x, mistery_val = 2),
#     (integrand = (-x)^m/sqrt(2 + 3*x), result = -(((-x)^(1 + m)*Hypergeometric2F1(1//2, 1 + m, 2 + m, (-(1//2))*(3*x)))/(sqrt(2)*(1 + m))), integration_var = x, mistery_val = 1),
#     (integrand = (-x)^m/sqrt(2 - 3*x), result = -(((-x)^(1 + m)*Hypergeometric2F1(1//2, 1 + m, 2 + m, (3*x)/2))/(sqrt(2)*(1 + m))), integration_var = x, mistery_val = 1),
#     (integrand = (-x)^m/sqrt(-2 + 3*x), result = (2^(1 + m)*3^(-1 - m)*(-x)^m*sqrt(-2 + 3*x)*Hypergeometric2F1(1//2, -m, 3//2, 1 - (3*x)/2))/x^m, integration_var = x, mistery_val = 3),
#     (integrand = (-x)^m/sqrt(-2 - 3*x), result = (-(3//2)^(-1 - m))*sqrt(-2 - 3*x)*Hypergeometric2F1(1//2, -m, 3//2, 1 + (3*x)/2), integration_var = x, mistery_val = 1),
# 
# 
#     (integrand = x^n/sqrt(1 - x), result = -2*sqrt(1 - x)*Hypergeometric2F1(1//2, -n, 3//2, 1 - x), integration_var = x, mistery_val = 1),
#     (integrand = x^n/sqrt(a - a*x), result = -((2*sqrt(a - a*x)*Hypergeometric2F1(1//2, -n, 3//2, 1 - x))/a), integration_var = x, mistery_val = 1),
# 
# 
# # ::Subsection::Closed::
# # Integrands of the form (c x)^m (a+b x)^n when n is symbolic
# 
# 
#     (integrand = x^m*(a + b*x)^n, result = (x^(1 + m)*(a + b*x)^n*Hypergeometric2F1(1 + m, -n, 2 + m, -((b*x)/a)))/((1 + (b*x)/a)^n*(1 + m)), integration_var = x, mistery_val = 2),
#     (integrand = (c*x)^m*(a + b*x)^n, result = ((c*x)^(1 + m)*(a + b*x)^n*Hypergeometric2F1(1 + m, -n, 2 + m, -((b*x)/a)))/((1 + (b*x)/a)^n*(c*(1 + m))), integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = x^3*(a + b*x)^n, result = -((a^3*(a + b*x)^(1 + n))/(b^4*(1 + n))) + (3*a^2*(a + b*x)^(2 + n))/(b^4*(2 + n)) - (3*a*(a + b*x)^(3 + n))/(b^4*(3 + n)) + (a + b*x)^(4 + n)/(b^4*(4 + n)), integration_var = x, mistery_val = 2),
#     (integrand = x^2*(a + b*x)^n, result = (a^2*(a + b*x)^(1 + n))/(b^3*(1 + n)) - (2*a*(a + b*x)^(2 + n))/(b^3*(2 + n)) + (a + b*x)^(3 + n)/(b^3*(3 + n)), integration_var = x, mistery_val = 2),
#     (integrand = x^1*(a + b*x)^n, result = -((a*(a + b*x)^(1 + n))/(b^2*(1 + n))) + (a + b*x)^(2 + n)/(b^2*(2 + n)), integration_var = x, mistery_val = 2),
#     (integrand = x^0*(a + b*x)^n, result = (a + b*x)^(1 + n)/(b*(1 + n)), integration_var = x, mistery_val = 1),
#     (integrand = (a + b*x)^n/x^1, result = -(((a + b*x)^(1 + n)*Hypergeometric2F1(1, 1 + n, 2 + n, 1 + (b*x)/a))/(a*(1 + n))), integration_var = x, mistery_val = 1),
#     (integrand = (a + b*x)^n/x^2, result = (b*(a + b*x)^(1 + n)*Hypergeometric2F1(2, 1 + n, 2 + n, 1 + (b*x)/a))/(a^2*(1 + n)), integration_var = x, mistery_val = 1),
#     (integrand = (a + b*x)^n/x^3, result = -((b^2*(a + b*x)^(1 + n)*Hypergeometric2F1(3, 1 + n, 2 + n, 1 + (b*x)/a))/(a^3*(1 + n))), integration_var = x, mistery_val = 1),
# 
# 
#     (integrand = x^(-3 + n)/(a + b*x)^n, result = -((x^(-2 + n)*(a + b*x)^(1 - n))/(a*(2 - n))) + (b*x^(-1 + n)*(a + b*x)^(1 - n))/(a^2*(1 - n)*(2 - n)), integration_var = x, mistery_val = 2),
#     (integrand = x^(-2 + n)/(a + b*x)^n, result = -((x^(-1 + n)*(a + b*x)^(1 - n))/(a*(1 - n))), integration_var = x, mistery_val = 1),
#     (integrand = x^(-1 + n)/(a + b*x)^n, result = (x^n*(1 + (b*x)/a)^n*Hypergeometric2F1(n, n, 1 + n, -((b*x)/a)))/((a + b*x)^n*n), integration_var = x, mistery_val = 2),
#     (integrand = x^(0 + n)/(a + b*x)^n, result = (x^(1 + n)*(1 + (b*x)/a)^n*Hypergeometric2F1(n, 1 + n, 2 + n, -((b*x)/a)))/((a + b*x)^n*(1 + n)), integration_var = x, mistery_val = 2),
#     (integrand = x^(1 + n)/(a + b*x)^n, result = (x^(2 + n)*(1 + (b*x)/a)^n*Hypergeometric2F1(n, 2 + n, 3 + n, -((b*x)/a)))/((a + b*x)^n*(2 + n)), integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = x^(3//2)*(a + b*x)^n, result = ((2//5)*x^(5//2)*(a + b*x)^n*Hypergeometric2F1(5//2, -n, 7//2, -((b*x)/a)))/(1 + (b*x)/a)^n, integration_var = x, mistery_val = 2),
#     (integrand = x^(1//2)*(a + b*x)^n, result = ((2//3)*x^(3//2)*(a + b*x)^n*Hypergeometric2F1(3//2, -n, 5//2, -((b*x)/a)))/(1 + (b*x)/a)^n, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^n/x^(1//2), result = (2*sqrt(x)*(a + b*x)^n*Hypergeometric2F1(1//2, -n, 3//2, -((b*x)/a)))/(1 + (b*x)/a)^n, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^n/x^(3//2), result = -((2*(a + b*x)^n*Hypergeometric2F1(-(1//2), -n, 1//2, -((b*x)/a)))/((1 + (b*x)/a)^n*sqrt(x))), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^n/x^(5//2), result = -((2*(a + b*x)^n*Hypergeometric2F1(-(3//2), -n, -(1//2), -((b*x)/a)))/((1 + (b*x)/a)^n*(3*x^(3//2)))), integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = (b*x)^m*(2 + d*x)^n, result = (2^n*(b*x)^(1 + m)*Hypergeometric2F1(1 + m, -n, 2 + m, -((d*x)/2)))/(b*(1 + m)), integration_var = x, mistery_val = 1),
#     (integrand = (b*x)^m*(c - b*c*x)^n, result = -(((c - b*c*x)^(1 + n)*Hypergeometric2F1(-m, 1 + n, 2 + n, 1 - b*x))/(b*c*(1 + n))), integration_var = x, mistery_val = 1),
#     (integrand = (b*x)^m*(c + d*x)^n, result = ((b*x)^(1 + m)*(c + d*x)^n*Hypergeometric2F1(1 + m, -n, 2 + m, -((d*x)/c)))/((1 + (d*x)/c)^n*(b*(1 + m))), integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = x^(-1 + n)*(a + b*x)^(-1 - n), result = x^n/(a*n*(a + b*x)^n), integration_var = x, mistery_val = 1),
# 
#     (integrand = x^(-3 - n)*(a + b*x)^n, result = -((x^(-2 - n)*(a + b*x)^(1 + n))/(a*(2 + n))) + (b*x^(-1 - n)*(a + b*x)^(1 + n))/(a^2*(1 + n)*(2 + n)), integration_var = x, mistery_val = 2),
# 
# 
# # ::Title::Closed::
# # Integrands of the form (d x)^m (c x^2)^p (a+b x)^n
# 
# 
# # ::Section::Closed::
# # Integrands of the form (d x)^m (c x^2)^(p/2) (a+b x)^n
# 
# 
# # ::Subsection::Closed::
# # Integrands of the form x^m (c x^2)^(p/2) (a+b x)^1
# 
# 
# # ::Subsubsection::Closed::
# # p>0
# 
# 
#     (integrand = x^3*sqrt(c*x^2)*(a + b*x), result = (a*x^4*sqrt(c*x^2))/5 + (b*x^5*sqrt(c*x^2))/6, integration_var = x, mistery_val = 3),
#     (integrand = x^2*sqrt(c*x^2)*(a + b*x), result = (a*x^3*sqrt(c*x^2))/4 + (b*x^4*sqrt(c*x^2))/5, integration_var = x, mistery_val = 3),
#     (integrand = x*sqrt(c*x^2)*(a + b*x), result = (a*x^2*sqrt(c*x^2))/3 + (b*x^3*sqrt(c*x^2))/4, integration_var = x, mistery_val = 3),
#     (integrand = sqrt(c*x^2)*(a + b*x), result = (a*x*sqrt(c*x^2))/2 + (b*x^2*sqrt(c*x^2))/3, integration_var = x, mistery_val = 3),
#     (integrand = (sqrt(c*x^2)*(a + b*x))/x, result = a*sqrt(c*x^2) + (b*x*sqrt(c*x^2))/2, integration_var = x, mistery_val = 2),
#     (integrand = (sqrt(c*x^2)*(a + b*x))/x^2, result = b*sqrt(c*x^2) + (a*sqrt(c*x^2)*log(x))/x, integration_var = x, mistery_val = 3),
#     (integrand = (sqrt(c*x^2)*(a + b*x))/x^3, result = -((a*sqrt(c*x^2))/x^2) + (b*sqrt(c*x^2)*log(x))/x, integration_var = x, mistery_val = 3),
#     (integrand = (sqrt(c*x^2)*(a + b*x))/x^4, result = -((sqrt(c*x^2)*(a + b*x)^2)/(2*a*x^3)), integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = x^3*(c*x^2)^(3//2)*(a + b*x), result = (a*c*x^6*sqrt(c*x^2))/7 + (b*c*x^7*sqrt(c*x^2))/8, integration_var = x, mistery_val = 3),
#     (integrand = x^2*(c*x^2)^(3//2)*(a + b*x), result = (a*c*x^5*sqrt(c*x^2))/6 + (b*c*x^6*sqrt(c*x^2))/7, integration_var = x, mistery_val = 3),
#     (integrand = x*(c*x^2)^(3//2)*(a + b*x), result = (a*c*x^4*sqrt(c*x^2))/5 + (b*c*x^5*sqrt(c*x^2))/6, integration_var = x, mistery_val = 3),
#     (integrand = (c*x^2)^(3//2)*(a + b*x), result = (a*c*x^3*sqrt(c*x^2))/4 + (b*c*x^4*sqrt(c*x^2))/5, integration_var = x, mistery_val = 3),
#     (integrand = ((c*x^2)^(3//2)*(a + b*x))/x, result = (a*c*x^2*sqrt(c*x^2))/3 + (b*c*x^3*sqrt(c*x^2))/4, integration_var = x, mistery_val = 3),
#     (integrand = ((c*x^2)^(3//2)*(a + b*x))/x^2, result = (a*c*x*sqrt(c*x^2))/2 + (b*c*x^2*sqrt(c*x^2))/3, integration_var = x, mistery_val = 3),
#     (integrand = ((c*x^2)^(3//2)*(a + b*x))/x^3, result = a*c*sqrt(c*x^2) + (b*c*x*sqrt(c*x^2))/2, integration_var = x, mistery_val = 2),
#     (integrand = ((c*x^2)^(3//2)*(a + b*x))/x^4, result = b*c*sqrt(c*x^2) + (a*c*sqrt(c*x^2)*log(x))/x, integration_var = x, mistery_val = 3),
# 
# 
#     (integrand = x^3*(c*x^2)^(5//2)*(a + b*x), result = (a*c^2*x^8*sqrt(c*x^2))/9 + (b*c^2*x^9*sqrt(c*x^2))/10, integration_var = x, mistery_val = 3),
#     (integrand = x^2*(c*x^2)^(5//2)*(a + b*x), result = (a*c^2*x^7*sqrt(c*x^2))/8 + (b*c^2*x^8*sqrt(c*x^2))/9, integration_var = x, mistery_val = 3),
#     (integrand = x*(c*x^2)^(5//2)*(a + b*x), result = (a*c^2*x^6*sqrt(c*x^2))/7 + (b*c^2*x^7*sqrt(c*x^2))/8, integration_var = x, mistery_val = 3),
#     (integrand = (c*x^2)^(5//2)*(a + b*x), result = (a*c^2*x^5*sqrt(c*x^2))/6 + (b*c^2*x^6*sqrt(c*x^2))/7, integration_var = x, mistery_val = 3),
#     (integrand = ((c*x^2)^(5//2)*(a + b*x))/x, result = (a*c^2*x^4*sqrt(c*x^2))/5 + (b*c^2*x^5*sqrt(c*x^2))/6, integration_var = x, mistery_val = 3),
#     (integrand = ((c*x^2)^(5//2)*(a + b*x))/x^2, result = (a*c^2*x^3*sqrt(c*x^2))/4 + (b*c^2*x^4*sqrt(c*x^2))/5, integration_var = x, mistery_val = 3),
#     (integrand = ((c*x^2)^(5//2)*(a + b*x))/x^3, result = (a*c^2*x^2*sqrt(c*x^2))/3 + (b*c^2*x^3*sqrt(c*x^2))/4, integration_var = x, mistery_val = 3),
#     (integrand = ((c*x^2)^(5//2)*(a + b*x))/x^4, result = (a*c^2*x*sqrt(c*x^2))/2 + (b*c^2*x^2*sqrt(c*x^2))/3, integration_var = x, mistery_val = 3),
# 
# 
# # ::Subsubsection::Closed::
# # p<0
# 
# 
#     (integrand = (x^3*(a + b*x))/sqrt(c*x^2), result = (a*x^4)/(3*sqrt(c*x^2)) + (b*x^5)/(4*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = (x^2*(a + b*x))/sqrt(c*x^2), result = (a*x^3)/(2*sqrt(c*x^2)) + (b*x^4)/(3*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = (x^1*(a + b*x))/sqrt(c*x^2), result = (a*x^2)/sqrt(c*x^2) + (b*x^3)/(2*sqrt(c*x^2)), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)/sqrt(c*x^2), result = (b*x^2)/sqrt(c*x^2) + (a*x*log(x))/sqrt(c*x^2), integration_var = x, mistery_val = 3),
#     (integrand = (a + b*x)/(x^1*sqrt(c*x^2)), result = -(a/sqrt(c*x^2)) + (b*x*log(x))/sqrt(c*x^2), integration_var = x, mistery_val = 3),
#     (integrand = (a + b*x)/(x^2*sqrt(c*x^2)), result = -((a + b*x)^2/(2*a*x*sqrt(c*x^2))), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)/(x^3*sqrt(c*x^2)), result = -a/(3*x^2*sqrt(c*x^2)) - b/(2*x*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = (a + b*x)/(x^4*sqrt(c*x^2)), result = -a/(4*x^3*sqrt(c*x^2)) - b/(3*x^2*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
# 
# 
#     (integrand = (x^3*(a + b*x))/(c*x^2)^(3//2), result = (a*x^2)/(c*sqrt(c*x^2)) + (b*x^3)/(2*c*sqrt(c*x^2)), integration_var = x, mistery_val = 2),
#     (integrand = (x^2*(a + b*x))/(c*x^2)^(3//2), result = (b*x^2)/(c*sqrt(c*x^2)) + (a*x*log(x))/(c*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = (x^1*(a + b*x))/(c*x^2)^(3//2), result = -(a/(c*sqrt(c*x^2))) + (b*x*log(x))/(c*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = (a + b*x)/(c*x^2)^(3//2), result = -((a + b*x)^2/(2*a*c*x*sqrt(c*x^2))), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)/(x^1*(c*x^2)^(3//2)), result = -a/(3*c*x^2*sqrt(c*x^2)) - b/(2*c*x*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = (a + b*x)/(x^2*(c*x^2)^(3//2)), result = -a/(4*c*x^3*sqrt(c*x^2)) - b/(3*c*x^2*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = (a + b*x)/(x^3*(c*x^2)^(3//2)), result = -a/(5*c*x^4*sqrt(c*x^2)) - b/(4*c*x^3*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = (a + b*x)/(x^4*(c*x^2)^(3//2)), result = -a/(6*c*x^5*sqrt(c*x^2)) - b/(5*c*x^4*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
# 
# 
#     (integrand = (x^3*(a + b*x))/(c*x^2)^(5//2), result = -(a/(c^2*sqrt(c*x^2))) + (b*x*log(x))/(c^2*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = (x^2*(a + b*x))/(c*x^2)^(5//2), result = -((a + b*x)^2/(2*a*c^2*x*sqrt(c*x^2))), integration_var = x, mistery_val = 2),
#     (integrand = (x*(a + b*x))/(c*x^2)^(5//2), result = -a/(3*c^2*x^2*sqrt(c*x^2)) - b/(2*c^2*x*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = (a + b*x)/(c*x^2)^(5//2), result = -a/(4*c^2*x^3*sqrt(c*x^2)) - b/(3*c^2*x^2*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = (a + b*x)/(x*(c*x^2)^(5//2)), result = -a/(5*c^2*x^4*sqrt(c*x^2)) - b/(4*c^2*x^3*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = (a + b*x)/(x^2*(c*x^2)^(5//2)), result = -a/(6*c^2*x^5*sqrt(c*x^2)) - b/(5*c^2*x^4*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = (a + b*x)/(x^3*(c*x^2)^(5//2)), result = -a/(7*c^2*x^6*sqrt(c*x^2)) - b/(6*c^2*x^5*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = (a + b*x)/(x^4*(c*x^2)^(5//2)), result = -a/(8*c^2*x^7*sqrt(c*x^2)) - b/(7*c^2*x^6*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
# 
# 
# # ::Subsection::Closed::
# # Integrands of the form x^m (c x^2)^(p/2) (a+b x)^2
# 
# 
# # ::Subsubsection::Closed::
# # p>0
# 
# 
#     (integrand = x^3*sqrt(c*x^2)*(a + b*x)^2, result = (a^2*x^4*sqrt(c*x^2))/5 + (a*b*x^5*sqrt(c*x^2))/3 + (b^2*x^6*sqrt(c*x^2))/7, integration_var = x, mistery_val = 3),
#     (integrand = x^2*sqrt(c*x^2)*(a + b*x)^2, result = (a^2*x^3*sqrt(c*x^2))/4 + (2*a*b*x^4*sqrt(c*x^2))/5 + (b^2*x^5*sqrt(c*x^2))/6, integration_var = x, mistery_val = 3),
#     (integrand = x*sqrt(c*x^2)*(a + b*x)^2, result = (a^2*x^2*sqrt(c*x^2))/3 + (a*b*x^3*sqrt(c*x^2))/2 + (b^2*x^4*sqrt(c*x^2))/5, integration_var = x, mistery_val = 3),
#     (integrand = sqrt(c*x^2)*(a + b*x)^2, result = (1//2)*a^2*x*sqrt(c*x^2) + (2//3)*a*b*x^2*sqrt(c*x^2) + (1//4)*b^2*x^3*sqrt(c*x^2), integration_var = x, mistery_val = 3),
#     (integrand = (sqrt(c*x^2)*(a + b*x)^2)/x, result = (sqrt(c*x^2)*(a + b*x)^3)/(3*b*x), integration_var = x, mistery_val = 2),
#     (integrand = (sqrt(c*x^2)*(a + b*x)^2)/x^2, result = 2*a*b*sqrt(c*x^2) + (b^2*x*sqrt(c*x^2))/2 + (a^2*sqrt(c*x^2)*log(x))/x, integration_var = x, mistery_val = 3),
#     (integrand = (sqrt(c*x^2)*(a + b*x)^2)/x^3, result = b^2*sqrt(c*x^2) - (a^2*sqrt(c*x^2))/x^2 + (2*a*b*sqrt(c*x^2)*log(x))/x, integration_var = x, mistery_val = 3),
#     (integrand = (sqrt(c*x^2)*(a + b*x)^2)/x^4, result = -(a^2*sqrt(c*x^2))/(2*x^3) - (2*a*b*sqrt(c*x^2))/x^2 + (b^2*sqrt(c*x^2)*log(x))/x, integration_var = x, mistery_val = 3),
# 
# 
#     (integrand = x^3*(c*x^2)^(3//2)*(a + b*x)^2, result = (a^2*c*x^6*sqrt(c*x^2))/7 + (a*b*c*x^7*sqrt(c*x^2))/4 + (b^2*c*x^8*sqrt(c*x^2))/9, integration_var = x, mistery_val = 3),
#     (integrand = x^2*(c*x^2)^(3//2)*(a + b*x)^2, result = (a^2*c*x^5*sqrt(c*x^2))/6 + (2*a*b*c*x^6*sqrt(c*x^2))/7 + (b^2*c*x^7*sqrt(c*x^2))/8, integration_var = x, mistery_val = 3),
#     (integrand = x*(c*x^2)^(3//2)*(a + b*x)^2, result = (a^2*c*x^4*sqrt(c*x^2))/5 + (a*b*c*x^5*sqrt(c*x^2))/3 + (b^2*c*x^6*sqrt(c*x^2))/7, integration_var = x, mistery_val = 3),
#     (integrand = (c*x^2)^(3//2)*(a + b*x)^2, result = (a^2*c*x^3*sqrt(c*x^2))/4 + (2*a*b*c*x^4*sqrt(c*x^2))/5 + (b^2*c*x^5*sqrt(c*x^2))/6, integration_var = x, mistery_val = 3),
#     (integrand = ((c*x^2)^(3//2)*(a + b*x)^2)/x, result = (a^2*c*x^2*sqrt(c*x^2))/3 + (a*b*c*x^3*sqrt(c*x^2))/2 + (b^2*c*x^4*sqrt(c*x^2))/5, integration_var = x, mistery_val = 3),
#     (integrand = ((c*x^2)^(3//2)*(a + b*x)^2)/x^2, result = (1//2)*a^2*c*x*sqrt(c*x^2) + (2//3)*a*b*c*x^2*sqrt(c*x^2) + (1//4)*b^2*c*x^3*sqrt(c*x^2), integration_var = x, mistery_val = 3),
#     (integrand = ((c*x^2)^(3//2)*(a + b*x)^2)/x^3, result = (c*sqrt(c*x^2)*(a + b*x)^3)/(3*b*x), integration_var = x, mistery_val = 2),
#     (integrand = ((c*x^2)^(3//2)*(a + b*x)^2)/x^4, result = 2*a*b*c*sqrt(c*x^2) + (b^2*c*x*sqrt(c*x^2))/2 + (a^2*c*sqrt(c*x^2)*log(x))/x, integration_var = x, mistery_val = 3),
# 
# 
#     (integrand = x*(c*x^2)^(5//2)*(a + b*x)^2, result = (a^2*c^2*x^6*sqrt(c*x^2))/7 + (a*b*c^2*x^7*sqrt(c*x^2))/4 + (b^2*c^2*x^8*sqrt(c*x^2))/9, integration_var = x, mistery_val = 3),
#     (integrand = (c*x^2)^(5//2)*(a + b*x)^2, result = (a^2*c^2*x^5*sqrt(c*x^2))/6 + (2*a*b*c^2*x^6*sqrt(c*x^2))/7 + (b^2*c^2*x^7*sqrt(c*x^2))/8, integration_var = x, mistery_val = 3),
#     (integrand = ((c*x^2)^(5//2)*(a + b*x)^2)/x, result = (a^2*c^2*x^4*sqrt(c*x^2))/5 + (a*b*c^2*x^5*sqrt(c*x^2))/3 + (b^2*c^2*x^6*sqrt(c*x^2))/7, integration_var = x, mistery_val = 3),
#     (integrand = ((c*x^2)^(5//2)*(a + b*x)^2)/x^2, result = (a^2*c^2*x^3*sqrt(c*x^2))/4 + (2*a*b*c^2*x^4*sqrt(c*x^2))/5 + (b^2*c^2*x^5*sqrt(c*x^2))/6, integration_var = x, mistery_val = 3),
#     (integrand = ((c*x^2)^(5//2)*(a + b*x)^2)/x^3, result = (a^2*c^2*x^2*sqrt(c*x^2))/3 + (a*b*c^2*x^3*sqrt(c*x^2))/2 + (b^2*c^2*x^4*sqrt(c*x^2))/5, integration_var = x, mistery_val = 3),
#     (integrand = ((c*x^2)^(5//2)*(a + b*x)^2)/x^4, result = (1//2)*a^2*c^2*x*sqrt(c*x^2) + (2//3)*a*b*c^2*x^2*sqrt(c*x^2) + (1//4)*b^2*c^2*x^3*sqrt(c*x^2), integration_var = x, mistery_val = 3),
#     (integrand = ((c*x^2)^(5//2)*(a + b*x)^2)/x^5, result = (c^2*sqrt(c*x^2)*(a + b*x)^3)/(3*b*x), integration_var = x, mistery_val = 2),
#     (integrand = ((c*x^2)^(5//2)*(a + b*x)^2)/x^6, result = 2*a*b*c^2*sqrt(c*x^2) + (1//2)*b^2*c^2*x*sqrt(c*x^2) + (a^2*c^2*sqrt(c*x^2)*log(x))/x, integration_var = x, mistery_val = 3),
# 
# 
# # ::Subsubsection::Closed::
# # p<0
# 
# 
#     (integrand = (x^3*(a + b*x)^2)/sqrt(c*x^2), result = (a^2*x^4)/(3*sqrt(c*x^2)) + (a*b*x^5)/(2*sqrt(c*x^2)) + (b^2*x^6)/(5*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = (x^2*(a + b*x)^2)/sqrt(c*x^2), result = (a^2*x^3)/(2*sqrt(c*x^2)) + (2*a*b*x^4)/(3*sqrt(c*x^2)) + (b^2*x^5)/(4*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = (x^1*(a + b*x)^2)/sqrt(c*x^2), result = (x*(a + b*x)^3)/(3*b*sqrt(c*x^2)), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^2/sqrt(c*x^2), result = (2*a*b*x^2)/sqrt(c*x^2) + (b^2*x^3)/(2*sqrt(c*x^2)) + (a^2*x*log(x))/sqrt(c*x^2), integration_var = x, mistery_val = 3),
#     (integrand = (a + b*x)^2/(x*sqrt(c*x^2)), result = -(a^2/sqrt(c*x^2)) + (b^2*x^2)/sqrt(c*x^2) + (2*a*b*x*log(x))/sqrt(c*x^2), integration_var = x, mistery_val = 3),
#     (integrand = (a + b*x)^2/(x^2*sqrt(c*x^2)), result = (-2*a*b)/sqrt(c*x^2) - a^2/(2*x*sqrt(c*x^2)) + (b^2*x*log(x))/sqrt(c*x^2), integration_var = x, mistery_val = 3),
#     (integrand = (a + b*x)^2/(x^3*sqrt(c*x^2)), result = -(a + b*x)^3/(3*a*x^2*sqrt(c*x^2)), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^2/(x^4*sqrt(c*x^2)), result = -a^2/(4*x^3*sqrt(c*x^2)) - (2*a*b)/(3*x^2*sqrt(c*x^2)) - b^2/(2*x*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
# 
# 
#     (integrand = (x^3*(a + b*x)^2)/(c*x^2)^(3//2), result = (x*(a + b*x)^3)/(3*b*c*sqrt(c*x^2)), integration_var = x, mistery_val = 2),
#     (integrand = (x^2*(a + b*x)^2)/(c*x^2)^(3//2), result = (2*a*b*x^2)/(c*sqrt(c*x^2)) + (b^2*x^3)/(2*c*sqrt(c*x^2)) + (a^2*x*log(x))/(c*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = (x^1*(a + b*x)^2)/(c*x^2)^(3//2), result = -(a^2/(c*sqrt(c*x^2))) + (b^2*x^2)/(c*sqrt(c*x^2)) + (2*a*b*x*log(x))/(c*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = (a + b*x)^2/(c*x^2)^(3//2), result = (-2*a*b)/(c*sqrt(c*x^2)) - a^2/(2*c*x*sqrt(c*x^2)) + (b^2*x*log(x))/(c*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = (a + b*x)^2/(x^1*(c*x^2)^(3//2)), result = -(a + b*x)^3/(3*a*c*x^2*sqrt(c*x^2)), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^2/(x^2*(c*x^2)^(3//2)), result = -a^2/(4*c*x^3*sqrt(c*x^2)) - (2*a*b)/(3*c*x^2*sqrt(c*x^2)) - b^2/(2*c*x*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = (a + b*x)^2/(x^3*(c*x^2)^(3//2)), result = -a^2/(5*c*x^4*sqrt(c*x^2)) - (a*b)/(2*c*x^3*sqrt(c*x^2)) - b^2/(3*c*x^2*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = (a + b*x)^2/(x^4*(c*x^2)^(3//2)), result = -a^2/(6*c*x^5*sqrt(c*x^2)) - (2*a*b)/(5*c*x^4*sqrt(c*x^2)) - b^2/(4*c*x^3*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
# 
# 
#     (integrand = (x^3*(a + b*x)^2)/(c*x^2)^(5//2), result = -(a^2/(c^2*sqrt(c*x^2))) + (b^2*x^2)/(c^2*sqrt(c*x^2)) + (2*a*b*x*log(x))/(c^2*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = (x^2*(a + b*x)^2)/(c*x^2)^(5//2), result = (-2*a*b)/(c^2*sqrt(c*x^2)) - a^2/(2*c^2*x*sqrt(c*x^2)) + (b^2*x*log(x))/(c^2*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = (x*(a + b*x)^2)/(c*x^2)^(5//2), result = -(a + b*x)^3/(3*a*c^2*x^2*sqrt(c*x^2)), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^2/(c*x^2)^(5//2), result = -a^2/(4*c^2*x^3*sqrt(c*x^2)) - (2*a*b)/(3*c^2*x^2*sqrt(c*x^2)) - b^2/(2*c^2*x*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = (a + b*x)^2/(x*(c*x^2)^(5//2)), result = -a^2/(5*c^2*x^4*sqrt(c*x^2)) - (a*b)/(2*c^2*x^3*sqrt(c*x^2)) - b^2/(3*c^2*x^2*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = (a + b*x)^2/(x^2*(c*x^2)^(5//2)), result = -a^2/(6*c^2*x^5*sqrt(c*x^2)) - (2*a*b)/(5*c^2*x^4*sqrt(c*x^2)) - b^2/(4*c^2*x^3*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = (a + b*x)^2/(x^3*(c*x^2)^(5//2)), result = -a^2/(7*c^2*x^6*sqrt(c*x^2)) - (a*b)/(3*c^2*x^5*sqrt(c*x^2)) - b^2/(5*c^2*x^4*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = (a + b*x)^2/(x^4*(c*x^2)^(5//2)), result = -a^2/(8*c^2*x^7*sqrt(c*x^2)) - (2*a*b)/(7*c^2*x^6*sqrt(c*x^2)) - b^2/(6*c^2*x^5*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
# 
# 
# # ::Subsection::Closed::
# # Integrands of the form x^m (c x^2)^(p/2) (a+b x)^-1
# 
# 
# # ::Subsubsection::Closed::
# # p>0
# 
# 
#     (integrand = (x^3*sqrt(c*x^2))/(a + b*x), result = -((a^3*sqrt(c*x^2))/b^4) + (a^2*x*sqrt(c*x^2))/(2*b^3) - (a*x^2*sqrt(c*x^2))/(3*b^2) + (x^3*sqrt(c*x^2))/(4*b) + (a^4*sqrt(c*x^2)*log(a + b*x))/(b^5*x), integration_var = x, mistery_val = 3),
#     (integrand = (x^2*sqrt(c*x^2))/(a + b*x), result = (a^2*sqrt(c*x^2))/b^3 - (a*x*sqrt(c*x^2))/(2*b^2) + (x^2*sqrt(c*x^2))/(3*b) - (a^3*sqrt(c*x^2)*log(a + b*x))/(b^4*x), integration_var = x, mistery_val = 3),
#     (integrand = (x*sqrt(c*x^2))/(a + b*x), result = -((a*sqrt(c*x^2))/b^2) + (x*sqrt(c*x^2))/(2*b) + (a^2*sqrt(c*x^2)*log(a + b*x))/(b^3*x), integration_var = x, mistery_val = 3),
#     (integrand = sqrt(c*x^2)/(a + b*x), result = sqrt(c*x^2)/b - (a*sqrt(c*x^2)*log(a + b*x))/(b^2*x), integration_var = x, mistery_val = 3),
#     (integrand = sqrt(c*x^2)/(x*(a + b*x)), result = (sqrt(c*x^2)*log(a + b*x))/(b*x), integration_var = x, mistery_val = 2),
#     (integrand = sqrt(c*x^2)/(x^2*(a + b*x)), result = (sqrt(c*x^2)*log(x))/(a*x) - (sqrt(c*x^2)*log(a + b*x))/(a*x), integration_var = x, mistery_val = 4),
#     (integrand = sqrt(c*x^2)/(x^3*(a + b*x)), result = -(sqrt(c*x^2)/(a*x^2)) - (b*sqrt(c*x^2)*log(x))/(a^2*x) + (b*sqrt(c*x^2)*log(a + b*x))/(a^2*x), integration_var = x, mistery_val = 3),
#     (integrand = sqrt(c*x^2)/(x^4*(a + b*x)), result = -sqrt(c*x^2)/(2*a*x^3) + (b*sqrt(c*x^2))/(a^2*x^2) + (b^2*sqrt(c*x^2)*log(x))/(a^3*x) - (b^2*sqrt(c*x^2)*log(a + b*x))/(a^3*x), integration_var = x, mistery_val = 3),
# 
# 
#     (integrand = (x*(c*x^2)^(3//2))/(a + b*x), result = -((a^3*c*sqrt(c*x^2))/b^4) + (a^2*c*x*sqrt(c*x^2))/(2*b^3) - (a*c*x^2*sqrt(c*x^2))/(3*b^2) + (c*x^3*sqrt(c*x^2))/(4*b) + (a^4*c*sqrt(c*x^2)*log(a + b*x))/(b^5*x), integration_var = x, mistery_val = 3),
#     (integrand = (c*x^2)^(3//2)/(a + b*x), result = (a^2*c*sqrt(c*x^2))/b^3 - (a*c*x*sqrt(c*x^2))/(2*b^2) + (c*x^2*sqrt(c*x^2))/(3*b) - (a^3*c*sqrt(c*x^2)*log(a + b*x))/(b^4*x), integration_var = x, mistery_val = 3),
#     (integrand = (c*x^2)^(3//2)/(x*(a + b*x)), result = -((a*c*sqrt(c*x^2))/b^2) + (c*x*sqrt(c*x^2))/(2*b) + (a^2*c*sqrt(c*x^2)*log(a + b*x))/(b^3*x), integration_var = x, mistery_val = 3),
#     (integrand = (c*x^2)^(3//2)/(x^2*(a + b*x)), result = (c*sqrt(c*x^2))/b - (a*c*sqrt(c*x^2)*log(a + b*x))/(b^2*x), integration_var = x, mistery_val = 3),
#     (integrand = (c*x^2)^(3//2)/(x^3*(a + b*x)), result = (c*sqrt(c*x^2)*log(a + b*x))/(b*x), integration_var = x, mistery_val = 2),
#     (integrand = (c*x^2)^(3//2)/(x^4*(a + b*x)), result = (c*sqrt(c*x^2)*log(x))/(a*x) - (c*sqrt(c*x^2)*log(a + b*x))/(a*x), integration_var = x, mistery_val = 4),
#     (integrand = (c*x^2)^(3//2)/(x^5*(a + b*x)), result = -((c*sqrt(c*x^2))/(a*x^2)) - (b*c*sqrt(c*x^2)*log(x))/(a^2*x) + (b*c*sqrt(c*x^2)*log(a + b*x))/(a^2*x), integration_var = x, mistery_val = 3),
#     (integrand = (c*x^2)^(3//2)/(x^6*(a + b*x)), result = -(c*sqrt(c*x^2))/(2*a*x^3) + (b*c*sqrt(c*x^2))/(a^2*x^2) + (b^2*c*sqrt(c*x^2)*log(x))/(a^3*x) - (b^2*c*sqrt(c*x^2)*log(a + b*x))/(a^3*x), integration_var = x, mistery_val = 3),
#     (integrand = (c*x^2)^(3//2)/(x^7*(a + b*x)), result = -(c*sqrt(c*x^2))/(3*a*x^4) + (b*c*sqrt(c*x^2))/(2*a^2*x^3) - (b^2*c*sqrt(c*x^2))/(a^3*x^2) - (b^3*c*sqrt(c*x^2)*log(x))/(a^4*x) + (b^3*c*sqrt(c*x^2)*log(a + b*x))/(a^4*x), integration_var = x, mistery_val = 3),
# 
# 
#     (integrand = (c*x^2)^(5//2)/(a + b*x), result = (a^4*c^2*sqrt(c*x^2))/b^5 - (a^3*c^2*x*sqrt(c*x^2))/(2*b^4) + (a^2*c^2*x^2*sqrt(c*x^2))/(3*b^3) - (a*c^2*x^3*sqrt(c*x^2))/(4*b^2) + (c^2*x^4*sqrt(c*x^2))/(5*b) - (a^5*c^2*sqrt(c*x^2)*log(a + b*x))/(b^6*x), integration_var = x, mistery_val = 3),
#     (integrand = (c*x^2)^(5//2)/(x*(a + b*x)), result = -((a^3*c^2*sqrt(c*x^2))/b^4) + (a^2*c^2*x*sqrt(c*x^2))/(2*b^3) - (a*c^2*x^2*sqrt(c*x^2))/(3*b^2) + (c^2*x^3*sqrt(c*x^2))/(4*b) + (a^4*c^2*sqrt(c*x^2)*log(a + b*x))/(b^5*x), integration_var = x, mistery_val = 3),
#     (integrand = (c*x^2)^(5//2)/(x^2*(a + b*x)), result = (a^2*c^2*sqrt(c*x^2))/b^3 - (a*c^2*x*sqrt(c*x^2))/(2*b^2) + (c^2*x^2*sqrt(c*x^2))/(3*b) - (a^3*c^2*sqrt(c*x^2)*log(a + b*x))/(b^4*x), integration_var = x, mistery_val = 3),
#     (integrand = (c*x^2)^(5//2)/(x^3*(a + b*x)), result = -((a*c^2*sqrt(c*x^2))/b^2) + (c^2*x*sqrt(c*x^2))/(2*b) + (a^2*c^2*sqrt(c*x^2)*log(a + b*x))/(b^3*x), integration_var = x, mistery_val = 3),
#     (integrand = (c*x^2)^(5//2)/(x^4*(a + b*x)), result = (c^2*sqrt(c*x^2))/b - (a*c^2*sqrt(c*x^2)*log(a + b*x))/(b^2*x), integration_var = x, mistery_val = 3),
#     (integrand = (c*x^2)^(5//2)/(x^5*(a + b*x)), result = (c^2*sqrt(c*x^2)*log(a + b*x))/(b*x), integration_var = x, mistery_val = 2),
#     (integrand = (c*x^2)^(5//2)/(x^6*(a + b*x)), result = (c^2*sqrt(c*x^2)*log(x))/(a*x) - (c^2*sqrt(c*x^2)*log(a + b*x))/(a*x), integration_var = x, mistery_val = 4),
#     (integrand = (c*x^2)^(5//2)/(x^7*(a + b*x)), result = -((c^2*sqrt(c*x^2))/(a*x^2)) - (b*c^2*sqrt(c*x^2)*log(x))/(a^2*x) + (b*c^2*sqrt(c*x^2)*log(a + b*x))/(a^2*x), integration_var = x, mistery_val = 3),
# 
# 
# # ::Subsubsection::Closed::
# # p<0
# 
# 
#     (integrand = x^4/(sqrt(c*x^2)*(a + b*x)), result = (a^2*x^2)/(b^3*sqrt(c*x^2)) - (a*x^3)/(2*b^2*sqrt(c*x^2)) + x^4/(3*b*sqrt(c*x^2)) - (a^3*x*log(a + b*x))/(b^4*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = x^3/(sqrt(c*x^2)*(a + b*x)), result = -((a*x^2)/(b^2*sqrt(c*x^2))) + x^3/(2*b*sqrt(c*x^2)) + (a^2*x*log(a + b*x))/(b^3*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = x^2/(sqrt(c*x^2)*(a + b*x)), result = x^2/(b*sqrt(c*x^2)) - (a*x*log(a + b*x))/(b^2*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = x/(sqrt(c*x^2)*(a + b*x)), result = (x*log(a + b*x))/(b*sqrt(c*x^2)), integration_var = x, mistery_val = 2),
#     (integrand = 1/(sqrt(c*x^2)*(a + b*x)), result = (x*log(x))/(a*sqrt(c*x^2)) - (x*log(a + b*x))/(a*sqrt(c*x^2)), integration_var = x, mistery_val = 4),
#     (integrand = 1/(x*sqrt(c*x^2)*(a + b*x)), result = -(1/(a*sqrt(c*x^2))) - (b*x*log(x))/(a^2*sqrt(c*x^2)) + (b*x*log(a + b*x))/(a^2*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = 1/(x^2*sqrt(c*x^2)*(a + b*x)), result = b/(a^2*sqrt(c*x^2)) - 1/(2*a*x*sqrt(c*x^2)) + (b^2*x*log(x))/(a^3*sqrt(c*x^2)) - (b^2*x*log(a + b*x))/(a^3*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = 1/(x^3*sqrt(c*x^2)*(a + b*x)), result = -(b^2/(a^3*sqrt(c*x^2))) - 1/(3*a*x^2*sqrt(c*x^2)) + b/(2*a^2*x*sqrt(c*x^2)) - (b^3*x*log(x))/(a^4*sqrt(c*x^2)) + (b^3*x*log(a + b*x))/(a^4*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
# 
# 
#     (integrand = x^6/((c*x^2)^(3//2)*(a + b*x)), result = (a^2*x^2)/(b^3*c*sqrt(c*x^2)) - (a*x^3)/(2*b^2*c*sqrt(c*x^2)) + x^4/(3*b*c*sqrt(c*x^2)) - (a^3*x*log(a + b*x))/(b^4*c*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = x^5/((c*x^2)^(3//2)*(a + b*x)), result = -((a*x^2)/(b^2*c*sqrt(c*x^2))) + x^3/(2*b*c*sqrt(c*x^2)) + (a^2*x*log(a + b*x))/(b^3*c*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = x^4/((c*x^2)^(3//2)*(a + b*x)), result = x^2/(b*c*sqrt(c*x^2)) - (a*x*log(a + b*x))/(b^2*c*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = x^3/((c*x^2)^(3//2)*(a + b*x)), result = (x*log(a + b*x))/(b*c*sqrt(c*x^2)), integration_var = x, mistery_val = 2),
#     (integrand = x^2/((c*x^2)^(3//2)*(a + b*x)), result = (x*log(x))/(a*c*sqrt(c*x^2)) - (x*log(a + b*x))/(a*c*sqrt(c*x^2)), integration_var = x, mistery_val = 4),
#     (integrand = x/((c*x^2)^(3//2)*(a + b*x)), result = -(1/(a*c*sqrt(c*x^2))) - (b*x*log(x))/(a^2*c*sqrt(c*x^2)) + (b*x*log(a + b*x))/(a^2*c*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = 1/((c*x^2)^(3//2)*(a + b*x)), result = b/(a^2*c*sqrt(c*x^2)) - 1/(2*a*c*x*sqrt(c*x^2)) + (b^2*x*log(x))/(a^3*c*sqrt(c*x^2)) - (b^2*x*log(a + b*x))/(a^3*c*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = 1/(x*(c*x^2)^(3//2)*(a + b*x)), result = -(b^2/(a^3*c*sqrt(c*x^2))) - 1/(3*a*c*x^2*sqrt(c*x^2)) + b/(2*a^2*c*x*sqrt(c*x^2)) - (b^3*x*log(x))/(a^4*c*sqrt(c*x^2)) + (b^3*x*log(a + b*x))/(a^4*c*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
# 
# 
# # ::Subsection::Closed::
# # Integrands of the form x^m (c x^2)^(p/2) (a+b x)^-2
# 
# 
# # ::Subsubsection::Closed::
# # p>0
# 
# 
#     (integrand = (x^3*sqrt(c*x^2))/(a + b*x)^2, result = (3*a^2*sqrt(c*x^2))/b^4 - (a*x*sqrt(c*x^2))/b^3 + (x^2*sqrt(c*x^2))/(3*b^2) - (a^4*sqrt(c*x^2))/(b^5*x*(a + b*x)) - (4*a^3*sqrt(c*x^2)*log(a + b*x))/(b^5*x), integration_var = x, mistery_val = 3),
#     (integrand = (x^2*sqrt(c*x^2))/(a + b*x)^2, result = (-2*a*sqrt(c*x^2))/b^3 + (x*sqrt(c*x^2))/(2*b^2) + (a^3*sqrt(c*x^2))/(b^4*x*(a + b*x)) + (3*a^2*sqrt(c*x^2)*log(a + b*x))/(b^4*x), integration_var = x, mistery_val = 3),
#     (integrand = (x*sqrt(c*x^2))/(a + b*x)^2, result = sqrt(c*x^2)/b^2 - (a^2*sqrt(c*x^2))/(b^3*x*(a + b*x)) - (2*a*sqrt(c*x^2)*log(a + b*x))/(b^3*x), integration_var = x, mistery_val = 3),
#     (integrand = sqrt(c*x^2)/(a + b*x)^2, result = (a*sqrt(c*x^2))/(b^2*x*(a + b*x)) + (sqrt(c*x^2)*log(a + b*x))/(b^2*x), integration_var = x, mistery_val = 3),
#     (integrand = sqrt(c*x^2)/(x*(a + b*x)^2), result = -(sqrt(c*x^2)/(b*x*(a + b*x))), integration_var = x, mistery_val = 2),
#     (integrand = sqrt(c*x^2)/(x^2*(a + b*x)^2), result = sqrt(c*x^2)/(a*x*(a + b*x)) + (sqrt(c*x^2)*log(x))/(a^2*x) - (sqrt(c*x^2)*log(a + b*x))/(a^2*x), integration_var = x, mistery_val = 3),
#     (integrand = sqrt(c*x^2)/(x^3*(a + b*x)^2), result = -(sqrt(c*x^2)/(a^2*x^2)) - (b*sqrt(c*x^2))/(a^2*x*(a + b*x)) - (2*b*sqrt(c*x^2)*log(x))/(a^3*x) + (2*b*sqrt(c*x^2)*log(a + b*x))/(a^3*x), integration_var = x, mistery_val = 3),
#     (integrand = sqrt(c*x^2)/(x^4*(a + b*x)^2), result = -sqrt(c*x^2)/(2*a^2*x^3) + (2*b*sqrt(c*x^2))/(a^3*x^2) + (b^2*sqrt(c*x^2))/(a^3*x*(a + b*x)) + (3*b^2*sqrt(c*x^2)*log(x))/(a^4*x) - (3*b^2*sqrt(c*x^2)*log(a + b*x))/(a^4*x), integration_var = x, mistery_val = 3),
# 
# 
#     (integrand = (x*(c*x^2)^(3//2))/(a + b*x)^2, result = (3*a^2*c*sqrt(c*x^2))/b^4 - (a*c*x*sqrt(c*x^2))/b^3 + (c*x^2*sqrt(c*x^2))/(3*b^2) - (a^4*c*sqrt(c*x^2))/(b^5*x*(a + b*x)) - (4*a^3*c*sqrt(c*x^2)*log(a + b*x))/(b^5*x), integration_var = x, mistery_val = 3),
#     (integrand = (c*x^2)^(3//2)/(a + b*x)^2, result = (-2*a*c*sqrt(c*x^2))/b^3 + (c*x*sqrt(c*x^2))/(2*b^2) + (a^3*c*sqrt(c*x^2))/(b^4*x*(a + b*x)) + (3*a^2*c*sqrt(c*x^2)*log(a + b*x))/(b^4*x), integration_var = x, mistery_val = 3),
#     (integrand = (c*x^2)^(3//2)/(x*(a + b*x)^2), result = (c*sqrt(c*x^2))/b^2 - (a^2*c*sqrt(c*x^2))/(b^3*x*(a + b*x)) - (2*a*c*sqrt(c*x^2)*log(a + b*x))/(b^3*x), integration_var = x, mistery_val = 3),
#     (integrand = (c*x^2)^(3//2)/(x^2*(a + b*x)^2), result = (a*c*sqrt(c*x^2))/(b^2*x*(a + b*x)) + (c*sqrt(c*x^2)*log(a + b*x))/(b^2*x), integration_var = x, mistery_val = 3),
#     (integrand = (c*x^2)^(3//2)/(x^3*(a + b*x)^2), result = -((c*sqrt(c*x^2))/(b*x*(a + b*x))), integration_var = x, mistery_val = 2),
#     (integrand = (c*x^2)^(3//2)/(x^4*(a + b*x)^2), result = (c*sqrt(c*x^2))/(a*x*(a + b*x)) + (c*sqrt(c*x^2)*log(x))/(a^2*x) - (c*sqrt(c*x^2)*log(a + b*x))/(a^2*x), integration_var = x, mistery_val = 3),
#     (integrand = (c*x^2)^(3//2)/(x^5*(a + b*x)^2), result = -((c*sqrt(c*x^2))/(a^2*x^2)) - (b*c*sqrt(c*x^2))/(a^2*x*(a + b*x)) - (2*b*c*sqrt(c*x^2)*log(x))/(a^3*x) + (2*b*c*sqrt(c*x^2)*log(a + b*x))/(a^3*x), integration_var = x, mistery_val = 3),
#     (integrand = (c*x^2)^(3//2)/(x^6*(a + b*x)^2), result = -(c*sqrt(c*x^2))/(2*a^2*x^3) + (2*b*c*sqrt(c*x^2))/(a^3*x^2) + (b^2*c*sqrt(c*x^2))/(a^3*x*(a + b*x)) + (3*b^2*c*sqrt(c*x^2)*log(x))/(a^4*x) - (3*b^2*c*sqrt(c*x^2)*log(a + b*x))/(a^4*x), integration_var = x, mistery_val = 3),
# 
# 
# # ::Subsubsection::Closed::
# # p<0
# 
# 
#     (integrand = x^5/(sqrt(c*x^2)*(a + b*x)^2), result = (3*a^2*x^2)/(b^4*sqrt(c*x^2)) - (a*x^3)/(b^3*sqrt(c*x^2)) + x^4/(3*b^2*sqrt(c*x^2)) - (a^4*x)/(b^5*sqrt(c*x^2)*(a + b*x)) - (4*a^3*x*log(a + b*x))/(b^5*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = x^4/(sqrt(c*x^2)*(a + b*x)^2), result = (-2*a*x^2)/(b^3*sqrt(c*x^2)) + x^3/(2*b^2*sqrt(c*x^2)) + (a^3*x)/(b^4*sqrt(c*x^2)*(a + b*x)) + (3*a^2*x*log(a + b*x))/(b^4*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = x^3/(sqrt(c*x^2)*(a + b*x)^2), result = x^2/(b^2*sqrt(c*x^2)) - (a^2*x)/(b^3*sqrt(c*x^2)*(a + b*x)) - (2*a*x*log(a + b*x))/(b^3*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = x^2/(sqrt(c*x^2)*(a + b*x)^2), result = (a*x)/(b^2*sqrt(c*x^2)*(a + b*x)) + (x*log(a + b*x))/(b^2*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = x/(sqrt(c*x^2)*(a + b*x)^2), result = -(x/(b*sqrt(c*x^2)*(a + b*x))), integration_var = x, mistery_val = 2),
#     (integrand = 1/(sqrt(c*x^2)*(a + b*x)^2), result = x/(a*sqrt(c*x^2)*(a + b*x)) + (x*log(x))/(a^2*sqrt(c*x^2)) - (x*log(a + b*x))/(a^2*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = 1/(x*sqrt(c*x^2)*(a + b*x)^2), result = -(1/(a^2*sqrt(c*x^2))) - (b*x)/(a^2*sqrt(c*x^2)*(a + b*x)) - (2*b*x*log(x))/(a^3*sqrt(c*x^2)) + (2*b*x*log(a + b*x))/(a^3*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = 1/(x^2*sqrt(c*x^2)*(a + b*x)^2), result = (2*b)/(a^3*sqrt(c*x^2)) - 1/(2*a^2*x*sqrt(c*x^2)) + (b^2*x)/(a^3*sqrt(c*x^2)*(a + b*x)) + (3*b^2*x*log(x))/(a^4*sqrt(c*x^2)) - (3*b^2*x*log(a + b*x))/(a^4*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
# 
# 
#     (integrand = x^5/((c*x^2)^(3//2)*(a + b*x)^2), result = x^2/(b^2*c*sqrt(c*x^2)) - (a^2*x)/(b^3*c*sqrt(c*x^2)*(a + b*x)) - (2*a*x*log(a + b*x))/(b^3*c*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = x^4/((c*x^2)^(3//2)*(a + b*x)^2), result = (a*x)/(b^2*c*sqrt(c*x^2)*(a + b*x)) + (x*log(a + b*x))/(b^2*c*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = x^3/((c*x^2)^(3//2)*(a + b*x)^2), result = -(x/(b*c*sqrt(c*x^2)*(a + b*x))), integration_var = x, mistery_val = 2),
#     (integrand = x^2/((c*x^2)^(3//2)*(a + b*x)^2), result = x/(a*c*sqrt(c*x^2)*(a + b*x)) + (x*log(x))/(a^2*c*sqrt(c*x^2)) - (x*log(a + b*x))/(a^2*c*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = x/((c*x^2)^(3//2)*(a + b*x)^2), result = -(1/(a^2*c*sqrt(c*x^2))) - (b*x)/(a^2*c*sqrt(c*x^2)*(a + b*x)) - (2*b*x*log(x))/(a^3*c*sqrt(c*x^2)) + (2*b*x*log(a + b*x))/(a^3*c*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = 1/((c*x^2)^(3//2)*(a + b*x)^2), result = (2*b)/(a^3*c*sqrt(c*x^2)) - 1/(2*a^2*c*x*sqrt(c*x^2)) + (b^2*x)/(a^3*c*sqrt(c*x^2)*(a + b*x)) + (3*b^2*x*log(x))/(a^4*c*sqrt(c*x^2)) - (3*b^2*x*log(a + b*x))/(a^4*c*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
# 
# 
# # ::Subsection::Closed::
# # Integrands of the form x^m (c x^2)^(p/2) (a+b x)^n with n symbolic
# 
# 
# # ::Subsubsection::Closed::
# # p>0
# 
# 
#     (integrand = x^2*sqrt(c*x^2)*(a + b*x)^n, result = -((a^3*sqrt(c*x^2)*(a + b*x)^(1 + n))/(b^4*(1 + n)*x)) + (3*a^2*sqrt(c*x^2)*(a + b*x)^(2 + n))/(b^4*(2 + n)*x) - (3*a*sqrt(c*x^2)*(a + b*x)^(3 + n))/(b^4*(3 + n)*x) + (sqrt(c*x^2)*(a + b*x)^(4 + n))/(b^4*(4 + n)*x), integration_var = x, mistery_val = 3),
#     (integrand = x^1*sqrt(c*x^2)*(a + b*x)^n, result = (a^2*sqrt(c*x^2)*(a + b*x)^(1 + n))/(b^3*(1 + n)*x) - (2*a*sqrt(c*x^2)*(a + b*x)^(2 + n))/(b^3*(2 + n)*x) + (sqrt(c*x^2)*(a + b*x)^(3 + n))/(b^3*(3 + n)*x), integration_var = x, mistery_val = 3),
#     (integrand = sqrt(c*x^2)*(a + b*x)^n, result = -((a*sqrt(c*x^2)*(a + b*x)^(1 + n))/(b^2*(1 + n)*x)) + (sqrt(c*x^2)*(a + b*x)^(2 + n))/(b^2*(2 + n)*x), integration_var = x, mistery_val = 3),
#     (integrand = (sqrt(c*x^2)*(a + b*x)^n)/x^1, result = (sqrt(c*x^2)*(a + b*x)^(1 + n))/(b*(1 + n)*x), integration_var = x, mistery_val = 2),
#     (integrand = (sqrt(c*x^2)*(a + b*x)^n)/x^2, result = -((sqrt(c*x^2)*(a + b*x)^(1 + n)*Hypergeometric2F1(1, 1 + n, 2 + n, 1 + (b*x)/a))/(a*(1 + n)*x)), integration_var = x, mistery_val = 2),
#     (integrand = (sqrt(c*x^2)*(a + b*x)^n)/x^3, result = (b*sqrt(c*x^2)*(a + b*x)^(1 + n)*Hypergeometric2F1(2, 1 + n, 2 + n, 1 + (b*x)/a))/(a^2*(1 + n)*x), integration_var = x, mistery_val = 2),
#     (integrand = (sqrt(c*x^2)*(a + b*x)^n)/x^4, result = -((b^2*sqrt(c*x^2)*(a + b*x)^(1 + n)*Hypergeometric2F1(3, 1 + n, 2 + n, 1 + (b*x)/a))/(a^3*(1 + n)*x)), integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = x^1*(c*x^2)^(3//2)*(a + b*x)^n, result = (a^4*c*sqrt(c*x^2)*(a + b*x)^(1 + n))/(b^5*(1 + n)*x) - (4*a^3*c*sqrt(c*x^2)*(a + b*x)^(2 + n))/(b^5*(2 + n)*x) + (6*a^2*c*sqrt(c*x^2)*(a + b*x)^(3 + n))/(b^5*(3 + n)*x) - (4*a*c*sqrt(c*x^2)*(a + b*x)^(4 + n))/(b^5*(4 + n)*x) + (c*sqrt(c*x^2)*(a + b*x)^(5 + n))/(b^5*(5 + n)*x), integration_var = x, mistery_val = 3),
#     (integrand = (c*x^2)^(3//2)*(a + b*x)^n, result = -((a^3*c*sqrt(c*x^2)*(a + b*x)^(1 + n))/(b^4*(1 + n)*x)) + (3*a^2*c*sqrt(c*x^2)*(a + b*x)^(2 + n))/(b^4*(2 + n)*x) - (3*a*c*sqrt(c*x^2)*(a + b*x)^(3 + n))/(b^4*(3 + n)*x) + (c*sqrt(c*x^2)*(a + b*x)^(4 + n))/(b^4*(4 + n)*x), integration_var = x, mistery_val = 3),
#     (integrand = ((c*x^2)^(3//2)*(a + b*x)^n)/x^1, result = (a^2*c*sqrt(c*x^2)*(a + b*x)^(1 + n))/(b^3*(1 + n)*x) - (2*a*c*sqrt(c*x^2)*(a + b*x)^(2 + n))/(b^3*(2 + n)*x) + (c*sqrt(c*x^2)*(a + b*x)^(3 + n))/(b^3*(3 + n)*x), integration_var = x, mistery_val = 3),
#     (integrand = ((c*x^2)^(3//2)*(a + b*x)^n)/x^2, result = -((a*c*sqrt(c*x^2)*(a + b*x)^(1 + n))/(b^2*(1 + n)*x)) + (c*sqrt(c*x^2)*(a + b*x)^(2 + n))/(b^2*(2 + n)*x), integration_var = x, mistery_val = 3),
#     (integrand = ((c*x^2)^(3//2)*(a + b*x)^n)/x^3, result = (c*sqrt(c*x^2)*(a + b*x)^(1 + n))/(b*(1 + n)*x), integration_var = x, mistery_val = 2),
#     (integrand = ((c*x^2)^(3//2)*(a + b*x)^n)/x^4, result = -((c*sqrt(c*x^2)*(a + b*x)^(1 + n)*Hypergeometric2F1(1, 1 + n, 2 + n, 1 + (b*x)/a))/(a*(1 + n)*x)), integration_var = x, mistery_val = 2),
#     (integrand = ((c*x^2)^(3//2)*(a + b*x)^n)/x^5, result = (b*c*sqrt(c*x^2)*(a + b*x)^(1 + n)*Hypergeometric2F1(2, 1 + n, 2 + n, 1 + (b*x)/a))/(a^2*(1 + n)*x), integration_var = x, mistery_val = 2),
#     (integrand = ((c*x^2)^(3//2)*(a + b*x)^n)/x^6, result = -((b^2*c*sqrt(c*x^2)*(a + b*x)^(1 + n)*Hypergeometric2F1(3, 1 + n, 2 + n, 1 + (b*x)/a))/(a^3*(1 + n)*x)), integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = (c*x^2)^(5//2)*(a + b*x)^n, result = -((a^5*c^2*sqrt(c*x^2)*(a + b*x)^(1 + n))/(b^6*(1 + n)*x)) + (5*a^4*c^2*sqrt(c*x^2)*(a + b*x)^(2 + n))/(b^6*(2 + n)*x) - (10*a^3*c^2*sqrt(c*x^2)*(a + b*x)^(3 + n))/(b^6*(3 + n)*x) + (10*a^2*c^2*sqrt(c*x^2)*(a + b*x)^(4 + n))/(b^6*(4 + n)*x) - (5*a*c^2*sqrt(c*x^2)*(a + b*x)^(5 + n))/(b^6*(5 + n)*x) + (c^2*sqrt(c*x^2)*(a + b*x)^(6 + n))/(b^6*(6 + n)*x), integration_var = x, mistery_val = 3),
#     (integrand = ((c*x^2)^(5//2)*(a + b*x)^n)/x^1, result = (a^4*c^2*sqrt(c*x^2)*(a + b*x)^(1 + n))/(b^5*(1 + n)*x) - (4*a^3*c^2*sqrt(c*x^2)*(a + b*x)^(2 + n))/(b^5*(2 + n)*x) + (6*a^2*c^2*sqrt(c*x^2)*(a + b*x)^(3 + n))/(b^5*(3 + n)*x) - (4*a*c^2*sqrt(c*x^2)*(a + b*x)^(4 + n))/(b^5*(4 + n)*x) + (c^2*sqrt(c*x^2)*(a + b*x)^(5 + n))/(b^5*(5 + n)*x), integration_var = x, mistery_val = 3),
#     (integrand = ((c*x^2)^(5//2)*(a + b*x)^n)/x^2, result = -((a^3*c^2*sqrt(c*x^2)*(a + b*x)^(1 + n))/(b^4*(1 + n)*x)) + (3*a^2*c^2*sqrt(c*x^2)*(a + b*x)^(2 + n))/(b^4*(2 + n)*x) - (3*a*c^2*sqrt(c*x^2)*(a + b*x)^(3 + n))/(b^4*(3 + n)*x) + (c^2*sqrt(c*x^2)*(a + b*x)^(4 + n))/(b^4*(4 + n)*x), integration_var = x, mistery_val = 3),
#     (integrand = ((c*x^2)^(5//2)*(a + b*x)^n)/x^3, result = (a^2*c^2*sqrt(c*x^2)*(a + b*x)^(1 + n))/(b^3*(1 + n)*x) - (2*a*c^2*sqrt(c*x^2)*(a + b*x)^(2 + n))/(b^3*(2 + n)*x) + (c^2*sqrt(c*x^2)*(a + b*x)^(3 + n))/(b^3*(3 + n)*x), integration_var = x, mistery_val = 3),
#     (integrand = ((c*x^2)^(5//2)*(a + b*x)^n)/x^4, result = -((a*c^2*sqrt(c*x^2)*(a + b*x)^(1 + n))/(b^2*(1 + n)*x)) + (c^2*sqrt(c*x^2)*(a + b*x)^(2 + n))/(b^2*(2 + n)*x), integration_var = x, mistery_val = 3),
#     (integrand = ((c*x^2)^(5//2)*(a + b*x)^n)/x^5, result = (c^2*sqrt(c*x^2)*(a + b*x)^(1 + n))/(b*(1 + n)*x), integration_var = x, mistery_val = 2),
#     (integrand = ((c*x^2)^(5//2)*(a + b*x)^n)/x^6, result = -((c^2*sqrt(c*x^2)*(a + b*x)^(1 + n)*Hypergeometric2F1(1, 1 + n, 2 + n, 1 + (b*x)/a))/(a*(1 + n)*x)), integration_var = x, mistery_val = 2),
#     (integrand = ((c*x^2)^(5//2)*(a + b*x)^n)/x^7, result = (b*c^2*sqrt(c*x^2)*(a + b*x)^(1 + n)*Hypergeometric2F1(2, 1 + n, 2 + n, 1 + (b*x)/a))/(a^2*(1 + n)*x), integration_var = x, mistery_val = 2),
# 
# 
# # ::Subsubsection::Closed::
# # p<0
# 
# 
#     (integrand = (x^4*(a + b*x)^n)/sqrt(c*x^2), result = -((a^3*x*(a + b*x)^(1 + n))/(b^4*(1 + n)*sqrt(c*x^2))) + (3*a^2*x*(a + b*x)^(2 + n))/(b^4*(2 + n)*sqrt(c*x^2)) - (3*a*x*(a + b*x)^(3 + n))/(b^4*(3 + n)*sqrt(c*x^2)) + (x*(a + b*x)^(4 + n))/(b^4*(4 + n)*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = (x^3*(a + b*x)^n)/sqrt(c*x^2), result = (a^2*x*(a + b*x)^(1 + n))/(b^3*(1 + n)*sqrt(c*x^2)) - (2*a*x*(a + b*x)^(2 + n))/(b^3*(2 + n)*sqrt(c*x^2)) + (x*(a + b*x)^(3 + n))/(b^3*(3 + n)*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = (x^2*(a + b*x)^n)/sqrt(c*x^2), result = -((a*x*(a + b*x)^(1 + n))/(b^2*(1 + n)*sqrt(c*x^2))) + (x*(a + b*x)^(2 + n))/(b^2*(2 + n)*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = (x*(a + b*x)^n)/sqrt(c*x^2), result = (x*(a + b*x)^(1 + n))/(b*(1 + n)*sqrt(c*x^2)), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^n/sqrt(c*x^2), result = -((x*(a + b*x)^(1 + n)*Hypergeometric2F1(1, 1 + n, 2 + n, 1 + (b*x)/a))/(a*(1 + n)*sqrt(c*x^2))), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^n/(x*sqrt(c*x^2)), result = (b*x*(a + b*x)^(1 + n)*Hypergeometric2F1(2, 1 + n, 2 + n, 1 + (b*x)/a))/(a^2*(1 + n)*sqrt(c*x^2)), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^n/(x^2*sqrt(c*x^2)), result = -((b^2*x*(a + b*x)^(1 + n)*Hypergeometric2F1(3, 1 + n, 2 + n, 1 + (b*x)/a))/(a^3*(1 + n)*sqrt(c*x^2))), integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = (x^6*(a + b*x)^n)/(c*x^2)^(3//2), result = -((a^3*x*(a + b*x)^(1 + n))/(b^4*c*(1 + n)*sqrt(c*x^2))) + (3*a^2*x*(a + b*x)^(2 + n))/(b^4*c*(2 + n)*sqrt(c*x^2)) - (3*a*x*(a + b*x)^(3 + n))/(b^4*c*(3 + n)*sqrt(c*x^2)) + (x*(a + b*x)^(4 + n))/(b^4*c*(4 + n)*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = (x^5*(a + b*x)^n)/(c*x^2)^(3//2), result = (a^2*x*(a + b*x)^(1 + n))/(b^3*c*(1 + n)*sqrt(c*x^2)) - (2*a*x*(a + b*x)^(2 + n))/(b^3*c*(2 + n)*sqrt(c*x^2)) + (x*(a + b*x)^(3 + n))/(b^3*c*(3 + n)*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = (x^4*(a + b*x)^n)/(c*x^2)^(3//2), result = -((a*x*(a + b*x)^(1 + n))/(b^2*c*(1 + n)*sqrt(c*x^2))) + (x*(a + b*x)^(2 + n))/(b^2*c*(2 + n)*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = (x^3*(a + b*x)^n)/(c*x^2)^(3//2), result = (x*(a + b*x)^(1 + n))/(b*c*(1 + n)*sqrt(c*x^2)), integration_var = x, mistery_val = 2),
#     (integrand = (x^2*(a + b*x)^n)/(c*x^2)^(3//2), result = -((x*(a + b*x)^(1 + n)*Hypergeometric2F1(1, 1 + n, 2 + n, 1 + (b*x)/a))/(a*c*(1 + n)*sqrt(c*x^2))), integration_var = x, mistery_val = 2),
#     (integrand = (x^1*(a + b*x)^n)/(c*x^2)^(3//2), result = (b*x*(a + b*x)^(1 + n)*Hypergeometric2F1(2, 1 + n, 2 + n, 1 + (b*x)/a))/(a^2*c*(1 + n)*sqrt(c*x^2)), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^n/(c*x^2)^(3//2), result = -((b^2*x*(a + b*x)^(1 + n)*Hypergeometric2F1(3, 1 + n, 2 + n, 1 + (b*x)/a))/(a^3*c*(1 + n)*sqrt(c*x^2))), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^n/(x^1*(c*x^2)^(3//2)), result = (b^3*x*(a + b*x)^(1 + n)*Hypergeometric2F1(4, 1 + n, 2 + n, 1 + (b*x)/a))/(a^4*c*(1 + n)*sqrt(c*x^2)), integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = (x^8*(a + b*x)^n)/(c*x^2)^(5//2), result = -((a^3*x*(a + b*x)^(1 + n))/(b^4*c^2*(1 + n)*sqrt(c*x^2))) + (3*a^2*x*(a + b*x)^(2 + n))/(b^4*c^2*(2 + n)*sqrt(c*x^2)) - (3*a*x*(a + b*x)^(3 + n))/(b^4*c^2*(3 + n)*sqrt(c*x^2)) + (x*(a + b*x)^(4 + n))/(b^4*c^2*(4 + n)*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = (x^7*(a + b*x)^n)/(c*x^2)^(5//2), result = (a^2*x*(a + b*x)^(1 + n))/(b^3*c^2*(1 + n)*sqrt(c*x^2)) - (2*a*x*(a + b*x)^(2 + n))/(b^3*c^2*(2 + n)*sqrt(c*x^2)) + (x*(a + b*x)^(3 + n))/(b^3*c^2*(3 + n)*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = (x^6*(a + b*x)^n)/(c*x^2)^(5//2), result = -((a*x*(a + b*x)^(1 + n))/(b^2*c^2*(1 + n)*sqrt(c*x^2))) + (x*(a + b*x)^(2 + n))/(b^2*c^2*(2 + n)*sqrt(c*x^2)), integration_var = x, mistery_val = 3),
#     (integrand = (x^5*(a + b*x)^n)/(c*x^2)^(5//2), result = (x*(a + b*x)^(1 + n))/(b*c^2*(1 + n)*sqrt(c*x^2)), integration_var = x, mistery_val = 2),
#     (integrand = (x^4*(a + b*x)^n)/(c*x^2)^(5//2), result = -((x*(a + b*x)^(1 + n)*Hypergeometric2F1(1, 1 + n, 2 + n, 1 + (b*x)/a))/(a*c^2*(1 + n)*sqrt(c*x^2))), integration_var = x, mistery_val = 2),
#     (integrand = (x^3*(a + b*x)^n)/(c*x^2)^(5//2), result = (b*x*(a + b*x)^(1 + n)*Hypergeometric2F1(2, 1 + n, 2 + n, 1 + (b*x)/a))/(a^2*c^2*(1 + n)*sqrt(c*x^2)), integration_var = x, mistery_val = 2),
#     (integrand = (x^2*(a + b*x)^n)/(c*x^2)^(5//2), result = -((b^2*x*(a + b*x)^(1 + n)*Hypergeometric2F1(3, 1 + n, 2 + n, 1 + (b*x)/a))/(a^3*c^2*(1 + n)*sqrt(c*x^2))), integration_var = x, mistery_val = 2),
#     (integrand = (x^1*(a + b*x)^n)/(c*x^2)^(5//2), result = (b^3*x*(a + b*x)^(1 + n)*Hypergeometric2F1(4, 1 + n, 2 + n, 1 + (b*x)/a))/(a^4*c^2*(1 + n)*sqrt(c*x^2)), integration_var = x, mistery_val = 2),
# 
# 
# # ::Subsection::Closed::
# # Integrands of the form (d x)^m (c x^2)^(p/2) (a+b x)^n with m symbolic
# 
# 
# # ::Subsubsection::Closed::
# # n>0
# 
# 
#     (integrand = (d*x)^m*(c*x^2)^(5//2)*(a + b*x), result = (a*c^2*(d*x)^(6 + m)*sqrt(c*x^2))/(d^6*(6 + m)*x) + (b*c^2*(d*x)^(7 + m)*sqrt(c*x^2))/(d^7*(7 + m)*x), integration_var = x, mistery_val = 4),
#     (integrand = (d*x)^m*(c*x^2)^(3//2)*(a + b*x), result = (a*c*(d*x)^(4 + m)*sqrt(c*x^2))/(d^4*(4 + m)*x) + (b*c*(d*x)^(5 + m)*sqrt(c*x^2))/(d^5*(5 + m)*x), integration_var = x, mistery_val = 4),
#     (integrand = (d*x)^m*(c*x^2)^(1//2)*(a + b*x), result = (a*(d*x)^(2 + m)*sqrt(c*x^2))/(d^2*(2 + m)*x) + (b*(d*x)^(3 + m)*sqrt(c*x^2))/(d^3*(3 + m)*x), integration_var = x, mistery_val = 4),
#     (integrand = (d*x)^m*(a + b*x)/(c*x^2)^(1//2), result = (a*x*(d*x)^m)/(m*sqrt(c*x^2)) + (b*x*(d*x)^(1 + m))/(d*(1 + m)*sqrt(c*x^2)), integration_var = x, mistery_val = 4),
#     (integrand = (d*x)^m*(a + b*x)/(c*x^2)^(3//2), result = -((a*d^2*x*(d*x)^(-2 + m))/(c*(2 - m)*sqrt(c*x^2))) - (b*d*x*(d*x)^(-1 + m))/(c*(1 - m)*sqrt(c*x^2)), integration_var = x, mistery_val = 4),
#     (integrand = (d*x)^m*(a + b*x)/(c*x^2)^(5//2), result = -((a*d^4*x*(d*x)^(-4 + m))/(c^2*(4 - m)*sqrt(c*x^2))) - (b*d^3*x*(d*x)^(-3 + m))/(c^2*(3 - m)*sqrt(c*x^2)), integration_var = x, mistery_val = 4),
# 
# 
#     (integrand = (d*x)^m*(c*x^2)^(5//2)*(a + b*x)^2, result = (a^2*c^2*(d*x)^(6 + m)*sqrt(c*x^2))/(d^6*(6 + m)*x) + (2*a*b*c^2*(d*x)^(7 + m)*sqrt(c*x^2))/(d^7*(7 + m)*x) + (b^2*c^2*(d*x)^(8 + m)*sqrt(c*x^2))/(d^8*(8 + m)*x), integration_var = x, mistery_val = 4),
#     (integrand = (d*x)^m*(c*x^2)^(3//2)*(a + b*x)^2, result = (a^2*c*(d*x)^(4 + m)*sqrt(c*x^2))/(d^4*(4 + m)*x) + (2*a*b*c*(d*x)^(5 + m)*sqrt(c*x^2))/(d^5*(5 + m)*x) + (b^2*c*(d*x)^(6 + m)*sqrt(c*x^2))/(d^6*(6 + m)*x), integration_var = x, mistery_val = 4),
#     (integrand = (d*x)^m*(c*x^2)^(1//2)*(a + b*x)^2, result = (a^2*(d*x)^(2 + m)*sqrt(c*x^2))/(d^2*(2 + m)*x) + (2*a*b*(d*x)^(3 + m)*sqrt(c*x^2))/(d^3*(3 + m)*x) + (b^2*(d*x)^(4 + m)*sqrt(c*x^2))/(d^4*(4 + m)*x), integration_var = x, mistery_val = 4),
#     (integrand = (d*x)^m*(a + b*x)^2/(c*x^2)^(1//2), result = (a^2*x*(d*x)^m)/(m*sqrt(c*x^2)) + (2*a*b*x*(d*x)^(1 + m))/(d*(1 + m)*sqrt(c*x^2)) + (b^2*x*(d*x)^(2 + m))/(d^2*(2 + m)*sqrt(c*x^2)), integration_var = x, mistery_val = 4),
#     (integrand = (d*x)^m*(a + b*x)^2/(c*x^2)^(3//2), result = -((a^2*d^2*x*(d*x)^(-2 + m))/(c*(2 - m)*sqrt(c*x^2))) - (2*a*b*d*x*(d*x)^(-1 + m))/(c*(1 - m)*sqrt(c*x^2)) + (b^2*x*(d*x)^m)/(c*m*sqrt(c*x^2)), integration_var = x, mistery_val = 4),
#     (integrand = (d*x)^m*(a + b*x)^2/(c*x^2)^(5//2), result = -((a^2*d^4*x*(d*x)^(-4 + m))/(c^2*(4 - m)*sqrt(c*x^2))) - (2*a*b*d^3*x*(d*x)^(-3 + m))/(c^2*(3 - m)*sqrt(c*x^2)) - (b^2*d^2*x*(d*x)^(-2 + m))/(c^2*(2 - m)*sqrt(c*x^2)), integration_var = x, mistery_val = 4),
# 
# 
# # ::Subsubsection::
# # n<0
# 
# 
# # ::Subsection::Closed::
# # Integrands of the form (d x)^m (c x^2)^(p/2) (a+b x)^n with m and n symbolic
# 
# 
#     (integrand = (d*x)^m*(c*x^2)^(5//2)*(a + b*x)^n, result = (c^2*(d*x)^(6 + m)*sqrt(c*x^2)*(a + b*x)^n*Hypergeometric2F1(6 + m, -n, 7 + m, -((b*x)/a)))/((1 + (b*x)/a)^n*(d^6*(6 + m)*x)), integration_var = x, mistery_val = 4),
#     (integrand = (d*x)^m*(c*x^2)^(3//2)*(a + b*x)^n, result = (c*(d*x)^(4 + m)*sqrt(c*x^2)*(a + b*x)^n*Hypergeometric2F1(4 + m, -n, 5 + m, -((b*x)/a)))/((1 + (b*x)/a)^n*(d^4*(4 + m)*x)), integration_var = x, mistery_val = 4),
#     (integrand = (d*x)^m*(c*x^2)^(1//2)*(a + b*x)^n, result = ((d*x)^(2 + m)*sqrt(c*x^2)*(a + b*x)^n*Hypergeometric2F1(2 + m, -n, 3 + m, -((b*x)/a)))/((1 + (b*x)/a)^n*(d^2*(2 + m)*x)), integration_var = x, mistery_val = 4),
#     (integrand = (d*x)^m*(a + b*x)^n/(c*x^2)^(1//2), result = (x*(d*x)^m*(a + b*x)^n*Hypergeometric2F1(m, -n, 1 + m, -((b*x)/a)))/((1 + (b*x)/a)^n*(m*sqrt(c*x^2))), integration_var = x, mistery_val = 4),
#     (integrand = (d*x)^m*(a + b*x)^n/(c*x^2)^(3//2), result = -((d^2*x*(d*x)^(-2 + m)*(a + b*x)^n*Hypergeometric2F1(-2 + m, -n, -1 + m, -((b*x)/a)))/((1 + (b*x)/a)^n*(c*(2 - m)*sqrt(c*x^2)))), integration_var = x, mistery_val = 4),
#     (integrand = (d*x)^m*(a + b*x)^n/(c*x^2)^(5//2), result = -((d^4*x*(d*x)^(-4 + m)*(a + b*x)^n*Hypergeometric2F1(-4 + m, -n, -3 + m, -((b*x)/a)))/((1 + (b*x)/a)^n*(c^2*(4 - m)*sqrt(c*x^2)))), integration_var = x, mistery_val = 4),
# 
# 
# # ::Section::Closed::
# # Integrands of the form (d x)^m (c x^2)^p (a+b x)^n when -n=2 p+m+2
# 
# 
# # ::Subsection::Closed::
# # Integrands of the form x^m (c x^2)^p / (a+b x)^(2 p+m+2) with p symbolic
# 
# 
#     (integrand = x^3*(c*x^2)^p/(a + b*x)^(2*p + 5), result = (x^4*(c*x^2)^p)/((a + b*x)^(2*(2 + p))*(2*a*(2 + p))), integration_var = x, mistery_val = 2),
#     (integrand = x^2*(c*x^2)^p/(a + b*x)^(2*p + 4), result = (x^3*(c*x^2)^p*(a + b*x)^(-3 - 2*p))/(a*(3 + 2*p)), integration_var = x, mistery_val = 2),
#     (integrand = x^1*(c*x^2)^p/(a + b*x)^(2*p + 3), result = (x^2*(c*x^2)^p)/((a + b*x)^(2*(1 + p))*(2*a*(1 + p))), integration_var = x, mistery_val = 2),
#     (integrand = x^0*(c*x^2)^p/(a + b*x)^(2*p + 2), result = (x*(c*x^2)^p*(a + b*x)^(-1 - 2*p))/(a*(1 + 2*p)), integration_var = x, mistery_val = 2),
#     (integrand = (c*x^2)^p/(a + b*x)^(2*p + 1)/x^1, result = (c*x^2)^p/((a + b*x)^(2*p)*(2*a*p)), integration_var = x, mistery_val = 2),
#     (integrand = (c*x^2)^p/(a + b*x)^(2*p + 0)/x^2, result = -(((c*x^2)^p*(a + b*x)^(1 - 2*p))/(a*(1 - 2*p)*x)), integration_var = x, mistery_val = 2),
#     (integrand = (c*x^2)^p/(a + b*x)^(2*p - 1)/x^3, result = -(((c*x^2)^p*(a + b*x)^(2 - 2*p))/(2*a*(1 - p)*x^2)), integration_var = x, mistery_val = 2),
#     (integrand = (c*x^2)^p/(a + b*x)^(2*p - 2)/x^4, result = -(((c*x^2)^p*(a + b*x)^(3 - 2*p))/(a*(3 - 2*p)*x^3)), integration_var = x, mistery_val = 2),
# 
# 
# # ::Subsection::Closed::
# # Integrands of the form (d x)^m (c x^2)^p / (a+b x)^(2 p+m+2) with m and p symbolic
# 
# 
#     (integrand = x^m*(c*x^2)^p/(a + b*x)^(2*p + m + 2), result = (x^(1 + m)*(c*x^2)^p*(a + b*x)^(-1 - m - 2*p))/(a*(1 + m + 2*p)), integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = (d*x)^m*(c*x^2)^p/(a + b*x)^(2*p + m + 2), result = (x*(d*x)^m*(c*x^2)^p*(a + b*x)^(-1 - m - 2*p))/(a*(1 + m + 2*p)), integration_var = x, mistery_val = 3),
# 
# 
# # ::Section::Closed::
# # Integrands of the form (d x)^m (c x^2)^p (a+b x)^n with m, n and p symbolic
# 
# 
#     (integrand = x^m*(c*x^2)^p*(a + b*x)^n, result = (x^(1 + m)*(c*x^2)^p*(a + b*x)^n*Hypergeometric2F1(-n, 1 + m + 2*p, 2 + m + 2*p, -((b*x)/a)))/((1 + (b*x)/a)^n*(1 + m + 2*p)), integration_var = x, mistery_val = 3),
# 
# 
# # {(d*x)^m*(c*x^2)^p*(a + b*x)^n, x, 4, ((d*x)^(m + 1)*(c*x^2)^p*(a + b*x)^n*Hypergeometric2F1[-n, 1 + m + 2*p, 2 + m + 2*p, -((b*x)/a)])/(d*(1 + (b*x)/a)^n*(1 + m + 2*p)), (x*(d*x)^m*(c*x^2)^p*(a + b*x)^n*Hypergeometric2F1[-n, 1 + m + 2*p, 2 + m + 2*p, -((b*x)/a)])/((1 + (b*x)/a)^n*(1 + m + 2*p))}
# 
# 
# # ::Title::Closed::
# # Integrands of the form (a+b x)^m (c+d x)^n
# 
# 
# # ::Section::Closed::
# # Integrands of the form (a+b x)^m (c+d x)^n when b c-a d=0
# 
# 
# # ::Subsection::Closed::
# # Integrands of the form (a+b x)^m (a d/b+d x)^n when b c-a d=0
# 
# 
#     (integrand = (a + b*x)^5/(a*d/b + d*x)^3, result = (b^2*(a + b*x)^3)/(3*d^3), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^4/(a*d/b + d*x)^3, result = (a*b^3*x)/d^3 + (b^4*x^2)/(2*d^3), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^3/(a*d/b + d*x)^3, result = (b^3*x)/d^3, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^2/(a*d/b + d*x)^3, result = (b^2*log(a + b*x))/d^3, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^1/(a*d/b + d*x)^3, result = -(b^2/(d^3*(a + b*x))), integration_var = x, mistery_val = 2),
#     (integrand = 1/((a + b*x)*(a*d/b + d*x)^3), result = -(b^2/(3*d^3*(a + b*x)^3)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((a + b*x)^2*(a*d/b + d*x)^3), result = -(b^2/(4*d^3*(a + b*x)^4)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((a + b*x)^3*(a*d/b + d*x)^3), result = -(b^2/(5*d^3*(a + b*x)^5)), integration_var = x, mistery_val = 2),
# 
#     (integrand = (b*c/d + b*x)^5/(c + d*x)^3, result = (b^5*(c + d*x)^3)/(3*d^6), integration_var = x, mistery_val = 2),
#     (integrand = (b*c/d + b*x)^4/(c + d*x)^3, result = (b^4*c*x)/d^4 + (b^4*x^2)/(2*d^3), integration_var = x, mistery_val = 2),
#     (integrand = (b*c/d + b*x)^3/(c + d*x)^3, result = (b^3*x)/d^3, integration_var = x, mistery_val = 2),
#     (integrand = (b*c/d + b*x)^2/(c + d*x)^3, result = (b^2*log(c + d*x))/d^3, integration_var = x, mistery_val = 2),
#     (integrand = (b*c/d + b*x)^1/(c + d*x)^3, result = -(b/(d^2*(c + d*x))), integration_var = x, mistery_val = 2),
#     (integrand = 1/((b*c/d + b*x)*(c + d*x)^3), result = -(1/(3*b*(c + d*x)^3)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((b*c/d + b*x)^2*(c + d*x)^3), result = -(d/(4*b^2*(c + d*x)^4)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((b*c/d + b*x)^3*(c + d*x)^3), result = -(d^2/(5*b^3*(c + d*x)^5)), integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = (a + b*x)^5*(a*c + b*c*x)^n, result = (a*c + b*c*x)^(6 + n)/(b*c^6*(6 + n)), integration_var = x, mistery_val = 2),
# 
#     (integrand = (a + b*x)^5*(a*c + b*c*x)^3, result = (c^3*(a + b*x)^9)/(9*b), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^5*(a*c + b*c*x)^2, result = (c^2*(a + b*x)^8)/(8*b), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^5*(a*c + b*c*x)^1, result = (c*(a + b*x)^7)/(7*b), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^5/(a*c + b*c*x)^1, result = (a + b*x)^5/(5*b*c), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^5/(a*c + b*c*x)^2, result = (a + b*x)^4/(4*b*c^2), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^5/(a*c + b*c*x)^3, result = (a + b*x)^3/(3*b*c^3), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^5/(a*c + b*c*x)^4, result = (a*x)/c^4 + (b*x^2)/(2*c^4), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^5/(a*c + b*c*x)^5, result = x/c^5, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^5/(a*c + b*c*x)^6, result = log(a + b*x)/(b*c^6), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^5/(a*c + b*c*x)^7, result = -(1/(b*c^7*(a + b*x))), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^5/(a*c + b*c*x)^8, result = -(1/(2*b*c^8*(a + b*x)^2)), integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = 1/(sqrt(-2 - 3*x)*sqrt(2 + 3*x)), result = (sqrt(2 + 3*x)*log(2 + 3*x))/(3*sqrt(-2 - 3*x)), integration_var = x, mistery_val = 2),
# 
# 
# # ::Section::Closed::
# # Integrands of the form (a+b x)^m (c+d x)^n when b c+a d=0
# 
# 
# # ::Subsection::Closed::
# # Integrands of the form (a+b x)^m (a c-b c x)^n
# 
# 
# # ::Subsubsection::Closed::
# # m>0
# 
# 
#     (integrand = (a + b*x)*(a*c - b*c*x)^3, result = -((a*c^3*(a - b*x)^4)/(2*b)) + (c^3*(a - b*x)^5)/(5*b), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)*(a*c - b*c*x)^2, result = -((2*a*c^2*(a - b*x)^3)/(3*b)) + (c^2*(a - b*x)^4)/(4*b), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)*(a*c - b*c*x)^1, result = a^2*c*x - (1//3)*b^2*c*x^3, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)*(a*c - b*c*x)^0, result = a*x + (b*x^2)/2, integration_var = x, mistery_val = 1),
#     (integrand = (a + b*x)/(a*c - b*c*x)^1, result = -(x/c) - (2*a*log(a - b*x))/(b*c), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)/(a*c - b*c*x)^2, result = (2*a)/(b*c^2*(a - b*x)) + log(a - b*x)/(b*c^2), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)/(a*c - b*c*x)^3, result = x/(c^3*(a - b*x)^2), integration_var = x, mistery_val = 1),
#     (integrand = (a + b*x)/(a*c - b*c*x)^4, result = (2*a)/(3*b*c^4*(a - b*x)^3) - 1/(2*b*c^4*(a - b*x)^2), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)/(a*c - b*c*x)^5, result = a/(2*b*c^5*(a - b*x)^4) - 1/(3*b*c^5*(a - b*x)^3), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)/(a*c - b*c*x)^6, result = (2*a)/(5*b*c^6*(a - b*x)^5) - 1/(4*b*c^6*(a - b*x)^4), integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = (a + b*x)^2*(a*c - b*c*x)^3, result = -((a^2*c^3*(a - b*x)^4)/b) + (4*a*c^3*(a - b*x)^5)/(5*b) - (c^3*(a - b*x)^6)/(6*b), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^2*(a*c - b*c*x)^2, result = a^4*c^2*x - (2//3)*a^2*b^2*c^2*x^3 + (1//5)*b^4*c^2*x^5, integration_var = x, mistery_val = 3),
#     (integrand = (a + b*x)^2*(a*c - b*c*x)^1, result = (2*a*c*(a + b*x)^3)/(3*b) - (c*(a + b*x)^4)/(4*b), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^2*(a*c - b*c*x)^0, result = (a + b*x)^3/(3*b), integration_var = x, mistery_val = 1),
#     (integrand = (a + b*x)^2/(a*c - b*c*x)^1, result = -((2*a*x)/c) - (a + b*x)^2/(2*b*c) - (4*a^2*log(a - b*x))/(b*c), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^2/(a*c - b*c*x)^2, result = x/c^2 + (4*a^2)/(b*c^2*(a - b*x)) + (4*a*log(a - b*x))/(b*c^2), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^2/(a*c - b*c*x)^3, result = (2*a^2)/(b*c^3*(a - b*x)^2) - (4*a)/(b*c^3*(a - b*x)) - log(a - b*x)/(b*c^3), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^2/(a*c - b*c*x)^4, result = (a + b*x)^3/(6*a*b*c^4*(a - b*x)^3), integration_var = x, mistery_val = 1),
#     (integrand = (a + b*x)^2/(a*c - b*c*x)^5, result = a^2/(b*c^5*(a - b*x)^4) - (4*a)/(3*b*c^5*(a - b*x)^3) + 1/(2*b*c^5*(a - b*x)^2), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^2/(a*c - b*c*x)^6, result = (4*a^2)/(5*b*c^6*(a - b*x)^5) - a/(b*c^6*(a - b*x)^4) + 1/(3*b*c^6*(a - b*x)^3), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^2/(a*c - b*c*x)^7, result = (2*a^2)/(3*b*c^7*(a - b*x)^6) - (4*a)/(5*b*c^7*(a - b*x)^5) + 1/(4*b*c^7*(a - b*x)^4), integration_var = x, mistery_val = 2),
# 
# 
# # ::Subsubsection::Closed::
# # m<0
# 
# 
#     (integrand = 1/(a + b*x)*(a*c - b*c*x)^3, result = -4*a^2*c^3*x + (a*c^3*(a - b*x)^2)/b + (c^3*(a - b*x)^3)/(3*b) + (8*a^3*c^3*log(a + b*x))/b, integration_var = x, mistery_val = 2),
#     (integrand = 1/(a + b*x)*(a*c - b*c*x)^2, result = -2*a*c^2*x + (c^2*(a - b*x)^2)/(2*b) + (4*a^2*c^2*log(a + b*x))/b, integration_var = x, mistery_val = 2),
#     (integrand = 1/(a + b*x)*(a*c - b*c*x)^1, result = (-c)*x + (2*a*c*log(a + b*x))/b, integration_var = x, mistery_val = 2),
#     (integrand = 1/(a + b*x)*(a*c - b*c*x)^0, result = log(a + b*x)/b, integration_var = x, mistery_val = 1),
#     (integrand = 1/(a + b*x)/(a*c - b*c*x)^1, result = atanh((b*x)/a)/(a*b*c), integration_var = x, mistery_val = 2),
#     (integrand = 1/(a + b*x)/(a*c - b*c*x)^2, result = 1/(2*a*b*c^2*(a - b*x)) + atanh((b*x)/a)/(2*a^2*b*c^2), integration_var = x, mistery_val = 3),
#     (integrand = 1/(a + b*x)/(a*c - b*c*x)^3, result = 1/(4*a*b*c^3*(a - b*x)^2) + 1/(4*a^2*b*c^3*(a - b*x)) + atanh((b*x)/a)/(4*a^3*b*c^3), integration_var = x, mistery_val = 3),
# 
# 
#     (integrand = 1/(a + b*x)^2*(a*c - b*c*x)^3, result = 5*a*c^3*x - (1//2)*b*c^3*x^2 - (8*a^3*c^3)/(b*(a + b*x)) - (12*a^2*c^3*log(a + b*x))/b, integration_var = x, mistery_val = 2),
#     (integrand = 1/(a + b*x)^2*(a*c - b*c*x)^2, result = c^2*x - (4*a^2*c^2)/(b*(a + b*x)) - (4*a*c^2*log(a + b*x))/b, integration_var = x, mistery_val = 2),
#     (integrand = 1/(a + b*x)^2*(a*c - b*c*x)^1, result = -((2*a*c)/(b*(a + b*x))) - (c*log(a + b*x))/b, integration_var = x, mistery_val = 2),
#     (integrand = 1/(a + b*x)^2*(a*c - b*c*x)^0, result = -(1/(b*(a + b*x))), integration_var = x, mistery_val = 1),
#     (integrand = 1/(a + b*x)^2/(a*c - b*c*x)^1, result = -(1/(2*a*b*c*(a + b*x))) + atanh((b*x)/a)/(2*a^2*b*c), integration_var = x, mistery_val = 3),
#     (integrand = 1/(a + b*x)^2/(a*c - b*c*x)^2, result = x/(2*a^2*c^2*(a^2 - b^2*x^2)) + atanh((b*x)/a)/(2*a^3*b*c^2), integration_var = x, mistery_val = 3),
#     (integrand = 1/(a + b*x)^2/(a*c - b*c*x)^3, result = 1/(8*a^2*b*c^3*(a - b*x)^2) + 1/(4*a^3*b*c^3*(a - b*x)) - 1/(8*a^3*b*c^3*(a + b*x)) + (3*atanh((b*x)/a))/(8*a^4*b*c^3), integration_var = x, mistery_val = 3),
# 
# 
# # ::Subsection::Closed::
# # Integrands of the form (1 - x)^(m/2) (1 + x)^(n/2)
# 
# 
# # ::Subsubsection::Closed::
# # n>0
# 
# 
# # Note: (1-x)^m*(1+x)^m == (1-x^2)^m
#     (integrand = (1 - x)^(9//2)*(1 + x)^(1//2), result = (21//16)*sqrt(1 - x)*x*sqrt(1 + x) + (7//8)*(1 - x)^(3//2)*(1 + x)^(3//2) + (21//40)*(1 - x)^(5//2)*(1 + x)^(3//2) + (3//10)*(1 - x)^(7//2)*(1 + x)^(3//2) + (1//6)*(1 - x)^(9//2)*(1 + x)^(3//2) + (21*asin(x))/16, integration_var = x, mistery_val = 7),
#     (integrand = (1 - x)^(7//2)*(1 + x)^(1//2), result = (7//8)*sqrt(1 - x)*x*sqrt(1 + x) + (7//12)*(1 - x)^(3//2)*(1 + x)^(3//2) + (7//20)*(1 - x)^(5//2)*(1 + x)^(3//2) + (1//5)*(1 - x)^(7//2)*(1 + x)^(3//2) + (7*asin(x))/8, integration_var = x, mistery_val = 6),
#     (integrand = (1 - x)^(5//2)*(1 + x)^(1//2), result = (5//8)*sqrt(1 - x)*x*sqrt(1 + x) + (5//12)*(1 - x)^(3//2)*(1 + x)^(3//2) + (1//4)*(1 - x)^(5//2)*(1 + x)^(3//2) + (5*asin(x))/8, integration_var = x, mistery_val = 5),
#     (integrand = (1 - x)^(3//2)*(1 + x)^(1//2), result = (1//2)*sqrt(1 - x)*x*sqrt(1 + x) + (1//3)*(1 - x)^(3//2)*(1 + x)^(3//2) + asin(x)/2, integration_var = x, mistery_val = 4),
#     (integrand = (1 - x)^(1//2)*(1 + x)^(1//2), result = (1//2)*sqrt(1 - x)*x*sqrt(1 + x) + asin(x)/2, integration_var = x, mistery_val = 3),
#     (integrand = (1 + x)^(1//2)/(1 - x)^(1//2), result = (-sqrt(1 - x))*sqrt(1 + x) + asin(x), integration_var = x, mistery_val = 3),
#     (integrand = (1 + x)^(1//2)/(1 - x)^(3//2), result = (2*sqrt(1 + x))/sqrt(1 - x) - asin(x), integration_var = x, mistery_val = 3),
#     (integrand = (1 + x)^(1//2)/(1 - x)^(5//2), result = (1 + x)^(3//2)/(3*(1 - x)^(3//2)), integration_var = x, mistery_val = 1),
#     (integrand = (1 + x)^(1//2)/(1 - x)^(7//2), result = (1 + x)^(3//2)/(5*(1 - x)^(5//2)) + (1 + x)^(3//2)/(15*(1 - x)^(3//2)), integration_var = x, mistery_val = 2),
#     (integrand = (1 + x)^(1//2)/(1 - x)^(9//2), result = (1 + x)^(3//2)/(7*(1 - x)^(7//2)) + (2*(1 + x)^(3//2))/(35*(1 - x)^(5//2)) + (2*(1 + x)^(3//2))/(105*(1 - x)^(3//2)), integration_var = x, mistery_val = 3),
#     (integrand = (1 + x)^(1//2)/(1 - x)^(11//2), result = (1 + x)^(3//2)/(9*(1 - x)^(9//2)) + (1 + x)^(3//2)/(21*(1 - x)^(7//2)) + (2*(1 + x)^(3//2))/(105*(1 - x)^(5//2)) + (2*(1 + x)^(3//2))/(315*(1 - x)^(3//2)), integration_var = x, mistery_val = 4),
#     (integrand = (1 + x)^(1//2)/(1 - x)^(13//2), result = (1 + x)^(3//2)/(11*(1 - x)^(11//2)) + (4*(1 + x)^(3//2))/(99*(1 - x)^(9//2)) + (4*(1 + x)^(3//2))/(231*(1 - x)^(7//2)) + (8*(1 + x)^(3//2))/(1155*(1 - x)^(5//2)) + (8*(1 + x)^(3//2))/(3465*(1 - x)^(3//2)), integration_var = x, mistery_val = 5),
# 
# 
#     (integrand = (1 - x)^(9//2)*(1 + x)^(3//2), result = (9//16)*sqrt(1 - x)*x*sqrt(1 + x) + (3//8)*(1 - x)^(3//2)*x*(1 + x)^(3//2) + (3//10)*(1 - x)^(5//2)*(1 + x)^(5//2) + (3//14)*(1 - x)^(7//2)*(1 + x)^(5//2) + (1//7)*(1 - x)^(9//2)*(1 + x)^(5//2) + (9*asin(x))/16, integration_var = x, mistery_val = 7),
#     (integrand = (1 - x)^(7//2)*(1 + x)^(3//2), result = (7//16)*sqrt(1 - x)*x*sqrt(1 + x) + (7//24)*(1 - x)^(3//2)*x*(1 + x)^(3//2) + (7//30)*(1 - x)^(5//2)*(1 + x)^(5//2) + (1//6)*(1 - x)^(7//2)*(1 + x)^(5//2) + (7*asin(x))/16, integration_var = x, mistery_val = 6),
#     (integrand = (1 - x)^(5//2)*(1 + x)^(3//2), result = (3//8)*sqrt(1 - x)*x*sqrt(1 + x) + (1//4)*(1 - x)^(3//2)*x*(1 + x)^(3//2) + (1//5)*(1 - x)^(5//2)*(1 + x)^(5//2) + (3*asin(x))/8, integration_var = x, mistery_val = 5),
#     (integrand = (1 - x)^(3//2)*(1 + x)^(3//2), result = (3//8)*sqrt(1 - x)*x*sqrt(1 + x) + (1//4)*(1 - x)^(3//2)*x*(1 + x)^(3//2) + (3*asin(x))/8, integration_var = x, mistery_val = 4),
#     (integrand = (1 - x)^(1//2)*(1 + x)^(3//2), result = (1//2)*sqrt(1 - x)*x*sqrt(1 + x) - (1//3)*(1 - x)^(3//2)*(1 + x)^(3//2) + asin(x)/2, integration_var = x, mistery_val = 4),
#     (integrand = (1 + x)^(3//2)/(1 - x)^(1//2), result = (-(3//2))*sqrt(1 - x)*sqrt(1 + x) - (1//2)*sqrt(1 - x)*(1 + x)^(3//2) + (3*asin(x))/2, integration_var = x, mistery_val = 4),
#     (integrand = (1 + x)^(3//2)/(1 - x)^(3//2), result = 3*sqrt(1 - x)*sqrt(1 + x) + (2*(1 + x)^(3//2))/sqrt(1 - x) - 3*asin(x), integration_var = x, mistery_val = 4),
#     (integrand = (1 + x)^(3//2)/(1 - x)^(5//2), result = -((2*sqrt(1 + x))/sqrt(1 - x)) + (2*(1 + x)^(3//2))/(3*(1 - x)^(3//2)) + asin(x), integration_var = x, mistery_val = 4),
#     (integrand = (1 + x)^(3//2)/(1 - x)^(7//2), result = (1 + x)^(5//2)/(5*(1 - x)^(5//2)), integration_var = x, mistery_val = 1),
#     (integrand = (1 + x)^(3//2)/(1 - x)^(9//2), result = (1 + x)^(5//2)/(7*(1 - x)^(7//2)) + (1 + x)^(5//2)/(35*(1 - x)^(5//2)), integration_var = x, mistery_val = 2),
#     (integrand = (1 + x)^(3//2)/(1 - x)^(11//2), result = (1 + x)^(5//2)/(9*(1 - x)^(9//2)) + (2*(1 + x)^(5//2))/(63*(1 - x)^(7//2)) + (2*(1 + x)^(5//2))/(315*(1 - x)^(5//2)), integration_var = x, mistery_val = 3),
#     (integrand = (1 + x)^(3//2)/(1 - x)^(13//2), result = (1 + x)^(5//2)/(11*(1 - x)^(11//2)) + (1 + x)^(5//2)/(33*(1 - x)^(9//2)) + (2*(1 + x)^(5//2))/(231*(1 - x)^(7//2)) + (2*(1 + x)^(5//2))/(1155*(1 - x)^(5//2)), integration_var = x, mistery_val = 4),
#     (integrand = (1 + x)^(3//2)/(1 - x)^(15//2), result = (1 + x)^(5//2)/(13*(1 - x)^(13//2)) + (4*(1 + x)^(5//2))/(143*(1 - x)^(11//2)) + (4*(1 + x)^(5//2))/(429*(1 - x)^(9//2)) + (8*(1 + x)^(5//2))/(3003*(1 - x)^(7//2)) + (8*(1 + x)^(5//2))/(15015*(1 - x)^(5//2)), integration_var = x, mistery_val = 5),
# 
# 
#     (integrand = (1 - x)^(11//2)*(1 + x)^(5//2), result = (55//128)*sqrt(1 - x)*x*sqrt(1 + x) + (55//192)*(1 - x)^(3//2)*x*(1 + x)^(3//2) + (11//48)*(1 - x)^(5//2)*x*(1 + x)^(5//2) + (11//56)*(1 - x)^(7//2)*(1 + x)^(7//2) + (11//72)*(1 - x)^(9//2)*(1 + x)^(7//2) + (1//9)*(1 - x)^(11//2)*(1 + x)^(7//2) + (55*asin(x))/128, integration_var = x, mistery_val = 8),
#     (integrand = (1 - x)^(9//2)*(1 + x)^(5//2), result = (45//128)*sqrt(1 - x)*x*sqrt(1 + x) + (15//64)*(1 - x)^(3//2)*x*(1 + x)^(3//2) + (3//16)*(1 - x)^(5//2)*x*(1 + x)^(5//2) + (9//56)*(1 - x)^(7//2)*(1 + x)^(7//2) + (1//8)*(1 - x)^(9//2)*(1 + x)^(7//2) + (45*asin(x))/128, integration_var = x, mistery_val = 7),
#     (integrand = (1 - x)^(7//2)*(1 + x)^(5//2), result = (5//16)*sqrt(1 - x)*x*sqrt(1 + x) + (5//24)*(1 - x)^(3//2)*x*(1 + x)^(3//2) + (1//6)*(1 - x)^(5//2)*x*(1 + x)^(5//2) + (1//7)*(1 - x)^(7//2)*(1 + x)^(7//2) + (5*asin(x))/16, integration_var = x, mistery_val = 6),
#     (integrand = (1 - x)^(5//2)*(1 + x)^(5//2), result = (5//16)*sqrt(1 - x)*x*sqrt(1 + x) + (5//24)*(1 - x)^(3//2)*x*(1 + x)^(3//2) + (1//6)*(1 - x)^(5//2)*x*(1 + x)^(5//2) + (5*asin(x))/16, integration_var = x, mistery_val = 5),
#     (integrand = (1 - x)^(3//2)*(1 + x)^(5//2), result = (3//8)*sqrt(1 - x)*x*sqrt(1 + x) + (1//4)*(1 - x)^(3//2)*x*(1 + x)^(3//2) - (1//5)*(1 - x)^(5//2)*(1 + x)^(5//2) + (3*asin(x))/8, integration_var = x, mistery_val = 5),
#     (integrand = (1 - x)^(1//2)*(1 + x)^(5//2), result = (5//8)*sqrt(1 - x)*x*sqrt(1 + x) - (5//12)*(1 - x)^(3//2)*(1 + x)^(3//2) - (1//4)*(1 - x)^(3//2)*(1 + x)^(5//2) + (5*asin(x))/8, integration_var = x, mistery_val = 5),
#     (integrand = (1 + x)^(5//2)/(1 - x)^(1//2), result = (-(5//2))*sqrt(1 - x)*sqrt(1 + x) - (5//6)*sqrt(1 - x)*(1 + x)^(3//2) - (1//3)*sqrt(1 - x)*(1 + x)^(5//2) + (5*asin(x))/2, integration_var = x, mistery_val = 5),
#     (integrand = (1 + x)^(5//2)/(1 - x)^(3//2), result = (15//2)*sqrt(1 - x)*sqrt(1 + x) + (5//2)*sqrt(1 - x)*(1 + x)^(3//2) + (2*(1 + x)^(5//2))/sqrt(1 - x) - (15*asin(x))/2, integration_var = x, mistery_val = 5),
#     (integrand = (1 + x)^(5//2)/(1 - x)^(5//2), result = -5*sqrt(1 - x)*sqrt(1 + x) - (10*(1 + x)^(3//2))/(3*sqrt(1 - x)) + (2*(1 + x)^(5//2))/(3*(1 - x)^(3//2)) + 5*asin(x), integration_var = x, mistery_val = 5),
#     (integrand = (1 + x)^(5//2)/(1 - x)^(7//2), result = (2*sqrt(1 + x))/sqrt(1 - x) - (2*(1 + x)^(3//2))/(3*(1 - x)^(3//2)) + (2*(1 + x)^(5//2))/(5*(1 - x)^(5//2)) - asin(x), integration_var = x, mistery_val = 5),
#     (integrand = (1 + x)^(5//2)/(1 - x)^(9//2), result = (1 + x)^(7//2)/(7*(1 - x)^(7//2)), integration_var = x, mistery_val = 1),
#     (integrand = (1 + x)^(5//2)/(1 - x)^(11//2), result = (1 + x)^(7//2)/(9*(1 - x)^(9//2)) + (1 + x)^(7//2)/(63*(1 - x)^(7//2)), integration_var = x, mistery_val = 2),
#     (integrand = (1 + x)^(5//2)/(1 - x)^(13//2), result = (1 + x)^(7//2)/(11*(1 - x)^(11//2)) + (2*(1 + x)^(7//2))/(99*(1 - x)^(9//2)) + (2*(1 + x)^(7//2))/(693*(1 - x)^(7//2)), integration_var = x, mistery_val = 3),
#     (integrand = (1 + x)^(5//2)/(1 - x)^(15//2), result = (1 + x)^(7//2)/(13*(1 - x)^(13//2)) + (3*(1 + x)^(7//2))/(143*(1 - x)^(11//2)) + (2*(1 + x)^(7//2))/(429*(1 - x)^(9//2)) + (2*(1 + x)^(7//2))/(3003*(1 - x)^(7//2)), integration_var = x, mistery_val = 4),
#     (integrand = (1 + x)^(5//2)/(1 - x)^(17//2), result = (1 + x)^(7//2)/(15*(1 - x)^(15//2)) + (4*(1 + x)^(7//2))/(195*(1 - x)^(13//2)) + (4*(1 + x)^(7//2))/(715*(1 - x)^(11//2)) + (8*(1 + x)^(7//2))/(6435*(1 - x)^(9//2)) + (8*(1 + x)^(7//2))/(45045*(1 - x)^(7//2)), integration_var = x, mistery_val = 5),
#     (integrand = (1 + x)^(5//2)/(1 - x)^(19//2), result = (1 + x)^(7//2)/(17*(1 - x)^(17//2)) + (1 + x)^(7//2)/(51*(1 - x)^(15//2)) + (4*(1 + x)^(7//2))/(663*(1 - x)^(13//2)) + (4*(1 + x)^(7//2))/(2431*(1 - x)^(11//2)) + (8*(1 + x)^(7//2))/(21879*(1 - x)^(9//2)) + (8*(1 + x)^(7//2))/(153153*(1 - x)^(7//2)), integration_var = x, mistery_val = 6),
# 
# 
# # Note: Following two integrands are equal.
#     (integrand = (1 + a*x)^(3//2)/sqrt(1 - a*x), result = -((3*sqrt(1 - a*x)*sqrt(1 + a*x))/(2*a)) - (sqrt(1 - a*x)*(1 + a*x)^(3//2))/(2*a) + (3*asin(a*x))/(2*a), integration_var = x, mistery_val = 4),
#     (integrand = ((1 + a*x)*sqrt(1 - a^2*x^2))/(1 - a*x), result = -((3*sqrt(1 - a^2*x^2))/(2*a)) - (1 - a^2*x^2)^(3//2)/(2*a*(1 - a*x)) + (3*asin(a*x))/(2*a), integration_var = x, mistery_val = 3),
# 
# 
# # ::Subsubsection::Closed::
# # n<0
# 
# 
#     (integrand = (1 - x)^(7//2)/(1 + x)^(1//2), result = (35//8)*sqrt(1 - x)*sqrt(1 + x) + (35//24)*(1 - x)^(3//2)*sqrt(1 + x) + (7//12)*(1 - x)^(5//2)*sqrt(1 + x) + (1//4)*(1 - x)^(7//2)*sqrt(1 + x) + (35*asin(x))/8, integration_var = x, mistery_val = 6),
#     (integrand = (1 - x)^(5//2)/(1 + x)^(1//2), result = (5//2)*sqrt(1 - x)*sqrt(1 + x) + (5//6)*(1 - x)^(3//2)*sqrt(1 + x) + (1//3)*(1 - x)^(5//2)*sqrt(1 + x) + (5*asin(x))/2, integration_var = x, mistery_val = 5),
#     (integrand = (1 - x)^(3//2)/(1 + x)^(1//2), result = (3//2)*sqrt(1 - x)*sqrt(1 + x) + (1//2)*(1 - x)^(3//2)*sqrt(1 + x) + (3*asin(x))/2, integration_var = x, mistery_val = 4),
#     (integrand = (1 - x)^(1//2)/(1 + x)^(1//2), result = sqrt(1 - x)*sqrt(1 + x) + asin(x), integration_var = x, mistery_val = 3),
#     (integrand = 1/((1 - x)^(1//2)*(1 + x)^(1//2)), result = asin(x), integration_var = x, mistery_val = 2),
#     (integrand = 1/((1 - x)^(3//2)*(1 + x)^(1//2)), result = sqrt(1 + x)/sqrt(1 - x), integration_var = x, mistery_val = 1),
#     (integrand = 1/((1 - x)^(5//2)*(1 + x)^(1//2)), result = sqrt(1 + x)/(3*(1 - x)^(3//2)) + sqrt(1 + x)/(3*sqrt(1 - x)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((1 - x)^(7//2)*(1 + x)^(1//2)), result = sqrt(1 + x)/(5*(1 - x)^(5//2)) + (2*sqrt(1 + x))/(15*(1 - x)^(3//2)) + (2*sqrt(1 + x))/(15*sqrt(1 - x)), integration_var = x, mistery_val = 3),
#     (integrand = 1/((1 - x)^(9//2)*(1 + x)^(1//2)), result = sqrt(1 + x)/(7*(1 - x)^(7//2)) + (3*sqrt(1 + x))/(35*(1 - x)^(5//2)) + (2*sqrt(1 + x))/(35*(1 - x)^(3//2)) + (2*sqrt(1 + x))/(35*sqrt(1 - x)), integration_var = x, mistery_val = 4),
#     (integrand = 1/((1 - x)^(11//2)*(1 + x)^(1//2)), result = sqrt(1 + x)/(9*(1 - x)^(9//2)) + (4*sqrt(1 + x))/(63*(1 - x)^(7//2)) + (4*sqrt(1 + x))/(105*(1 - x)^(5//2)) + (8*sqrt(1 + x))/(315*(1 - x)^(3//2)) + (8*sqrt(1 + x))/(315*sqrt(1 - x)), integration_var = x, mistery_val = 5),
# 
# 
#     (integrand = (1 - x)^(7//2)/(1 + x)^(3//2), result = -((2*(1 - x)^(7//2))/sqrt(1 + x)) - (35//2)*sqrt(1 - x)*sqrt(1 + x) - (35//6)*(1 - x)^(3//2)*sqrt(1 + x) - (7//3)*(1 - x)^(5//2)*sqrt(1 + x) - (35*asin(x))/2, integration_var = x, mistery_val = 6),
#     (integrand = (1 - x)^(5//2)/(1 + x)^(3//2), result = -((2*(1 - x)^(5//2))/sqrt(1 + x)) - (15//2)*sqrt(1 - x)*sqrt(1 + x) - (5//2)*(1 - x)^(3//2)*sqrt(1 + x) - (15*asin(x))/2, integration_var = x, mistery_val = 5),
#     (integrand = (1 - x)^(3//2)/(1 + x)^(3//2), result = -((2*(1 - x)^(3//2))/sqrt(1 + x)) - 3*sqrt(1 - x)*sqrt(1 + x) - 3*asin(x), integration_var = x, mistery_val = 4),
#     (integrand = (1 - x)^(1//2)/(1 + x)^(3//2), result = -((2*sqrt(1 - x))/sqrt(1 + x)) - asin(x), integration_var = x, mistery_val = 3),
#     (integrand = 1/((1 - x)^(1//2)*(1 + x)^(3//2)), result = -(sqrt(1 - x)/sqrt(1 + x)), integration_var = x, mistery_val = 1),
#     (integrand = 1/((1 - x)^(3//2)*(1 + x)^(3//2)), result = x/(sqrt(1 - x)*sqrt(1 + x)), integration_var = x, mistery_val = 1),
#     (integrand = 1/((1 - x)^(5//2)*(1 + x)^(3//2)), result = 1/(3*(1 - x)^(3//2)*sqrt(1 + x)) + (2*x)/(3*sqrt(1 - x)*sqrt(1 + x)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((1 - x)^(7//2)*(1 + x)^(3//2)), result = 1/(5*(1 - x)^(5//2)*sqrt(1 + x)) + 1/(5*(1 - x)^(3//2)*sqrt(1 + x)) + (2*x)/(5*sqrt(1 - x)*sqrt(1 + x)), integration_var = x, mistery_val = 3),
#     (integrand = 1/((1 - x)^(9//2)*(1 + x)^(3//2)), result = 1/(7*(1 - x)^(7//2)*sqrt(1 + x)) + 4/(35*(1 - x)^(5//2)*sqrt(1 + x)) + 4/(35*(1 - x)^(3//2)*sqrt(1 + x)) + (8*x)/(35*sqrt(1 - x)*sqrt(1 + x)), integration_var = x, mistery_val = 4),
#     (integrand = 1/((1 - x)^(11//2)*(1 + x)^(3//2)), result = 1/(9*(1 - x)^(9//2)*sqrt(1 + x)) + 5/(63*(1 - x)^(7//2)*sqrt(1 + x)) + 4/(63*(1 - x)^(5//2)*sqrt(1 + x)) + 4/(63*(1 - x)^(3//2)*sqrt(1 + x)) + (8*x)/(63*sqrt(1 - x)*sqrt(1 + x)), integration_var = x, mistery_val = 5),
# 
# 
#     (integrand = (1 - x)^(9//2)/(1 + x)^(5//2), result = -((2*(1 - x)^(9//2))/(3*(1 + x)^(3//2))) + (6*(1 - x)^(7//2))/sqrt(1 + x) + (105//2)*sqrt(1 - x)*sqrt(1 + x) + (35//2)*(1 - x)^(3//2)*sqrt(1 + x) + 7*(1 - x)^(5//2)*sqrt(1 + x) + (105*asin(x))/2, integration_var = x, mistery_val = 7),
#     (integrand = (1 - x)^(7//2)/(1 + x)^(5//2), result = -((2*(1 - x)^(7//2))/(3*(1 + x)^(3//2))) + (14*(1 - x)^(5//2))/(3*sqrt(1 + x)) + (35//2)*sqrt(1 - x)*sqrt(1 + x) + (35//6)*(1 - x)^(3//2)*sqrt(1 + x) + (35*asin(x))/2, integration_var = x, mistery_val = 6),
#     (integrand = (1 - x)^(5//2)/(1 + x)^(5//2), result = -((2*(1 - x)^(5//2))/(3*(1 + x)^(3//2))) + (10*(1 - x)^(3//2))/(3*sqrt(1 + x)) + 5*sqrt(1 - x)*sqrt(1 + x) + 5*asin(x), integration_var = x, mistery_val = 5),
#     (integrand = (1 - x)^(3//2)/(1 + x)^(5//2), result = -((2*(1 - x)^(3//2))/(3*(1 + x)^(3//2))) + (2*sqrt(1 - x))/sqrt(1 + x) + asin(x), integration_var = x, mistery_val = 4),
#     (integrand = (1 - x)^(1//2)/(1 + x)^(5//2), result = -((1 - x)^(3//2)/(3*(1 + x)^(3//2))), integration_var = x, mistery_val = 1),
#     (integrand = 1/((1 - x)^(1//2)*(1 + x)^(5//2)), result = -(sqrt(1 - x)/(3*(1 + x)^(3//2))) - sqrt(1 - x)/(3*sqrt(1 + x)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((1 - x)^(3//2)*(1 + x)^(5//2)), result = 1/(sqrt(1 - x)*(1 + x)^(3//2)) - (2*sqrt(1 - x))/(3*(1 + x)^(3//2)) - (2*sqrt(1 - x))/(3*sqrt(1 + x)), integration_var = x, mistery_val = 3),
#     (integrand = 1/((1 - x)^(5//2)*(1 + x)^(5//2)), result = x/(3*(1 - x)^(3//2)*(1 + x)^(3//2)) + (2*x)/(3*sqrt(1 - x)*sqrt(1 + x)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((1 - x)^(7//2)*(1 + x)^(5//2)), result = 1/(5*(1 - x)^(5//2)*(1 + x)^(3//2)) + (4*x)/(15*(1 - x)^(3//2)*(1 + x)^(3//2)) + (8*x)/(15*sqrt(1 - x)*sqrt(1 + x)), integration_var = x, mistery_val = 3),
#     (integrand = 1/((1 - x)^(9//2)*(1 + x)^(5//2)), result = 1/(7*(1 - x)^(7//2)*(1 + x)^(3//2)) + 1/(7*(1 - x)^(5//2)*(1 + x)^(3//2)) + (4*x)/(21*(1 - x)^(3//2)*(1 + x)^(3//2)) + (8*x)/(21*sqrt(1 - x)*sqrt(1 + x)), integration_var = x, mistery_val = 4),
#     (integrand = 1/((1 - x)^(11//2)*(1 + x)^(5//2)), result = 1/(9*(1 - x)^(9//2)*(1 + x)^(3//2)) + 2/(21*(1 - x)^(7//2)*(1 + x)^(3//2)) + 2/(21*(1 - x)^(5//2)*(1 + x)^(3//2)) + (8*x)/(63*(1 - x)^(3//2)*(1 + x)^(3//2)) + (16*x)/(63*sqrt(1 - x)*sqrt(1 + x)), integration_var = x, mistery_val = 5),
# 
# 
# # ::Subsection::Closed::
# # Integrands of the form (a+b x)^(m/2) (c+d x)^(m/2) when b c+a d=0
# 
# 
#     (integrand = (a + a*x)^(5//2)*(c - c*x)^(5//2), result = (5//16)*a^2*c^2*x*sqrt(a + a*x)*sqrt(c - c*x) + (5//24)*a*c*x*(a + a*x)^(3//2)*(c - c*x)^(3//2) + (1//6)*x*(a + a*x)^(5//2)*(c - c*x)^(5//2) + (5//8)*a^(5//2)*c^(5//2)*atan((sqrt(c)*sqrt(a + a*x))/(sqrt(a)*sqrt(c - c*x))), integration_var = x, mistery_val = 6),
#     (integrand = (a + a*x)^(3//2)*(c - c*x)^(3//2), result = (3//8)*a*c*x*sqrt(a + a*x)*sqrt(c - c*x) + (1//4)*x*(a + a*x)^(3//2)*(c - c*x)^(3//2) + (3//4)*a^(3//2)*c^(3//2)*atan((sqrt(c)*sqrt(a + a*x))/(sqrt(a)*sqrt(c - c*x))), integration_var = x, mistery_val = 5),
#     (integrand = (a + a*x)^(1//2)*(c - c*x)^(1//2), result = (1//2)*x*sqrt(a + a*x)*sqrt(c - c*x) + sqrt(a)*sqrt(c)*atan((sqrt(c)*sqrt(a + a*x))/(sqrt(a)*sqrt(c - c*x))), integration_var = x, mistery_val = 4),
#     (integrand = 1/((a + a*x)^(1//2)*(c - c*x)^(1//2)), result = (2*atan((sqrt(c)*sqrt(a + a*x))/(sqrt(a)*sqrt(c - c*x))))/(sqrt(a)*sqrt(c)), integration_var = x, mistery_val = 3),
#     (integrand = 1/((a + a*x)^(3//2)*(c - c*x)^(3//2)), result = x/(a*c*sqrt(a + a*x)*sqrt(c - c*x)), integration_var = x, mistery_val = 1),
#     (integrand = 1/((a + a*x)^(5//2)*(c - c*x)^(5//2)), result = x/(3*a*c*(a + a*x)^(3//2)*(c - c*x)^(3//2)) + (2*x)/(3*a^2*c^2*sqrt(a + a*x)*sqrt(c - c*x)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((a + a*x)^(7//2)*(c - c*x)^(7//2)), result = x/(5*a*c*(a + a*x)^(5//2)*(c - c*x)^(5//2)) + (4*x)/(15*a^2*c^2*(a + a*x)^(3//2)*(c - c*x)^(3//2)) + (8*x)/(15*a^3*c^3*sqrt(a + a*x)*sqrt(c - c*x)), integration_var = x, mistery_val = 3),
#     (integrand = 1/((a + a*x)^(9//2)*(c - c*x)^(9//2)), result = x/(7*a*c*(a + a*x)^(7//2)*(c - c*x)^(7//2)) + (6*x)/(35*a^2*c^2*(a + a*x)^(5//2)*(c - c*x)^(5//2)) + (8*x)/(35*a^3*c^3*(a + a*x)^(3//2)*(c - c*x)^(3//2)) + (16*x)/(35*a^4*c^4*sqrt(a + a*x)*sqrt(c - c*x)), integration_var = x, mistery_val = 4),
# 
# 
#     (integrand = (a + b*x)^(5//2)*(a*c - b*c*x)^(5//2), result = (5//16)*a^4*c^2*x*sqrt(a + b*x)*sqrt(a*c - b*c*x) + (5//24)*a^2*c*x*(a + b*x)^(3//2)*(a*c - b*c*x)^(3//2) + (1//6)*x*(a + b*x)^(5//2)*(a*c - b*c*x)^(5//2) + (5*a^6*c^(5//2)*atan((sqrt(c)*sqrt(a + b*x))/sqrt(c*(a - b*x))))/(8*b), integration_var = x, mistery_val = 6),
#     (integrand = (a + b*x)^(3//2)*(a*c - b*c*x)^(3//2), result = (3//8)*a^2*c*x*sqrt(a + b*x)*sqrt(a*c - b*c*x) + (1//4)*x*(a + b*x)^(3//2)*(a*c - b*c*x)^(3//2) + (3*a^4*c^(3//2)*atan((sqrt(c)*sqrt(a + b*x))/sqrt(c*(a - b*x))))/(4*b), integration_var = x, mistery_val = 5),
#     (integrand = (a + b*x)^(1//2)*(a*c - b*c*x)^(1//2), result = (1//2)*x*sqrt(a + b*x)*sqrt(a*c - b*c*x) + (a^2*sqrt(c)*atan((sqrt(c)*sqrt(a + b*x))/sqrt(c*(a - b*x))))/b, integration_var = x, mistery_val = 4),
#     (integrand = 1/((a + b*x)^(1//2)*(a*c - b*c*x)^(1//2)), result = (2*atan((sqrt(c)*sqrt(a + b*x))/sqrt(c*(a - b*x))))/(b*sqrt(c)), integration_var = x, mistery_val = 3),
#     (integrand = 1/((a + b*x)^(3//2)*(a*c - b*c*x)^(3//2)), result = x/(a^2*c*sqrt(a + b*x)*sqrt(a*c - b*c*x)), integration_var = x, mistery_val = 1),
#     (integrand = 1/((a + b*x)^(5//2)*(a*c - b*c*x)^(5//2)), result = x/(3*a^2*c*(a + b*x)^(3//2)*(a*c - b*c*x)^(3//2)) + (2*x)/(3*a^4*c^2*sqrt(a + b*x)*sqrt(a*c - b*c*x)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((a + b*x)^(7//2)*(a*c - b*c*x)^(7//2)), result = x/(5*a^2*c*(a + b*x)^(5//2)*(a*c - b*c*x)^(5//2)) + (4*x)/(15*a^4*c^2*(a + b*x)^(3//2)*(a*c - b*c*x)^(3//2)) + (8*x)/(15*a^6*c^3*sqrt(a + b*x)*sqrt(a*c - b*c*x)), integration_var = x, mistery_val = 3),
#     (integrand = 1/((a + b*x)^(9//2)*(a*c - b*c*x)^(9//2)), result = x/(7*a^2*c*(a + b*x)^(7//2)*(a*c - b*c*x)^(7//2)) + (6*x)/(35*a^4*c^2*(a + b*x)^(5//2)*(a*c - b*c*x)^(5//2)) + (8*x)/(35*a^6*c^3*(a + b*x)^(3//2)*(a*c - b*c*x)^(3//2)) + (16*x)/(35*a^8*c^4*sqrt(a + b*x)*sqrt(a*c - b*c*x)), integration_var = x, mistery_val = 4),
# 
# 
#     (integrand = (3 - 6*x)^(5//2)*(2 + 4*x)^(5//2), result = (45//2)*sqrt(3//2)*sqrt(1 - 2*x)*x*sqrt(1 + 2*x) + 15*sqrt(3//2)*(1 - 2*x)^(3//2)*x*(1 + 2*x)^(3//2) + 6*sqrt(6)*(1 - 2*x)^(5//2)*x*(1 + 2*x)^(5//2) + (45//4)*sqrt(3//2)*asin(2*x), integration_var = x, mistery_val = 5),
#     (integrand = (3 - 6*x)^(3//2)*(2 + 4*x)^(3//2), result = (9//2)*sqrt(3//2)*sqrt(1 - 2*x)*x*sqrt(1 + 2*x) + 3*sqrt(3//2)*(1 - 2*x)^(3//2)*x*(1 + 2*x)^(3//2) + (9//4)*sqrt(3//2)*asin(2*x), integration_var = x, mistery_val = 4),
#     (integrand = (3 - 6*x)^(1//2)*(2 + 4*x)^(1//2), result = sqrt(3//2)*sqrt(1 - 2*x)*x*sqrt(1 + 2*x) + (1//2)*sqrt(3//2)*asin(2*x), integration_var = x, mistery_val = 3),
#     (integrand = 1/((3 - 6*x)^(1//2)*(2 + 4*x)^(1//2)), result = asin(2*x)/(2*sqrt(6)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((3 - 6*x)^(3//2)*(2 + 4*x)^(3//2)), result = x/(6*sqrt(6)*sqrt(1 - 2*x)*sqrt(1 + 2*x)), integration_var = x, mistery_val = 1),
#     (integrand = 1/((3 - 6*x)^(5//2)*(2 + 4*x)^(5//2)), result = x/(108*sqrt(6)*(1 - 2*x)^(3//2)*(1 + 2*x)^(3//2)) + x/(54*sqrt(6)*sqrt(1 - 2*x)*sqrt(1 + 2*x)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((3 - 6*x)^(7//2)*(2 + 4*x)^(7//2)), result = x/(1080*sqrt(6)*(1 - 2*x)^(5//2)*(1 + 2*x)^(5//2)) + x/(810*sqrt(6)*(1 - 2*x)^(3//2)*(1 + 2*x)^(3//2)) + x/(405*sqrt(6)*sqrt(1 - 2*x)*sqrt(1 + 2*x)), integration_var = x, mistery_val = 3),
# 
# 
# # Note: (3-x)^m*(-2+x)^m == (-6+5*x-x^2)^m
#     (integrand = (3 - x)^(3//2)*(-2 + x)^(3//2), result = (3//64)*sqrt(3 - x)*sqrt(-2 + x) + (1//32)*(3 - x)^(3//2)*sqrt(-2 + x) - (1//8)*(3 - x)^(5//2)*sqrt(-2 + x) - (1//4)*(3 - x)^(5//2)*(-2 + x)^(3//2) - (3//128)*asin(5 - 2*x), integration_var = x, mistery_val = 7),
#     (integrand = (3 - x)^(1//2)*(-2 + x)^(1//2), result = (1//4)*sqrt(3 - x)*sqrt(-2 + x) - (1//2)*(3 - x)^(3//2)*sqrt(-2 + x) - (1//8)*asin(5 - 2*x), integration_var = x, mistery_val = 5),
#     (integrand = 1/((3 - x)^(1//2)*(-2 + x)^(1//2)), result = -asin(5 - 2*x), integration_var = x, mistery_val = 3),
#     (integrand = 1/((3 - x)^(3//2)*(-2 + x)^(3//2)), result = 2/(sqrt(3 - x)*sqrt(-2 + x)) - (4*sqrt(3 - x))/sqrt(-2 + x), integration_var = x, mistery_val = 2),
#     (integrand = 1/((3 - x)^(5//2)*(-2 + x)^(5//2)), result = 2/(3*(3 - x)^(3//2)*(-2 + x)^(3//2)) + 4/(sqrt(3 - x)*(-2 + x)^(3//2)) - (16*sqrt(3 - x))/(3*(-2 + x)^(3//2)) - (32*sqrt(3 - x))/(3*sqrt(-2 + x)), integration_var = x, mistery_val = 4),
# 
# 
#     (integrand = 1/((3 - x)^(3//2)*(3 + x)^(3//2)), result = x/(9*sqrt(3 - x)*sqrt(3 + x)), integration_var = x, mistery_val = 1),
#     (integrand = 1/((3 - b*x)^(3//2)*(3 + b*x)^(3//2)), result = x/(9*sqrt(3 - b*x)*sqrt(3 + b*x)), integration_var = x, mistery_val = 1),
# 
#     (integrand = 1/((6 - 2*x)^(3//2)*(3 + x)^(3//2)), result = x/(18*sqrt(2)*sqrt(3 - x)*sqrt(3 + x)), integration_var = x, mistery_val = 1),
#     (integrand = 1/((6 - 2*b*x)^(3//2)*(3 + b*x)^(3//2)), result = x/(18*sqrt(2)*sqrt(3 - b*x)*sqrt(3 + b*x)), integration_var = x, mistery_val = 1),
# 
# 
#     (integrand = 1/(sqrt(a + b*x)*sqrt(-a*d + b*d*x)), result = (2*atanh((sqrt(d)*sqrt(a + b*x))/sqrt((-a)*d + b*d*x)))/(b*sqrt(d)), integration_var = x, mistery_val = 3),
# 
# 
# # ::Subsection::Closed::
# # Integrands of the form (a+b x)^(m/4) (c+d x)^(n/4) when b c+a d=0
# 
# 
# 
# 
# # ::Subsubsection::
# # n>0
# 
# 
# # ::Subsubsection::Closed::
# # n<0
# 
# 
#     (integrand = (a - I*a*x)^(7//4)/(a + I*a*x)^(1//4), result = (14*a^2*x)/(5*(a - I*a*x)^(1//4)*(a + I*a*x)^(1//4)) - (14//15)*I*(a - I*a*x)^(3//4)*(a + I*a*x)^(3//4) - (2*I*(a - I*a*x)^(7//4)*(a + I*a*x)^(3//4))/(5*a) - (14*a^2*(1 + x^2)^(1//4)*EllipticE(atan(x)/2, 2))/(5*(a - I*a*x)^(1//4)*(a + I*a*x)^(1//4)), integration_var = x, mistery_val = 6),
#     (integrand = (a - I*a*x)^(3//4)/(a + I*a*x)^(1//4), result = (2*a*x)/((a - I*a*x)^(1//4)*(a + I*a*x)^(1//4)) - (2*I*(a - I*a*x)^(3//4)*(a + I*a*x)^(3//4))/(3*a) - (2*a*(1 + x^2)^(1//4)*EllipticE(atan(x)/2, 2))/((a - I*a*x)^(1//4)*(a + I*a*x)^(1//4)), integration_var = x, mistery_val = 5),
#     (integrand = 1/((a - I*a*x)^(1//4)*(a + I*a*x)^(1//4)), result = (2*x)/((a - I*a*x)^(1//4)*(a + I*a*x)^(1//4)) - (2*(1 + x^2)^(1//4)*EllipticE(atan(x)/2, 2))/((a - I*a*x)^(1//4)*(a + I*a*x)^(1//4)), integration_var = x, mistery_val = 4),
#     (integrand = 1/((a - I*a*x)^(5//4)*(a + I*a*x)^(1//4)), result = -((2*I)/(a*(a - I*a*x)^(1//4)*(a + I*a*x)^(1//4))) + (2*(1 + x^2)^(1//4)*EllipticE(atan(x)/2, 2))/(a*(a - I*a*x)^(1//4)*(a + I*a*x)^(1//4)), integration_var = x, mistery_val = 4),
#     (integrand = 1/((a - I*a*x)^(9//4)*(a + I*a*x)^(1//4)), result = -((4*I)/(5*a*(a - I*a*x)^(5//4)*(a + I*a*x)^(1//4))) + (2*(1 + x^2)^(1//4)*EllipticE(atan(x)/2, 2))/(5*a^2*(a - I*a*x)^(1//4)*(a + I*a*x)^(1//4)), integration_var = x, mistery_val = 4),
#     (integrand = 1/((a - I*a*x)^(13//4)*(a + I*a*x)^(1//4)), result = -((4*I)/(15*a^2*(a - I*a*x)^(5//4)*(a + I*a*x)^(1//4))) - (2*I*(a + I*a*x)^(3//4))/(9*a^2*(a - I*a*x)^(9//4)) + (2*(1 + x^2)^(1//4)*EllipticE(atan(x)/2, 2))/(15*a^3*(a - I*a*x)^(1//4)*(a + I*a*x)^(1//4)), integration_var = x, mistery_val = 5),
#     (integrand = 1/((a - I*a*x)^(17//4)*(a + I*a*x)^(1//4)), result = -((4*I)/(39*a^3*(a - I*a*x)^(5//4)*(a + I*a*x)^(1//4))) - (2*I*(a + I*a*x)^(3//4))/(13*a^2*(a - I*a*x)^(13//4)) - (10*I*(a + I*a*x)^(3//4))/(117*a^3*(a - I*a*x)^(9//4)) + (2*(1 + x^2)^(1//4)*EllipticE(atan(x)/2, 2))/(39*a^4*(a - I*a*x)^(1//4)*(a + I*a*x)^(1//4)), integration_var = x, mistery_val = 6),
# 
#     (integrand = (a - I*a*x)^(1//4)/(a + I*a*x)^(1//4), result = -((I*(a - I*a*x)^(1//4)*(a + I*a*x)^(3//4))/a) - (I*atan(1 - (sqrt(2)*(a - I*a*x)^(1//4))/(a + I*a*x)^(1//4)))/sqrt(2) + (I*atan(1 + (sqrt(2)*(a - I*a*x)^(1//4))/(a + I*a*x)^(1//4)))/sqrt(2) - (I*log(1 + sqrt(a - I*a*x)/sqrt(a + I*a*x) - (sqrt(2)*(a - I*a*x)^(1//4))/(a + I*a*x)^(1//4)))/(2*sqrt(2)) + (I*log(1 + sqrt(a - I*a*x)/sqrt(a + I*a*x) + (sqrt(2)*(a - I*a*x)^(1//4))/(a + I*a*x)^(1//4)))/(2*sqrt(2)), integration_var = x, mistery_val = 12),
#     (integrand = 1/((a - I*a*x)^(3//4)*(a + I*a*x)^(1//4)), result = -((I*sqrt(2)*atan(1 - (sqrt(2)*(a - I*a*x)^(1//4))/(a + I*a*x)^(1//4)))/a) + (I*sqrt(2)*atan(1 + (sqrt(2)*(a - I*a*x)^(1//4))/(a + I*a*x)^(1//4)))/a - (I*log(1 + sqrt(a - I*a*x)/sqrt(a + I*a*x) - (sqrt(2)*(a - I*a*x)^(1//4))/(a + I*a*x)^(1//4)))/(sqrt(2)*a) + (I*log(1 + sqrt(a - I*a*x)/sqrt(a + I*a*x) + (sqrt(2)*(a - I*a*x)^(1//4))/(a + I*a*x)^(1//4)))/(sqrt(2)*a), integration_var = x, mistery_val = 11),
#     (integrand = 1/((a - I*a*x)^(7//4)*(a + I*a*x)^(1//4)), result = -((2*I*(a + I*a*x)^(3//4))/(3*a^2*(a - I*a*x)^(3//4))), integration_var = x, mistery_val = 1),
#     (integrand = 1/((a - I*a*x)^(11//4)*(a + I*a*x)^(1//4)), result = -((2*I*(a + I*a*x)^(3//4))/(7*a^2*(a - I*a*x)^(7//4))) - (4*I*(a + I*a*x)^(3//4))/(21*a^3*(a - I*a*x)^(3//4)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((a - I*a*x)^(15//4)*(a + I*a*x)^(1//4)), result = -((2*I*(a + I*a*x)^(3//4))/(11*a^2*(a - I*a*x)^(11//4))) - (8*I*(a + I*a*x)^(3//4))/(77*a^3*(a - I*a*x)^(7//4)) - (16*I*(a + I*a*x)^(3//4))/(231*a^4*(a - I*a*x)^(3//4)), integration_var = x, mistery_val = 3),
#     (integrand = 1/((a - I*a*x)^(19//4)*(a + I*a*x)^(1//4)), result = -((2*I*(a + I*a*x)^(3//4))/(15*a^2*(a - I*a*x)^(15//4))) - (4*I*(a + I*a*x)^(3//4))/(55*a^3*(a - I*a*x)^(11//4)) - (16*I*(a + I*a*x)^(3//4))/(385*a^4*(a - I*a*x)^(7//4)) - (32*I*(a + I*a*x)^(3//4))/(1155*a^5*(a - I*a*x)^(3//4)), integration_var = x, mistery_val = 4),
# 
# 
#     (integrand = (a - I*a*x)^(3//4)/(a + I*a*x)^(3//4), result = -((I*(a - I*a*x)^(3//4)*(a + I*a*x)^(1//4))/a) - (3*I*atan(1 - (sqrt(2)*(a - I*a*x)^(1//4))/(a + I*a*x)^(1//4)))/sqrt(2) + (3*I*atan(1 + (sqrt(2)*(a - I*a*x)^(1//4))/(a + I*a*x)^(1//4)))/sqrt(2) + (3*I*log(1 + sqrt(a - I*a*x)/sqrt(a + I*a*x) - (sqrt(2)*(a - I*a*x)^(1//4))/(a + I*a*x)^(1//4)))/(2*sqrt(2)) - (3*I*log(1 + sqrt(a - I*a*x)/sqrt(a + I*a*x) + (sqrt(2)*(a - I*a*x)^(1//4))/(a + I*a*x)^(1//4)))/(2*sqrt(2)), integration_var = x, mistery_val = 12),
#     (integrand = 1/((a - I*a*x)^(1//4)*(a + I*a*x)^(3//4)), result = -((I*sqrt(2)*atan(1 - (sqrt(2)*(a - I*a*x)^(1//4))/(a + I*a*x)^(1//4)))/a) + (I*sqrt(2)*atan(1 + (sqrt(2)*(a - I*a*x)^(1//4))/(a + I*a*x)^(1//4)))/a + (I*log(1 + sqrt(a - I*a*x)/sqrt(a + I*a*x) - (sqrt(2)*(a - I*a*x)^(1//4))/(a + I*a*x)^(1//4)))/(sqrt(2)*a) - (I*log(1 + sqrt(a - I*a*x)/sqrt(a + I*a*x) + (sqrt(2)*(a - I*a*x)^(1//4))/(a + I*a*x)^(1//4)))/(sqrt(2)*a), integration_var = x, mistery_val = 11),
#     (integrand = 1/((a - I*a*x)^(5//4)*(a + I*a*x)^(3//4)), result = ((-2*I)*(a + I*a*x)^(1//4))/(a^2*(a - I*a*x)^(1//4)), integration_var = x, mistery_val = 1),
#     (integrand = 1/((a - I*a*x)^(9//4)*(a + I*a*x)^(3//4)), result = (((-2*I)/5)*(a + I*a*x)^(1//4))/(a^2*(a - I*a*x)^(5//4)) - (((4*I)/5)*(a + I*a*x)^(1//4))/(a^3*(a - I*a*x)^(1//4)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((a - I*a*x)^(13//4)*(a + I*a*x)^(3//4)), result = -((2*I*(a + I*a*x)^(1//4))/(9*a^2*(a - I*a*x)^(9//4))) - (8*I*(a + I*a*x)^(1//4))/(45*a^3*(a - I*a*x)^(5//4)) - (16*I*(a + I*a*x)^(1//4))/(45*a^4*(a - I*a*x)^(1//4)), integration_var = x, mistery_val = 3),
# 
#     (integrand = (a - I*a*x)^(5//4)/(a + I*a*x)^(3//4), result = ((-10*I)/3)*(a - I*a*x)^(1//4)*(a + I*a*x)^(1//4) - (((2*I)/3)*(a - I*a*x)^(5//4)*(a + I*a*x)^(1//4))/a + (10*a^2*(1 + x^2)^(3//4)*EllipticF(atan(x)/2, 2))/(3*(a - I*a*x)^(3//4)*(a + I*a*x)^(3//4)), integration_var = x, mistery_val = 5),
#     (integrand = (a - I*a*x)^(1//4)/(a + I*a*x)^(3//4), result = ((-2*I)*(a - I*a*x)^(1//4)*(a + I*a*x)^(1//4))/a + (2*a*(1 + x^2)^(3//4)*EllipticF(atan(x)/2, 2))/((a - I*a*x)^(3//4)*(a + I*a*x)^(3//4)), integration_var = x, mistery_val = 4),
#     (integrand = 1/((a - I*a*x)^(3//4)*(a + I*a*x)^(3//4)), result = (2*(1 + x^2)^(3//4)*EllipticF(atan(x)/2, 2))/((a - I*a*x)^(3//4)*(a + I*a*x)^(3//4)), integration_var = x, mistery_val = 3),
#     (integrand = 1/((a - I*a*x)^(7//4)*(a + I*a*x)^(3//4)), result = (((-2*I)/3)*(a + I*a*x)^(1//4))/(a^2*(a - I*a*x)^(3//4)) + (2*(1 + x^2)^(3//4)*EllipticF(atan(x)/2, 2))/(3*a*(a - I*a*x)^(3//4)*(a + I*a*x)^(3//4)), integration_var = x, mistery_val = 4),
#     (integrand = 1/((a - I*a*x)^(11//4)*(a + I*a*x)^(3//4)), result = (((-2*I)/7)*(a + I*a*x)^(1//4))/(a^2*(a - I*a*x)^(7//4)) - (((2*I)/7)*(a + I*a*x)^(1//4))/(a^3*(a - I*a*x)^(3//4)) + (2*(1 + x^2)^(3//4)*EllipticF(atan(x)/2, 2))/(7*a^2*(a - I*a*x)^(3//4)*(a + I*a*x)^(3//4)), integration_var = x, mistery_val = 5),
# 
# 
#     (integrand = (a - I*a*x)^(7//4)/(a + I*a*x)^(7//4), result = (4*I*(a - I*a*x)^(7//4))/(3*a*(a + I*a*x)^(3//4)) + (7*I*(a - I*a*x)^(3//4)*(a + I*a*x)^(1//4))/(3*a) + (7*I*atan(1 - (sqrt(2)*(a - I*a*x)^(1//4))/(a + I*a*x)^(1//4)))/sqrt(2) - (7*I*atan(1 + (sqrt(2)*(a - I*a*x)^(1//4))/(a + I*a*x)^(1//4)))/sqrt(2) - (7*I*log(1 + sqrt(a - I*a*x)/sqrt(a + I*a*x) - (sqrt(2)*(a - I*a*x)^(1//4))/(a + I*a*x)^(1//4)))/(2*sqrt(2)) + (7*I*log(1 + sqrt(a - I*a*x)/sqrt(a + I*a*x) + (sqrt(2)*(a - I*a*x)^(1//4))/(a + I*a*x)^(1//4)))/(2*sqrt(2)), integration_var = x, mistery_val = 13),
#     (integrand = (a - I*a*x)^(3//4)/(a + I*a*x)^(7//4), result = (4*I*(a - I*a*x)^(3//4))/(3*a*(a + I*a*x)^(3//4)) + (I*sqrt(2)*atan(1 - (sqrt(2)*(a - I*a*x)^(1//4))/(a + I*a*x)^(1//4)))/a - (I*sqrt(2)*atan(1 + (sqrt(2)*(a - I*a*x)^(1//4))/(a + I*a*x)^(1//4)))/a - (I*log(1 + sqrt(a - I*a*x)/sqrt(a + I*a*x) - (sqrt(2)*(a - I*a*x)^(1//4))/(a + I*a*x)^(1//4)))/(sqrt(2)*a) + (I*log(1 + sqrt(a - I*a*x)/sqrt(a + I*a*x) + (sqrt(2)*(a - I*a*x)^(1//4))/(a + I*a*x)^(1//4)))/(sqrt(2)*a), integration_var = x, mistery_val = 12),
#     (integrand = 1/((a - I*a*x)^(1//4)*(a + I*a*x)^(7//4)), result = (((2*I)/3)*(a - I*a*x)^(3//4))/(a^2*(a + I*a*x)^(3//4)), integration_var = x, mistery_val = 1),
#     (integrand = 1/((a - I*a*x)^(5//4)*(a + I*a*x)^(7//4)), result = (-2*I)/(a^2*(a - I*a*x)^(1//4)*(a + I*a*x)^(3//4)) + (((4*I)/3)*(a - I*a*x)^(3//4))/(a^3*(a + I*a*x)^(3//4)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((a - I*a*x)^(9//4)*(a + I*a*x)^(7//4)), result = ((-2*I)/5)/(a^2*(a - I*a*x)^(5//4)*(a + I*a*x)^(3//4)) - ((8*I)/5)/(a^3*(a - I*a*x)^(1//4)*(a + I*a*x)^(3//4)) + (((16*I)/15)*(a - I*a*x)^(3//4))/(a^4*(a + I*a*x)^(3//4)), integration_var = x, mistery_val = 3),
# 
#     (integrand = (a - I*a*x)^(9//4)/(a + I*a*x)^(7//4), result = (4*I*(a - I*a*x)^(9//4))/(3*a*(a + I*a*x)^(3//4)) + 10*I*(a - I*a*x)^(1//4)*(a + I*a*x)^(1//4) + (2*I*(a - I*a*x)^(5//4)*(a + I*a*x)^(1//4))/a - (10*a^2*(1 + x^2)^(3//4)*EllipticF(atan(x)/2, 2))/((a - I*a*x)^(3//4)*(a + I*a*x)^(3//4)), integration_var = x, mistery_val = 6),
#     (integrand = (a - I*a*x)^(5//4)/(a + I*a*x)^(7//4), result = (((4*I)/3)*(a - I*a*x)^(5//4))/(a*(a + I*a*x)^(3//4)) + (((10*I)/3)*(a - I*a*x)^(1//4)*(a + I*a*x)^(1//4))/a - (10*a*(1 + x^2)^(3//4)*EllipticF(atan(x)/2, 2))/(3*(a - I*a*x)^(3//4)*(a + I*a*x)^(3//4)), integration_var = x, mistery_val = 5),
#     (integrand = (a - I*a*x)^(1//4)/(a + I*a*x)^(7//4), result = (((4*I)/3)*(a - I*a*x)^(1//4))/(a*(a + I*a*x)^(3//4)) - (2*(1 + x^2)^(3//4)*EllipticF(atan(x)/2, 2))/(3*(a - I*a*x)^(3//4)*(a + I*a*x)^(3//4)), integration_var = x, mistery_val = 4),
#     (integrand = 1/((a - I*a*x)^(3//4)*(a + I*a*x)^(7//4)), result = (((2*I)/3)*(a - I*a*x)^(1//4))/(a^2*(a + I*a*x)^(3//4)) + (2*(1 + x^2)^(3//4)*EllipticF(atan(x)/2, 2))/(3*a*(a - I*a*x)^(3//4)*(a + I*a*x)^(3//4)), integration_var = x, mistery_val = 4),
#     (integrand = 1/((a - I*a*x)^(7//4)*(a + I*a*x)^(7//4)), result = (2*x)/(3*a^2*(a - I*a*x)^(3//4)*(a + I*a*x)^(3//4)) + (2*(1 + x^2)^(3//4)*EllipticF(atan(x)/2, 2))/(3*a^2*(a - I*a*x)^(3//4)*(a + I*a*x)^(3//4)), integration_var = x, mistery_val = 4),
#     (integrand = 1/((a - I*a*x)^(11//4)*(a + I*a*x)^(7//4)), result = ((-2*I)/7)/(a^2*(a - I*a*x)^(7//4)*(a + I*a*x)^(3//4)) + (10*x)/(21*a^3*(a - I*a*x)^(3//4)*(a + I*a*x)^(3//4)) + (10*(1 + x^2)^(3//4)*EllipticF(atan(x)/2, 2))/(21*a^3*(a - I*a*x)^(3//4)*(a + I*a*x)^(3//4)), integration_var = x, mistery_val = 5),
#     (integrand = 1/((a - I*a*x)^(15//4)*(a + I*a*x)^(7//4)), result = -((2*I)/(11*a^2*(a - I*a*x)^(11//4)*(a + I*a*x)^(3//4))) - (2*I)/(11*a^3*(a - I*a*x)^(7//4)*(a + I*a*x)^(3//4)) + (10*x)/(33*a^4*(a - I*a*x)^(3//4)*(a + I*a*x)^(3//4)) + (10*(1 + x^2)^(3//4)*EllipticF(atan(x)/2, 2))/(33*a^4*(a - I*a*x)^(3//4)*(a + I*a*x)^(3//4)), integration_var = x, mistery_val = 6),
# 
# 
#     (integrand = (a - I*a*x)^(7//4)/(a + I*a*x)^(5//4), result = (-14*a*x)/((a - I*a*x)^(1//4)*(a + I*a*x)^(1//4)) + ((4*I)*(a - I*a*x)^(7//4))/(a*(a + I*a*x)^(1//4)) + (((14*I)/3)*(a - I*a*x)^(3//4)*(a + I*a*x)^(3//4))/a + (14*a*(1 + x^2)^(1//4)*EllipticE(atan(x)/2, 2))/((a - I*a*x)^(1//4)*(a + I*a*x)^(1//4)), integration_var = x, mistery_val = 6),
#     (integrand = (a - I*a*x)^(3//4)/(a + I*a*x)^(5//4), result = (-6*x)/((a - I*a*x)^(1//4)*(a + I*a*x)^(1//4)) + ((4*I)*(a - I*a*x)^(3//4))/(a*(a + I*a*x)^(1//4)) + (6*(1 + x^2)^(1//4)*EllipticE(atan(x)/2, 2))/((a - I*a*x)^(1//4)*(a + I*a*x)^(1//4)), integration_var = x, mistery_val = 5),
#     (integrand = 1/((a - I*a*x)^(1//4)*(a + I*a*x)^(5//4)), result = (2*I)/(a*(a - I*a*x)^(1//4)*(a + I*a*x)^(1//4)) + (2*(1 + x^2)^(1//4)*EllipticE(atan(x)/2, 2))/(a*(a - I*a*x)^(1//4)*(a + I*a*x)^(1//4)), integration_var = x, mistery_val = 4),
#     (integrand = 1/((a - I*a*x)^(5//4)*(a + I*a*x)^(5//4)), result = (2*(1 + x^2)^(1//4)*EllipticE(atan(x)/2, 2))/(a^2*(a - I*a*x)^(1//4)*(a + I*a*x)^(1//4)), integration_var = x, mistery_val = 3),
#     (integrand = 1/((a - I*a*x)^(9//4)*(a + I*a*x)^(5//4)), result = ((-2*I)/5)/(a^2*(a - I*a*x)^(5//4)*(a + I*a*x)^(1//4)) + (6*(1 + x^2)^(1//4)*EllipticE(atan(x)/2, 2))/(5*a^3*(a - I*a*x)^(1//4)*(a + I*a*x)^(1//4)), integration_var = x, mistery_val = 4),
#     (integrand = 1/((a - I*a*x)^(13//4)*(a + I*a*x)^(5//4)), result = -((2*I)/(9*a^2*(a - I*a*x)^(9//4)*(a + I*a*x)^(1//4))) - (2*I)/(9*a^3*(a - I*a*x)^(5//4)*(a + I*a*x)^(1//4)) + (2*(1 + x^2)^(1//4)*EllipticE(atan(x)/2, 2))/(3*a^4*(a - I*a*x)^(1//4)*(a + I*a*x)^(1//4)), integration_var = x, mistery_val = 5),
# 
#     (integrand = (a - I*a*x)^(5//4)/(a + I*a*x)^(5//4), result = (4*I*(a - I*a*x)^(5//4))/(a*(a + I*a*x)^(1//4)) + (5*I*(a - I*a*x)^(1//4)*(a + I*a*x)^(3//4))/a + (5*I*atan(1 - (sqrt(2)*(a - I*a*x)^(1//4))/(a + I*a*x)^(1//4)))/sqrt(2) - (5*I*atan(1 + (sqrt(2)*(a - I*a*x)^(1//4))/(a + I*a*x)^(1//4)))/sqrt(2) + (5*I*log(1 + sqrt(a - I*a*x)/sqrt(a + I*a*x) - (sqrt(2)*(a - I*a*x)^(1//4))/(a + I*a*x)^(1//4)))/(2*sqrt(2)) - (5*I*log(1 + sqrt(a - I*a*x)/sqrt(a + I*a*x) + (sqrt(2)*(a - I*a*x)^(1//4))/(a + I*a*x)^(1//4)))/(2*sqrt(2)), integration_var = x, mistery_val = 13),
#     (integrand = (a - I*a*x)^(1//4)/(a + I*a*x)^(5//4), result = (4*I*(a - I*a*x)^(1//4))/(a*(a + I*a*x)^(1//4)) + (I*sqrt(2)*atan(1 - (sqrt(2)*(a - I*a*x)^(1//4))/(a + I*a*x)^(1//4)))/a - (I*sqrt(2)*atan(1 + (sqrt(2)*(a - I*a*x)^(1//4))/(a + I*a*x)^(1//4)))/a + (I*log(1 + sqrt(a - I*a*x)/sqrt(a + I*a*x) - (sqrt(2)*(a - I*a*x)^(1//4))/(a + I*a*x)^(1//4)))/(sqrt(2)*a) - (I*log(1 + sqrt(a - I*a*x)/sqrt(a + I*a*x) + (sqrt(2)*(a - I*a*x)^(1//4))/(a + I*a*x)^(1//4)))/(sqrt(2)*a), integration_var = x, mistery_val = 12),
#     (integrand = 1/((a - I*a*x)^(3//4)*(a + I*a*x)^(5//4)), result = ((2*I)*(a - I*a*x)^(1//4))/(a^2*(a + I*a*x)^(1//4)), integration_var = x, mistery_val = 1),
#     (integrand = 1/((a - I*a*x)^(7//4)*(a + I*a*x)^(5//4)), result = ((-2*I)/3)/(a^2*(a - I*a*x)^(3//4)*(a + I*a*x)^(1//4)) + (((4*I)/3)*(a - I*a*x)^(1//4))/(a^3*(a + I*a*x)^(1//4)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((a - I*a*x)^(11//4)*(a + I*a*x)^(5//4)), result = ((-2*I)/7)/(a^2*(a - I*a*x)^(7//4)*(a + I*a*x)^(1//4)) - ((8*I)/21)/(a^3*(a - I*a*x)^(3//4)*(a + I*a*x)^(1//4)) + (((16*I)/21)*(a - I*a*x)^(1//4))/(a^4*(a + I*a*x)^(1//4)), integration_var = x, mistery_val = 3),
# 
# 
#     (integrand = (a - I*a*x)^(7//4)/(a + I*a*x)^(9//4), result = (((4*I)/5)*(a - I*a*x)^(7//4))/(a*(a + I*a*x)^(5//4)) + (42*x)/(5*(a - I*a*x)^(1//4)*(a + I*a*x)^(1//4)) - (((28*I)/5)*(a - I*a*x)^(3//4))/(a*(a + I*a*x)^(1//4)) - (42*(1 + x^2)^(1//4)*EllipticE(atan(x)/2, 2))/(5*(a - I*a*x)^(1//4)*(a + I*a*x)^(1//4)), integration_var = x, mistery_val = 6),
#     (integrand = (a - I*a*x)^(3//4)/(a + I*a*x)^(9//4), result = (4*I*(a - I*a*x)^(3//4))/(5*a*(a + I*a*x)^(5//4)) - (6*I)/(5*a*(a - I*a*x)^(1//4)*(a + I*a*x)^(1//4)) - (6*(1 + x^2)^(1//4)*EllipticE(atan(x)/2, 2))/(5*a*(a - I*a*x)^(1//4)*(a + I*a*x)^(1//4)), integration_var = x, mistery_val = 5),
#     (integrand = 1/((a - I*a*x)^(1//4)*(a + I*a*x)^(9//4)), result = (4*I)/(5*a*(a - I*a*x)^(1//4)*(a + I*a*x)^(5//4)) + (2*(1 + x^2)^(1//4)*EllipticE(atan(x)/2, 2))/(5*a^2*(a - I*a*x)^(1//4)*(a + I*a*x)^(1//4)), integration_var = x, mistery_val = 4),
#     (integrand = 1/((a - I*a*x)^(5//4)*(a + I*a*x)^(9//4)), result = (2*I)/(5*a^2*(a - I*a*x)^(1//4)*(a + I*a*x)^(5//4)) + (6*(1 + x^2)^(1//4)*EllipticE(atan(x)/2, 2))/(5*a^3*(a - I*a*x)^(1//4)*(a + I*a*x)^(1//4)), integration_var = x, mistery_val = 5),
#     (integrand = 1/((a - I*a*x)^(9//4)*(a + I*a*x)^(9//4)), result = (2*x)/(5*a^4*(a - I*a*x)^(1//4)*(a + I*a*x)^(1//4)*(1 + x^2)) + (6*(1 + x^2)^(1//4)*EllipticE(atan(x)/2, 2))/(5*a^4*(a - I*a*x)^(1//4)*(a + I*a*x)^(1//4)), integration_var = x, mistery_val = 4),
#     (integrand = 1/((a - I*a*x)^(13//4)*(a + I*a*x)^(9//4)), result = -((2*I)/(9*a^2*(a - I*a*x)^(9//4)*(a + I*a*x)^(5//4))) + (14*x)/(45*a^5*(a - I*a*x)^(1//4)*(a + I*a*x)^(1//4)*(1 + x^2)) + (14*(1 + x^2)^(1//4)*EllipticE(atan(x)/2, 2))/(15*a^5*(a - I*a*x)^(1//4)*(a + I*a*x)^(1//4)), integration_var = x, mistery_val = 5),
#     (integrand = 1/((a - I*a*x)^(17//4)*(a + I*a*x)^(9//4)), result = -((2*I)/(13*a^2*(a - I*a*x)^(13//4)*(a + I*a*x)^(5//4))) - (2*I)/(13*a^3*(a - I*a*x)^(9//4)*(a + I*a*x)^(5//4)) + (14*x)/(65*a^6*(a - I*a*x)^(1//4)*(a + I*a*x)^(1//4)*(1 + x^2)) + (42*(1 + x^2)^(1//4)*EllipticE(atan(x)/2, 2))/(65*a^6*(a - I*a*x)^(1//4)*(a + I*a*x)^(1//4)), integration_var = x, mistery_val = 6),
# 
#     (integrand = (a - I*a*x)^(5//4)/(a + I*a*x)^(9//4), result = (4*I*(a - I*a*x)^(5//4))/(5*a*(a + I*a*x)^(5//4)) - (4*I*(a - I*a*x)^(1//4))/(a*(a + I*a*x)^(1//4)) - (I*sqrt(2)*atan(1 - (sqrt(2)*(a - I*a*x)^(1//4))/(a + I*a*x)^(1//4)))/a + (I*sqrt(2)*atan(1 + (sqrt(2)*(a - I*a*x)^(1//4))/(a + I*a*x)^(1//4)))/a - (I*log(1 + sqrt(a - I*a*x)/sqrt(a + I*a*x) - (sqrt(2)*(a - I*a*x)^(1//4))/(a + I*a*x)^(1//4)))/(sqrt(2)*a) + (I*log(1 + sqrt(a - I*a*x)/sqrt(a + I*a*x) + (sqrt(2)*(a - I*a*x)^(1//4))/(a + I*a*x)^(1//4)))/(sqrt(2)*a), integration_var = x, mistery_val = 13),
#     (integrand = (a - I*a*x)^(1//4)/(a + I*a*x)^(9//4), result = (((2*I)/5)*(a - I*a*x)^(5//4))/(a^2*(a + I*a*x)^(5//4)), integration_var = x, mistery_val = 1),
#     (integrand = 1/((a - I*a*x)^(3//4)*(a + I*a*x)^(9//4)), result = (((2*I)/5)*(a - I*a*x)^(1//4))/(a^2*(a + I*a*x)^(5//4)) + (((4*I)/5)*(a - I*a*x)^(1//4))/(a^3*(a + I*a*x)^(1//4)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((a - I*a*x)^(7//4)*(a + I*a*x)^(9//4)), result = ((-2*I)/3)/(a^2*(a - I*a*x)^(3//4)*(a + I*a*x)^(5//4)) + (((8*I)/15)*(a - I*a*x)^(1//4))/(a^3*(a + I*a*x)^(5//4)) + (((16*I)/15)*(a - I*a*x)^(1//4))/(a^4*(a + I*a*x)^(1//4)), integration_var = x, mistery_val = 3),
#     (integrand = 1/((a - I*a*x)^(11//4)*(a + I*a*x)^(9//4)), result = ((-2*I)/7)/(a^2*(a - I*a*x)^(7//4)*(a + I*a*x)^(5//4)) - ((4*I)/7)/(a^3*(a - I*a*x)^(3//4)*(a + I*a*x)^(5//4)) + (((16*I)/35)*(a - I*a*x)^(1//4))/(a^4*(a + I*a*x)^(5//4)) + (((32*I)/35)*(a - I*a*x)^(1//4))/(a^5*(a + I*a*x)^(1//4)), integration_var = x, mistery_val = 4),
# 
# 
# # ::Subsection::Closed::
# # Integrands of the form (a+b x)^m (a c-b c x)^n with n symbolic
# 
# 
#     (integrand = (a + b*x)^2*(a*c - b*c*x)^n, result = -((4*a^2*(a*c - b*c*x)^(1 + n))/(b*c*(1 + n))) + (4*a*(a*c - b*c*x)^(2 + n))/(b*c^2*(2 + n)) - (a*c - b*c*x)^(3 + n)/(b*c^3*(3 + n)), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^1*(a*c - b*c*x)^n, result = -((2*a*(a*c - b*c*x)^(1 + n))/(b*c*(1 + n))) + (a*c - b*c*x)^(2 + n)/(b*c^2*(2 + n)), integration_var = x, mistery_val = 2),
#     (integrand = 1/(a + b*x)^1*(a*c - b*c*x)^n, result = -(((a*c - b*c*x)^(1 + n)*Hypergeometric2F1(1, 1 + n, 2 + n, (a - b*x)/(2*a)))/(2*a*b*c*(1 + n))), integration_var = x, mistery_val = 1),
#     (integrand = 1/(a + b*x)^2*(a*c - b*c*x)^n, result = -(((a*c - b*c*x)^(1 + n)*Hypergeometric2F1(2, 1 + n, 2 + n, (a - b*x)/(2*a)))/(4*a^2*b*c*(1 + n))), integration_var = x, mistery_val = 1),
# 
# 
#     (integrand = (a + a*x)^m*(c - c*x)^m, result = (x*(a + a*x)^m*(c - c*x)^m*Hypergeometric2F1(1//2, -m, 3//2, x^2))/(1 - x^2)^m, integration_var = x, mistery_val = 3),
# 
# 
#     (integrand = (a + b*x)^m*(a*c - b*c*x)^m, result = (x*(a + b*x)^m*(a*c - b*c*x)^m*Hypergeometric2F1(1//2, -m, 3//2, (b^2*x^2)/a^2))/(1 - (b^2*x^2)/a^2)^m, integration_var = x, mistery_val = 3),
# 
# 
#     (integrand = (3 - 6*x)^m*(2 + 4*x)^m, result = 6^m*x*Hypergeometric2F1(1//2, -m, 3//2, 4*x^2), integration_var = x, mistery_val = 2),
# 
# 
# # ::Section::Closed::
# # Integrands of the form (a+b x)^m (c+d x)^n
# 
# 
# # ::Subsection::Closed::
# # Integrands of the form (a+b x)^m (c+d x)^n
# 
# 
# # ::Subsubsection::Closed::
# # n>0
# 
# 
#     (integrand = (a + b*x)^4*(c + d*x), result = ((b*c - a*d)*(a + b*x)^5)/(5*b^2) + (d*(a + b*x)^6)/(6*b^2), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^3*(c + d*x), result = ((b*c - a*d)*(a + b*x)^4)/(4*b^2) + (d*(a + b*x)^5)/(5*b^2), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^2*(c + d*x), result = ((b*c - a*d)*(a + b*x)^3)/(3*b^2) + (d*(a + b*x)^4)/(4*b^2), integration_var = x, mistery_val = 2),
# 
#     (integrand = (a + b*x)^1*(c + d*x), result = a*c*x + (1//2)*(b*c + a*d)*x^2 + (1//3)*b*d*x^3, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^0*(c + d*x), result = c*x + (d*x^2)/2, integration_var = x, mistery_val = 1),
# 
#     (integrand = (c + d*x)/(a + b*x)^1, result = (d*x)/b + ((b*c - a*d)*log(a + b*x))/b^2, integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)/(a + b*x)^2, result = -((b*c - a*d)/(b^2*(a + b*x))) + (d*log(a + b*x))/b^2, integration_var = x, mistery_val = 2),
# 
#     (integrand = (c + d*x)/(a + b*x)^3, result = -((c + d*x)^2/(2*(b*c - a*d)*(a + b*x)^2)), integration_var = x, mistery_val = 1),
# 
#     (integrand = (c + d*x)/(a + b*x)^4, result = -((b*c - a*d)/(3*b^2*(a + b*x)^3)) - d/(2*b^2*(a + b*x)^2), integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)/(a + b*x)^5, result = -((b*c - a*d)/(4*b^2*(a + b*x)^4)) - d/(3*b^2*(a + b*x)^3), integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = (a + b*x)^4*(c + d*x)^2, result = ((b*c - a*d)^2*(a + b*x)^5)/(5*b^3) + (d*(b*c - a*d)*(a + b*x)^6)/(3*b^3) + (d^2*(a + b*x)^7)/(7*b^3), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^3*(c + d*x)^2, result = ((b*c - a*d)^2*(a + b*x)^4)/(4*b^3) + (2*d*(b*c - a*d)*(a + b*x)^5)/(5*b^3) + (d^2*(a + b*x)^6)/(6*b^3), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^2*(c + d*x)^2, result = ((b*c - a*d)^2*(a + b*x)^3)/(3*b^3) + (d*(b*c - a*d)*(a + b*x)^4)/(2*b^3) + (d^2*(a + b*x)^5)/(5*b^3), integration_var = x, mistery_val = 2),
# 
#     (integrand = (a + b*x)^1*(c + d*x)^2, result = -(((b*c - a*d)*(c + d*x)^3)/(3*d^2)) + (b*(c + d*x)^4)/(4*d^2), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^0*(c + d*x)^2, result = (c + d*x)^3/(3*d), integration_var = x, mistery_val = 1),
# 
#     (integrand = (c + d*x)^2/(a + b*x)^1, result = (d*(b*c - a*d)*x)/b^2 + (c + d*x)^2/(2*b) + ((b*c - a*d)^2*log(a + b*x))/b^3, integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^2/(a + b*x)^2, result = (d^2*x)/b^2 - (b*c - a*d)^2/(b^3*(a + b*x)) + (2*d*(b*c - a*d)*log(a + b*x))/b^3, integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^2/(a + b*x)^3, result = -((b*c - a*d)^2/(2*b^3*(a + b*x)^2)) - (2*d*(b*c - a*d))/(b^3*(a + b*x)) + (d^2*log(a + b*x))/b^3, integration_var = x, mistery_val = 2),
# 
#     (integrand = (c + d*x)^2/(a + b*x)^4, result = -((c + d*x)^3/(3*(b*c - a*d)*(a + b*x)^3)), integration_var = x, mistery_val = 1),
# 
#     (integrand = (c + d*x)^2/(a + b*x)^5, result = -((b*c - a*d)^2/(4*b^3*(a + b*x)^4)) - (2*d*(b*c - a*d))/(3*b^3*(a + b*x)^3) - d^2/(2*b^3*(a + b*x)^2), integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^2/(a + b*x)^6, result = -((b*c - a*d)^2/(5*b^3*(a + b*x)^5)) - (d*(b*c - a*d))/(2*b^3*(a + b*x)^4) - d^2/(3*b^3*(a + b*x)^3), integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^2/(a + b*x)^7, result = -((b*c - a*d)^2/(6*b^3*(a + b*x)^6)) - (2*d*(b*c - a*d))/(5*b^3*(a + b*x)^5) - d^2/(4*b^3*(a + b*x)^4), integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = (a + b*x)^5*(c + d*x)^3, result = ((b*c - a*d)^3*(a + b*x)^6)/(6*b^4) + (3*d*(b*c - a*d)^2*(a + b*x)^7)/(7*b^4) + (3*d^2*(b*c - a*d)*(a + b*x)^8)/(8*b^4) + (d^3*(a + b*x)^9)/(9*b^4), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^4*(c + d*x)^3, result = ((b*c - a*d)^3*(a + b*x)^5)/(5*b^4) + (d*(b*c - a*d)^2*(a + b*x)^6)/(2*b^4) + (3*d^2*(b*c - a*d)*(a + b*x)^7)/(7*b^4) + (d^3*(a + b*x)^8)/(8*b^4), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^3*(c + d*x)^3, result = ((b*c - a*d)^3*(a + b*x)^4)/(4*b^4) + (3*d*(b*c - a*d)^2*(a + b*x)^5)/(5*b^4) + (d^2*(b*c - a*d)*(a + b*x)^6)/(2*b^4) + (d^3*(a + b*x)^7)/(7*b^4), integration_var = x, mistery_val = 2),
# 
#     (integrand = (a + b*x)^2*(c + d*x)^3, result = ((b*c - a*d)^2*(c + d*x)^4)/(4*d^3) - (2*b*(b*c - a*d)*(c + d*x)^5)/(5*d^3) + (b^2*(c + d*x)^6)/(6*d^3), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^1*(c + d*x)^3, result = -(((b*c - a*d)*(c + d*x)^4)/(4*d^2)) + (b*(c + d*x)^5)/(5*d^2), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^0*(c + d*x)^3, result = (c + d*x)^4/(4*d), integration_var = x, mistery_val = 1),
# 
#     (integrand = (c + d*x)^3/(a + b*x)^1, result = (d*(b*c - a*d)^2*x)/b^3 + ((b*c - a*d)*(c + d*x)^2)/(2*b^2) + (c + d*x)^3/(3*b) + ((b*c - a*d)^3*log(a + b*x))/b^4, integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^3/(a + b*x)^2, result = (d^2*(3*b*c - 2*a*d)*x)/b^3 + (d^3*x^2)/(2*b^2) - (b*c - a*d)^3/(b^4*(a + b*x)) + (3*d*(b*c - a*d)^2*log(a + b*x))/b^4, integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^3/(a + b*x)^3, result = (d^3*x)/b^3 - (b*c - a*d)^3/(2*b^4*(a + b*x)^2) - (3*d*(b*c - a*d)^2)/(b^4*(a + b*x)) + (3*d^2*(b*c - a*d)*log(a + b*x))/b^4, integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^3/(a + b*x)^4, result = -((b*c - a*d)^3/(3*b^4*(a + b*x)^3)) - (3*d*(b*c - a*d)^2)/(2*b^4*(a + b*x)^2) - (3*d^2*(b*c - a*d))/(b^4*(a + b*x)) + (d^3*log(a + b*x))/b^4, integration_var = x, mistery_val = 2),
# 
#     (integrand = (c + d*x)^3/(a + b*x)^5, result = -((c + d*x)^4/(4*(b*c - a*d)*(a + b*x)^4)), integration_var = x, mistery_val = 1),
#     (integrand = (c + d*x)^3/(a + b*x)^6, result = -((c + d*x)^4/(5*(b*c - a*d)*(a + b*x)^5)) + (d*(c + d*x)^4)/(20*(b*c - a*d)^2*(a + b*x)^4), integration_var = x, mistery_val = 2),
# 
#     (integrand = (c + d*x)^3/(a + b*x)^7, result = -((b*c - a*d)^3/(6*b^4*(a + b*x)^6)) - (3*d*(b*c - a*d)^2)/(5*b^4*(a + b*x)^5) - (3*d^2*(b*c - a*d))/(4*b^4*(a + b*x)^4) - d^3/(3*b^4*(a + b*x)^3), integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^3/(a + b*x)^8, result = -((b*c - a*d)^3/(7*b^4*(a + b*x)^7)) - (d*(b*c - a*d)^2)/(2*b^4*(a + b*x)^6) - (3*d^2*(b*c - a*d))/(5*b^4*(a + b*x)^5) - d^3/(4*b^4*(a + b*x)^4), integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^3/(a + b*x)^9, result = -((b*c - a*d)^3/(8*b^4*(a + b*x)^8)) - (3*d*(b*c - a*d)^2)/(7*b^4*(a + b*x)^7) - (d^2*(b*c - a*d))/(2*b^4*(a + b*x)^6) - d^3/(5*b^4*(a + b*x)^5), integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = (a + b*x)^9*(c + d*x)^7, result = ((b*c - a*d)^7*(a + b*x)^10)/(10*b^8) + (7*d*(b*c - a*d)^6*(a + b*x)^11)/(11*b^8) + (7*d^2*(b*c - a*d)^5*(a + b*x)^12)/(4*b^8) + (35*d^3*(b*c - a*d)^4*(a + b*x)^13)/(13*b^8) + (5*d^4*(b*c - a*d)^3*(a + b*x)^14)/(2*b^8) + (7*d^5*(b*c - a*d)^2*(a + b*x)^15)/(5*b^8) + (7*d^6*(b*c - a*d)*(a + b*x)^16)/(16*b^8) + (d^7*(a + b*x)^17)/(17*b^8), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^8*(c + d*x)^7, result = ((b*c - a*d)^7*(a + b*x)^9)/(9*b^8) + (7*d*(b*c - a*d)^6*(a + b*x)^10)/(10*b^8) + (21*d^2*(b*c - a*d)^5*(a + b*x)^11)/(11*b^8) + (35*d^3*(b*c - a*d)^4*(a + b*x)^12)/(12*b^8) + (35*d^4*(b*c - a*d)^3*(a + b*x)^13)/(13*b^8) + (3*d^5*(b*c - a*d)^2*(a + b*x)^14)/(2*b^8) + (7*d^6*(b*c - a*d)*(a + b*x)^15)/(15*b^8) + (d^7*(a + b*x)^16)/(16*b^8), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^7*(c + d*x)^7, result = ((b*c - a*d)^7*(a + b*x)^8)/(8*b^8) + (7*d*(b*c - a*d)^6*(a + b*x)^9)/(9*b^8) + (21*d^2*(b*c - a*d)^5*(a + b*x)^10)/(10*b^8) + (35*d^3*(b*c - a*d)^4*(a + b*x)^11)/(11*b^8) + (35*d^4*(b*c - a*d)^3*(a + b*x)^12)/(12*b^8) + (21*d^5*(b*c - a*d)^2*(a + b*x)^13)/(13*b^8) + (d^6*(b*c - a*d)*(a + b*x)^14)/(2*b^8) + (d^7*(a + b*x)^15)/(15*b^8), integration_var = x, mistery_val = 2),
# 
#     (integrand = (a + b*x)^6*(c + d*x)^7, result = ((b*c - a*d)^6*(c + d*x)^8)/(8*d^7) - (2*b*(b*c - a*d)^5*(c + d*x)^9)/(3*d^7) + (3*b^2*(b*c - a*d)^4*(c + d*x)^10)/(2*d^7) - (20*b^3*(b*c - a*d)^3*(c + d*x)^11)/(11*d^7) + (5*b^4*(b*c - a*d)^2*(c + d*x)^12)/(4*d^7) - (6*b^5*(b*c - a*d)*(c + d*x)^13)/(13*d^7) + (b^6*(c + d*x)^14)/(14*d^7), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^5*(c + d*x)^7, result = -(((b*c - a*d)^5*(c + d*x)^8)/(8*d^6)) + (5*b*(b*c - a*d)^4*(c + d*x)^9)/(9*d^6) - (b^2*(b*c - a*d)^3*(c + d*x)^10)/d^6 + (10*b^3*(b*c - a*d)^2*(c + d*x)^11)/(11*d^6) - (5*b^4*(b*c - a*d)*(c + d*x)^12)/(12*d^6) + (b^5*(c + d*x)^13)/(13*d^6), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^4*(c + d*x)^7, result = ((b*c - a*d)^4*(c + d*x)^8)/(8*d^5) - (4*b*(b*c - a*d)^3*(c + d*x)^9)/(9*d^5) + (3*b^2*(b*c - a*d)^2*(c + d*x)^10)/(5*d^5) - (4*b^3*(b*c - a*d)*(c + d*x)^11)/(11*d^5) + (b^4*(c + d*x)^12)/(12*d^5), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^3*(c + d*x)^7, result = -(((b*c - a*d)^3*(c + d*x)^8)/(8*d^4)) + (b*(b*c - a*d)^2*(c + d*x)^9)/(3*d^4) - (3*b^2*(b*c - a*d)*(c + d*x)^10)/(10*d^4) + (b^3*(c + d*x)^11)/(11*d^4), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^2*(c + d*x)^7, result = ((b*c - a*d)^2*(c + d*x)^8)/(8*d^3) - (2*b*(b*c - a*d)*(c + d*x)^9)/(9*d^3) + (b^2*(c + d*x)^10)/(10*d^3), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^1*(c + d*x)^7, result = -(((b*c - a*d)*(c + d*x)^8)/(8*d^2)) + (b*(c + d*x)^9)/(9*d^2), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^0*(c + d*x)^7, result = (c + d*x)^8/(8*d), integration_var = x, mistery_val = 1),
# 
#     (integrand = (c + d*x)^7/(a + b*x)^1, result = (d*(b*c - a*d)^6*x)/b^7 + ((b*c - a*d)^5*(c + d*x)^2)/(2*b^6) + ((b*c - a*d)^4*(c + d*x)^3)/(3*b^5) + ((b*c - a*d)^3*(c + d*x)^4)/(4*b^4) + ((b*c - a*d)^2*(c + d*x)^5)/(5*b^3) + ((b*c - a*d)*(c + d*x)^6)/(6*b^2) + (c + d*x)^7/(7*b) + ((b*c - a*d)^7*log(a + b*x))/b^8, integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^7/(a + b*x)^2, result = (21*d^2*(b*c - a*d)^5*x)/b^7 - (b*c - a*d)^7/(b^8*(a + b*x)) + (35*d^3*(b*c - a*d)^4*(a + b*x)^2)/(2*b^8) + (35*d^4*(b*c - a*d)^3*(a + b*x)^3)/(3*b^8) + (21*d^5*(b*c - a*d)^2*(a + b*x)^4)/(4*b^8) + (7*d^6*(b*c - a*d)*(a + b*x)^5)/(5*b^8) + (d^7*(a + b*x)^6)/(6*b^8) + (7*d*(b*c - a*d)^6*log(a + b*x))/b^8, integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^7/(a + b*x)^3, result = (35*d^3*(b*c - a*d)^4*x)/b^7 - (b*c - a*d)^7/(2*b^8*(a + b*x)^2) - (7*d*(b*c - a*d)^6)/(b^8*(a + b*x)) + (35*d^4*(b*c - a*d)^3*(a + b*x)^2)/(2*b^8) + (7*d^5*(b*c - a*d)^2*(a + b*x)^3)/b^8 + (7*d^6*(b*c - a*d)*(a + b*x)^4)/(4*b^8) + (d^7*(a + b*x)^5)/(5*b^8) + (21*d^2*(b*c - a*d)^5*log(a + b*x))/b^8, integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^7/(a + b*x)^4, result = (35*d^4*(b*c - a*d)^3*x)/b^7 - (b*c - a*d)^7/(3*b^8*(a + b*x)^3) - (7*d*(b*c - a*d)^6)/(2*b^8*(a + b*x)^2) - (21*d^2*(b*c - a*d)^5)/(b^8*(a + b*x)) + (21*d^5*(b*c - a*d)^2*(a + b*x)^2)/(2*b^8) + (7*d^6*(b*c - a*d)*(a + b*x)^3)/(3*b^8) + (d^7*(a + b*x)^4)/(4*b^8) + (35*d^3*(b*c - a*d)^4*log(a + b*x))/b^8, integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^7/(a + b*x)^5, result = (21*d^5*(b*c - a*d)^2*x)/b^7 - (b*c - a*d)^7/(4*b^8*(a + b*x)^4) - (7*d*(b*c - a*d)^6)/(3*b^8*(a + b*x)^3) - (21*d^2*(b*c - a*d)^5)/(2*b^8*(a + b*x)^2) - (35*d^3*(b*c - a*d)^4)/(b^8*(a + b*x)) + (7*d^6*(b*c - a*d)*(a + b*x)^2)/(2*b^8) + (d^7*(a + b*x)^3)/(3*b^8) + (35*d^4*(b*c - a*d)^3*log(a + b*x))/b^8, integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^7/(a + b*x)^6, result = (d^6*(7*b*c - 6*a*d)*x)/b^7 + (d^7*x^2)/(2*b^6) - (b*c - a*d)^7/(5*b^8*(a + b*x)^5) - (7*d*(b*c - a*d)^6)/(4*b^8*(a + b*x)^4) - (7*d^2*(b*c - a*d)^5)/(b^8*(a + b*x)^3) - (35*d^3*(b*c - a*d)^4)/(2*b^8*(a + b*x)^2) - (35*d^4*(b*c - a*d)^3)/(b^8*(a + b*x)) + (21*d^5*(b*c - a*d)^2*log(a + b*x))/b^8, integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^7/(a + b*x)^7, result = (d^7*x)/b^7 - (b*c - a*d)^7/(6*b^8*(a + b*x)^6) - (7*d*(b*c - a*d)^6)/(5*b^8*(a + b*x)^5) - (21*d^2*(b*c - a*d)^5)/(4*b^8*(a + b*x)^4) - (35*d^3*(b*c - a*d)^4)/(3*b^8*(a + b*x)^3) - (35*d^4*(b*c - a*d)^3)/(2*b^8*(a + b*x)^2) - (21*d^5*(b*c - a*d)^2)/(b^8*(a + b*x)) + (7*d^6*(b*c - a*d)*log(a + b*x))/b^8, integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^7/(a + b*x)^8, result = -(b*c - a*d)^7/(7*b^8*(a + b*x)^7) - (7*d*(b*c - a*d)^6)/(6*b^8*(a + b*x)^6) - (21*d^2*(b*c - a*d)^5)/(5*b^8*(a + b*x)^5) - (35*d^3*(b*c - a*d)^4)/(4*b^8*(a + b*x)^4) - (35*d^4*(b*c - a*d)^3)/(3*b^8*(a + b*x)^3) - (21*d^5*(b*c - a*d)^2)/(2*b^8*(a + b*x)^2) - (7*d^6*(b*c - a*d))/(b^8*(a + b*x)) + (d^7*log(a + b*x))/b^8, integration_var = x, mistery_val = 2),
# 
#     (integrand = (c + d*x)^7/(a + b*x)^9, result = -((c + d*x)^8/(8*(b*c - a*d)*(a + b*x)^8)), integration_var = x, mistery_val = 1),
#     (integrand = (c + d*x)^7/(a + b*x)^10, result = -((c + d*x)^8/(9*(b*c - a*d)*(a + b*x)^9)) + (d*(c + d*x)^8)/(72*(b*c - a*d)^2*(a + b*x)^8), integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^7/(a + b*x)^11, result = -((c + d*x)^8/(10*(b*c - a*d)*(a + b*x)^10)) + (d*(c + d*x)^8)/(45*(b*c - a*d)^2*(a + b*x)^9) - (d^2*(c + d*x)^8)/(360*(b*c - a*d)^3*(a + b*x)^8), integration_var = x, mistery_val = 3),
#     (integrand = (c + d*x)^7/(a + b*x)^12, result = -((c + d*x)^8/(11*(b*c - a*d)*(a + b*x)^11)) + (3*d*(c + d*x)^8)/(110*(b*c - a*d)^2*(a + b*x)^10) - (d^2*(c + d*x)^8)/(165*(b*c - a*d)^3*(a + b*x)^9) + (d^3*(c + d*x)^8)/(1320*(b*c - a*d)^4*(a + b*x)^8), integration_var = x, mistery_val = 4),
#     (integrand = (c + d*x)^7/(a + b*x)^13, result = -((c + d*x)^8/(12*(b*c - a*d)*(a + b*x)^12)) + (d*(c + d*x)^8)/(33*(b*c - a*d)^2*(a + b*x)^11) - (d^2*(c + d*x)^8)/(110*(b*c - a*d)^3*(a + b*x)^10) + (d^3*(c + d*x)^8)/(495*(b*c - a*d)^4*(a + b*x)^9) - (d^4*(c + d*x)^8)/(3960*(b*c - a*d)^5*(a + b*x)^8), integration_var = x, mistery_val = 5),
#     (integrand = (c + d*x)^7/(a + b*x)^14, result = -((b*c - a*d)^7/(13*b^8*(a + b*x)^13)) - (7*d*(b*c - a*d)^6)/(12*b^8*(a + b*x)^12) - (21*d^2*(b*c - a*d)^5)/(11*b^8*(a + b*x)^11) - (7*d^3*(b*c - a*d)^4)/(2*b^8*(a + b*x)^10) - (35*d^4*(b*c - a*d)^3)/(9*b^8*(a + b*x)^9) - (21*d^5*(b*c - a*d)^2)/(8*b^8*(a + b*x)^8) - (d^6*(b*c - a*d))/(b^8*(a + b*x)^7) - d^7/(6*b^8*(a + b*x)^6), integration_var = x, mistery_val = 2),
# 
#     (integrand = (c + d*x)^7/(a + b*x)^15, result = -((b*c - a*d)^7/(14*b^8*(a + b*x)^14)) - (7*d*(b*c - a*d)^6)/(13*b^8*(a + b*x)^13) - (7*d^2*(b*c - a*d)^5)/(4*b^8*(a + b*x)^12) - (35*d^3*(b*c - a*d)^4)/(11*b^8*(a + b*x)^11) - (7*d^4*(b*c - a*d)^3)/(2*b^8*(a + b*x)^10) - (7*d^5*(b*c - a*d)^2)/(3*b^8*(a + b*x)^9) - (7*d^6*(b*c - a*d))/(8*b^8*(a + b*x)^8) - d^7/(7*b^8*(a + b*x)^7), integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^7/(a + b*x)^16, result = -((b*c - a*d)^7/(15*b^8*(a + b*x)^15)) - (d*(b*c - a*d)^6)/(2*b^8*(a + b*x)^14) - (21*d^2*(b*c - a*d)^5)/(13*b^8*(a + b*x)^13) - (35*d^3*(b*c - a*d)^4)/(12*b^8*(a + b*x)^12) - (35*d^4*(b*c - a*d)^3)/(11*b^8*(a + b*x)^11) - (21*d^5*(b*c - a*d)^2)/(10*b^8*(a + b*x)^10) - (7*d^6*(b*c - a*d))/(9*b^8*(a + b*x)^9) - d^7/(8*b^8*(a + b*x)^8), integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = (a + b*x)^12*(c + d*x)^10, result = ((b*c - a*d)^10*(a + b*x)^13)/(13*b^11) + (5*d*(b*c - a*d)^9*(a + b*x)^14)/(7*b^11) + (3*d^2*(b*c - a*d)^8*(a + b*x)^15)/b^11 + (15*d^3*(b*c - a*d)^7*(a + b*x)^16)/(2*b^11) + (210*d^4*(b*c - a*d)^6*(a + b*x)^17)/(17*b^11) + (14*d^5*(b*c - a*d)^5*(a + b*x)^18)/b^11 + (210*d^6*(b*c - a*d)^4*(a + b*x)^19)/(19*b^11) + (6*d^7*(b*c - a*d)^3*(a + b*x)^20)/b^11 + (15*d^8*(b*c - a*d)^2*(a + b*x)^21)/(7*b^11) + (5*d^9*(b*c - a*d)*(a + b*x)^22)/(11*b^11) + (d^10*(a + b*x)^23)/(23*b^11), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^11*(c + d*x)^10, result = ((b*c - a*d)^10*(a + b*x)^12)/(12*b^11) + (10*d*(b*c - a*d)^9*(a + b*x)^13)/(13*b^11) + (45*d^2*(b*c - a*d)^8*(a + b*x)^14)/(14*b^11) + (8*d^3*(b*c - a*d)^7*(a + b*x)^15)/b^11 + (105*d^4*(b*c - a*d)^6*(a + b*x)^16)/(8*b^11) + (252*d^5*(b*c - a*d)^5*(a + b*x)^17)/(17*b^11) + (35*d^6*(b*c - a*d)^4*(a + b*x)^18)/(3*b^11) + (120*d^7*(b*c - a*d)^3*(a + b*x)^19)/(19*b^11) + (9*d^8*(b*c - a*d)^2*(a + b*x)^20)/(4*b^11) + (10*d^9*(b*c - a*d)*(a + b*x)^21)/(21*b^11) + (d^10*(a + b*x)^22)/(22*b^11), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^10*(c + d*x)^10, result = ((b*c - a*d)^10*(a + b*x)^11)/(11*b^11) + (5*d*(b*c - a*d)^9*(a + b*x)^12)/(6*b^11) + (45*d^2*(b*c - a*d)^8*(a + b*x)^13)/(13*b^11) + (60*d^3*(b*c - a*d)^7*(a + b*x)^14)/(7*b^11) + (14*d^4*(b*c - a*d)^6*(a + b*x)^15)/b^11 + (63*d^5*(b*c - a*d)^5*(a + b*x)^16)/(4*b^11) + (210*d^6*(b*c - a*d)^4*(a + b*x)^17)/(17*b^11) + (20*d^7*(b*c - a*d)^3*(a + b*x)^18)/(3*b^11) + (45*d^8*(b*c - a*d)^2*(a + b*x)^19)/(19*b^11) + (d^9*(b*c - a*d)*(a + b*x)^20)/(2*b^11) + (d^10*(a + b*x)^21)/(21*b^11), integration_var = x, mistery_val = 2),
# 
#     (integrand = (a + b*x)^9*(c + d*x)^10, result = -((b*c - a*d)^9*(c + d*x)^11)/(11*d^10) + (3*b*(b*c - a*d)^8*(c + d*x)^12)/(4*d^10) - (36*b^2*(b*c - a*d)^7*(c + d*x)^13)/(13*d^10) + (6*b^3*(b*c - a*d)^6*(c + d*x)^14)/d^10 - (42*b^4*(b*c - a*d)^5*(c + d*x)^15)/(5*d^10) + (63*b^5*(b*c - a*d)^4*(c + d*x)^16)/(8*d^10) - (84*b^6*(b*c - a*d)^3*(c + d*x)^17)/(17*d^10) + (2*b^7*(b*c - a*d)^2*(c + d*x)^18)/d^10 - (9*b^8*(b*c - a*d)*(c + d*x)^19)/(19*d^10) + (b^9*(c + d*x)^20)/(20*d^10), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^8*(c + d*x)^10, result = ((b*c - a*d)^8*(c + d*x)^11)/(11*d^9) - (2*b*(b*c - a*d)^7*(c + d*x)^12)/(3*d^9) + (28*b^2*(b*c - a*d)^6*(c + d*x)^13)/(13*d^9) - (4*b^3*(b*c - a*d)^5*(c + d*x)^14)/d^9 + (14*b^4*(b*c - a*d)^4*(c + d*x)^15)/(3*d^9) - (7*b^5*(b*c - a*d)^3*(c + d*x)^16)/(2*d^9) + (28*b^6*(b*c - a*d)^2*(c + d*x)^17)/(17*d^9) - (4*b^7*(b*c - a*d)*(c + d*x)^18)/(9*d^9) + (b^8*(c + d*x)^19)/(19*d^9), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^7*(c + d*x)^10, result = -((b*c - a*d)^7*(c + d*x)^11)/(11*d^8) + (7*b*(b*c - a*d)^6*(c + d*x)^12)/(12*d^8) - (21*b^2*(b*c - a*d)^5*(c + d*x)^13)/(13*d^8) + (5*b^3*(b*c - a*d)^4*(c + d*x)^14)/(2*d^8) - (7*b^4*(b*c - a*d)^3*(c + d*x)^15)/(3*d^8) + (21*b^5*(b*c - a*d)^2*(c + d*x)^16)/(16*d^8) - (7*b^6*(b*c - a*d)*(c + d*x)^17)/(17*d^8) + (b^7*(c + d*x)^18)/(18*d^8), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^6*(c + d*x)^10, result = ((b*c - a*d)^6*(c + d*x)^11)/(11*d^7) - (b*(b*c - a*d)^5*(c + d*x)^12)/(2*d^7) + (15*b^2*(b*c - a*d)^4*(c + d*x)^13)/(13*d^7) - (10*b^3*(b*c - a*d)^3*(c + d*x)^14)/(7*d^7) + (b^4*(b*c - a*d)^2*(c + d*x)^15)/d^7 - (3*b^5*(b*c - a*d)*(c + d*x)^16)/(8*d^7) + (b^6*(c + d*x)^17)/(17*d^7), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^5*(c + d*x)^10, result = -((b*c - a*d)^5*(c + d*x)^11)/(11*d^6) + (5*b*(b*c - a*d)^4*(c + d*x)^12)/(12*d^6) - (10*b^2*(b*c - a*d)^3*(c + d*x)^13)/(13*d^6) + (5*b^3*(b*c - a*d)^2*(c + d*x)^14)/(7*d^6) - (b^4*(b*c - a*d)*(c + d*x)^15)/(3*d^6) + (b^5*(c + d*x)^16)/(16*d^6), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^4*(c + d*x)^10, result = ((b*c - a*d)^4*(c + d*x)^11)/(11*d^5) - (b*(b*c - a*d)^3*(c + d*x)^12)/(3*d^5) + (6*b^2*(b*c - a*d)^2*(c + d*x)^13)/(13*d^5) - (2*b^3*(b*c - a*d)*(c + d*x)^14)/(7*d^5) + (b^4*(c + d*x)^15)/(15*d^5), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^3*(c + d*x)^10, result = -((b*c - a*d)^3*(c + d*x)^11)/(11*d^4) + (b*(b*c - a*d)^2*(c + d*x)^12)/(4*d^4) - (3*b^2*(b*c - a*d)*(c + d*x)^13)/(13*d^4) + (b^3*(c + d*x)^14)/(14*d^4), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^2*(c + d*x)^10, result = ((b*c - a*d)^2*(c + d*x)^11)/(11*d^3) - (b*(b*c - a*d)*(c + d*x)^12)/(6*d^3) + (b^2*(c + d*x)^13)/(13*d^3), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^1*(c + d*x)^10, result = -((b*c - a*d)*(c + d*x)^11)/(11*d^2) + (b*(c + d*x)^12)/(12*d^2), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^0*(c + d*x)^10, result = (c + d*x)^11/(11*d), integration_var = x, mistery_val = 1),
# 
#     (integrand = (c + d*x)^10/(a + b*x)^1, result = (d*(b*c - a*d)^9*x)/b^10 + ((b*c - a*d)^8*(c + d*x)^2)/(2*b^9) + ((b*c - a*d)^7*(c + d*x)^3)/(3*b^8) + ((b*c - a*d)^6*(c + d*x)^4)/(4*b^7) + ((b*c - a*d)^5*(c + d*x)^5)/(5*b^6) + ((b*c - a*d)^4*(c + d*x)^6)/(6*b^5) + ((b*c - a*d)^3*(c + d*x)^7)/(7*b^4) + ((b*c - a*d)^2*(c + d*x)^8)/(8*b^3) + ((b*c - a*d)*(c + d*x)^9)/(9*b^2) + (c + d*x)^10/(10*b) + ((b*c - a*d)^10*log(a + b*x))/b^11, integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^10/(a + b*x)^2, result = (45*d^2*(b*c - a*d)^8*x)/b^10 - (b*c - a*d)^10/(b^11*(a + b*x)) + (60*d^3*(b*c - a*d)^7*(a + b*x)^2)/b^11 + (70*d^4*(b*c - a*d)^6*(a + b*x)^3)/b^11 + (63*d^5*(b*c - a*d)^5*(a + b*x)^4)/b^11 + (42*d^6*(b*c - a*d)^4*(a + b*x)^5)/b^11 + (20*d^7*(b*c - a*d)^3*(a + b*x)^6)/b^11 + (45*d^8*(b*c - a*d)^2*(a + b*x)^7)/(7*b^11) + (5*d^9*(b*c - a*d)*(a + b*x)^8)/(4*b^11) + (d^10*(a + b*x)^9)/(9*b^11) + (10*d*(b*c - a*d)^9*log(a + b*x))/b^11, integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^10/(a + b*x)^3, result = (120*d^3*(b*c - a*d)^7*x)/b^10 - (b*c - a*d)^10/(2*b^11*(a + b*x)^2) - (10*d*(b*c - a*d)^9)/(b^11*(a + b*x)) + (105*d^4*(b*c - a*d)^6*(a + b*x)^2)/b^11 + (84*d^5*(b*c - a*d)^5*(a + b*x)^3)/b^11 + (105*d^6*(b*c - a*d)^4*(a + b*x)^4)/(2*b^11) + (24*d^7*(b*c - a*d)^3*(a + b*x)^5)/b^11 + (15*d^8*(b*c - a*d)^2*(a + b*x)^6)/(2*b^11) + (10*d^9*(b*c - a*d)*(a + b*x)^7)/(7*b^11) + (d^10*(a + b*x)^8)/(8*b^11) + (45*d^2*(b*c - a*d)^8*log(a + b*x))/b^11, integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^10/(a + b*x)^4, result = (210*d^4*(b*c - a*d)^6*x)/b^10 - (b*c - a*d)^10/(3*b^11*(a + b*x)^3) - (5*d*(b*c - a*d)^9)/(b^11*(a + b*x)^2) - (45*d^2*(b*c - a*d)^8)/(b^11*(a + b*x)) + (126*d^5*(b*c - a*d)^5*(a + b*x)^2)/b^11 + (70*d^6*(b*c - a*d)^4*(a + b*x)^3)/b^11 + (30*d^7*(b*c - a*d)^3*(a + b*x)^4)/b^11 + (9*d^8*(b*c - a*d)^2*(a + b*x)^5)/b^11 + (5*d^9*(b*c - a*d)*(a + b*x)^6)/(3*b^11) + (d^10*(a + b*x)^7)/(7*b^11) + (120*d^3*(b*c - a*d)^7*log(a + b*x))/b^11, integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^10/(a + b*x)^5, result = (252*d^5*(b*c - a*d)^5*x)/b^10 - (b*c - a*d)^10/(4*b^11*(a + b*x)^4) - (10*d*(b*c - a*d)^9)/(3*b^11*(a + b*x)^3) - (45*d^2*(b*c - a*d)^8)/(2*b^11*(a + b*x)^2) - (120*d^3*(b*c - a*d)^7)/(b^11*(a + b*x)) + (105*d^6*(b*c - a*d)^4*(a + b*x)^2)/b^11 + (40*d^7*(b*c - a*d)^3*(a + b*x)^3)/b^11 + (45*d^8*(b*c - a*d)^2*(a + b*x)^4)/(4*b^11) + (2*d^9*(b*c - a*d)*(a + b*x)^5)/b^11 + (d^10*(a + b*x)^6)/(6*b^11) + (210*d^4*(b*c - a*d)^6*log(a + b*x))/b^11, integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^10/(a + b*x)^6, result = (210*d^6*(b*c - a*d)^4*x)/b^10 - (b*c - a*d)^10/(5*b^11*(a + b*x)^5) - (5*d*(b*c - a*d)^9)/(2*b^11*(a + b*x)^4) - (15*d^2*(b*c - a*d)^8)/(b^11*(a + b*x)^3) - (60*d^3*(b*c - a*d)^7)/(b^11*(a + b*x)^2) - (210*d^4*(b*c - a*d)^6)/(b^11*(a + b*x)) + (60*d^7*(b*c - a*d)^3*(a + b*x)^2)/b^11 + (15*d^8*(b*c - a*d)^2*(a + b*x)^3)/b^11 + (5*d^9*(b*c - a*d)*(a + b*x)^4)/(2*b^11) + (d^10*(a + b*x)^5)/(5*b^11) + (252*d^5*(b*c - a*d)^5*log(a + b*x))/b^11, integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^10/(a + b*x)^7, result = (120*d^7*(b*c - a*d)^3*x)/b^10 - (b*c - a*d)^10/(6*b^11*(a + b*x)^6) - (2*d*(b*c - a*d)^9)/(b^11*(a + b*x)^5) - (45*d^2*(b*c - a*d)^8)/(4*b^11*(a + b*x)^4) - (40*d^3*(b*c - a*d)^7)/(b^11*(a + b*x)^3) - (105*d^4*(b*c - a*d)^6)/(b^11*(a + b*x)^2) - (252*d^5*(b*c - a*d)^5)/(b^11*(a + b*x)) + (45*d^8*(b*c - a*d)^2*(a + b*x)^2)/(2*b^11) + (10*d^9*(b*c - a*d)*(a + b*x)^3)/(3*b^11) + (d^10*(a + b*x)^4)/(4*b^11) + (210*d^6*(b*c - a*d)^4*log(a + b*x))/b^11, integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^10/(a + b*x)^8, result = (45*d^8*(b*c - a*d)^2*x)/b^10 - (b*c - a*d)^10/(7*b^11*(a + b*x)^7) - (5*d*(b*c - a*d)^9)/(3*b^11*(a + b*x)^6) - (9*d^2*(b*c - a*d)^8)/(b^11*(a + b*x)^5) - (30*d^3*(b*c - a*d)^7)/(b^11*(a + b*x)^4) - (70*d^4*(b*c - a*d)^6)/(b^11*(a + b*x)^3) - (126*d^5*(b*c - a*d)^5)/(b^11*(a + b*x)^2) - (210*d^6*(b*c - a*d)^4)/(b^11*(a + b*x)) + (5*d^9*(b*c - a*d)*(a + b*x)^2)/b^11 + (d^10*(a + b*x)^3)/(3*b^11) + (120*d^7*(b*c - a*d)^3*log(a + b*x))/b^11, integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^10/(a + b*x)^9, result = (d^9*(10*b*c - 9*a*d)*x)/b^10 + (d^10*x^2)/(2*b^9) - (b*c - a*d)^10/(8*b^11*(a + b*x)^8) - (10*d*(b*c - a*d)^9)/(7*b^11*(a + b*x)^7) - (15*d^2*(b*c - a*d)^8)/(2*b^11*(a + b*x)^6) - (24*d^3*(b*c - a*d)^7)/(b^11*(a + b*x)^5) - (105*d^4*(b*c - a*d)^6)/(2*b^11*(a + b*x)^4) - (84*d^5*(b*c - a*d)^5)/(b^11*(a + b*x)^3) - (105*d^6*(b*c - a*d)^4)/(b^11*(a + b*x)^2) - (120*d^7*(b*c - a*d)^3)/(b^11*(a + b*x)) + (45*d^8*(b*c - a*d)^2*log(a + b*x))/b^11, integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^10/(a + b*x)^10, result = (d^10*x)/b^10 - (b*c - a*d)^10/(9*b^11*(a + b*x)^9) - (5*d*(b*c - a*d)^9)/(4*b^11*(a + b*x)^8) - (45*d^2*(b*c - a*d)^8)/(7*b^11*(a + b*x)^7) - (20*d^3*(b*c - a*d)^7)/(b^11*(a + b*x)^6) - (42*d^4*(b*c - a*d)^6)/(b^11*(a + b*x)^5) - (63*d^5*(b*c - a*d)^5)/(b^11*(a + b*x)^4) - (70*d^6*(b*c - a*d)^4)/(b^11*(a + b*x)^3) - (60*d^7*(b*c - a*d)^3)/(b^11*(a + b*x)^2) - (45*d^8*(b*c - a*d)^2)/(b^11*(a + b*x)) + (10*d^9*(b*c - a*d)*log(a + b*x))/b^11, integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^10/(a + b*x)^11, result = -(b*c - a*d)^10/(10*b^11*(a + b*x)^10) - (10*d*(b*c - a*d)^9)/(9*b^11*(a + b*x)^9) - (45*d^2*(b*c - a*d)^8)/(8*b^11*(a + b*x)^8) - (120*d^3*(b*c - a*d)^7)/(7*b^11*(a + b*x)^7) - (35*d^4*(b*c - a*d)^6)/(b^11*(a + b*x)^6) - (252*d^5*(b*c - a*d)^5)/(5*b^11*(a + b*x)^5) - (105*d^6*(b*c - a*d)^4)/(2*b^11*(a + b*x)^4) - (40*d^7*(b*c - a*d)^3)/(b^11*(a + b*x)^3) - (45*d^8*(b*c - a*d)^2)/(2*b^11*(a + b*x)^2) - (10*d^9*(b*c - a*d))/(b^11*(a + b*x)) + (d^10*log(a + b*x))/b^11, integration_var = x, mistery_val = 2),
# 
#     (integrand = (c + d*x)^10/(a + b*x)^12, result = -(c + d*x)^11/(11*(b*c - a*d)*(a + b*x)^11), integration_var = x, mistery_val = 1),
#     (integrand = (c + d*x)^10/(a + b*x)^13, result = -((c + d*x)^11/(12*(b*c - a*d)*(a + b*x)^12)) + (d*(c + d*x)^11)/(132*(b*c - a*d)^2*(a + b*x)^11), integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^10/(a + b*x)^14, result = -((c + d*x)^11/(13*(b*c - a*d)*(a + b*x)^13)) + (d*(c + d*x)^11)/(78*(b*c - a*d)^2*(a + b*x)^12) - (d^2*(c + d*x)^11)/(858*(b*c - a*d)^3*(a + b*x)^11), integration_var = x, mistery_val = 3),
#     (integrand = (c + d*x)^10/(a + b*x)^15, result = -((c + d*x)^11/(14*(b*c - a*d)*(a + b*x)^14)) + (3*d*(c + d*x)^11)/(182*(b*c - a*d)^2*(a + b*x)^13) - (d^2*(c + d*x)^11)/(364*(b*c - a*d)^3*(a + b*x)^12) + (d^3*(c + d*x)^11)/(4004*(b*c - a*d)^4*(a + b*x)^11), integration_var = x, mistery_val = 4),
#     (integrand = (c + d*x)^10/(a + b*x)^16, result = -((c + d*x)^11/(15*(b*c - a*d)*(a + b*x)^15)) + (2*d*(c + d*x)^11)/(105*(b*c - a*d)^2*(a + b*x)^14) - (2*d^2*(c + d*x)^11)/(455*(b*c - a*d)^3*(a + b*x)^13) + (d^3*(c + d*x)^11)/(1365*(b*c - a*d)^4*(a + b*x)^12) - (d^4*(c + d*x)^11)/(15015*(b*c - a*d)^5*(a + b*x)^11), integration_var = x, mistery_val = 5),
#     (integrand = (c + d*x)^10/(a + b*x)^17, result = -((c + d*x)^11/(16*(b*c - a*d)*(a + b*x)^16)) + (d*(c + d*x)^11)/(48*(b*c - a*d)^2*(a + b*x)^15) - (d^2*(c + d*x)^11)/(168*(b*c - a*d)^3*(a + b*x)^14) + (d^3*(c + d*x)^11)/(728*(b*c - a*d)^4*(a + b*x)^13) - (d^4*(c + d*x)^11)/(4368*(b*c - a*d)^5*(a + b*x)^12) + (d^5*(c + d*x)^11)/(48048*(b*c - a*d)^6*(a + b*x)^11), integration_var = x, mistery_val = 6),
#     (integrand = (c + d*x)^10/(a + b*x)^18, result = -((c + d*x)^11/(17*(b*c - a*d)*(a + b*x)^17)) + (3*d*(c + d*x)^11)/(136*(b*c - a*d)^2*(a + b*x)^16) - (d^2*(c + d*x)^11)/(136*(b*c - a*d)^3*(a + b*x)^15) + (d^3*(c + d*x)^11)/(476*(b*c - a*d)^4*(a + b*x)^14) - (3*d^4*(c + d*x)^11)/(6188*(b*c - a*d)^5*(a + b*x)^13) + (d^5*(c + d*x)^11)/(12376*(b*c - a*d)^6*(a + b*x)^12) - (d^6*(c + d*x)^11)/(136136*(b*c - a*d)^7*(a + b*x)^11), integration_var = x, mistery_val = 7),
#     (integrand = (c + d*x)^10/(a + b*x)^19, result = -((c + d*x)^11/(18*(b*c - a*d)*(a + b*x)^18)) + (7*d*(c + d*x)^11)/(306*(b*c - a*d)^2*(a + b*x)^17) - (7*d^2*(c + d*x)^11)/(816*(b*c - a*d)^3*(a + b*x)^16) + (7*d^3*(c + d*x)^11)/(2448*(b*c - a*d)^4*(a + b*x)^15) - (d^4*(c + d*x)^11)/(1224*(b*c - a*d)^5*(a + b*x)^14) + (d^5*(c + d*x)^11)/(5304*(b*c - a*d)^6*(a + b*x)^13) - (d^6*(c + d*x)^11)/(31824*(b*c - a*d)^7*(a + b*x)^12) + (d^7*(c + d*x)^11)/(350064*(b*c - a*d)^8*(a + b*x)^11), integration_var = x, mistery_val = 8),
# 
#     (integrand = (c + d*x)^10/(a + b*x)^20, result = -(b*c - a*d)^10/(19*b^11*(a + b*x)^19) - (5*d*(b*c - a*d)^9)/(9*b^11*(a + b*x)^18) - (45*d^2*(b*c - a*d)^8)/(17*b^11*(a + b*x)^17) - (15*d^3*(b*c - a*d)^7)/(2*b^11*(a + b*x)^16) - (14*d^4*(b*c - a*d)^6)/(b^11*(a + b*x)^15) - (18*d^5*(b*c - a*d)^5)/(b^11*(a + b*x)^14) - (210*d^6*(b*c - a*d)^4)/(13*b^11*(a + b*x)^13) - (10*d^7*(b*c - a*d)^3)/(b^11*(a + b*x)^12) - (45*d^8*(b*c - a*d)^2)/(11*b^11*(a + b*x)^11) - (d^9*(b*c - a*d))/(b^11*(a + b*x)^10) - d^10/(9*b^11*(a + b*x)^9), integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^10/(a + b*x)^21, result = -((b*c - a*d)^10/(20*b^11*(a + b*x)^20)) - (10*d*(b*c - a*d)^9)/(19*b^11*(a + b*x)^19) - (5*d^2*(b*c - a*d)^8)/(2*b^11*(a + b*x)^18) - (120*d^3*(b*c - a*d)^7)/(17*b^11*(a + b*x)^17) - (105*d^4*(b*c - a*d)^6)/(8*b^11*(a + b*x)^16) - (84*d^5*(b*c - a*d)^5)/(5*b^11*(a + b*x)^15) - (15*d^6*(b*c - a*d)^4)/(b^11*(a + b*x)^14) - (120*d^7*(b*c - a*d)^3)/(13*b^11*(a + b*x)^13) - (15*d^8*(b*c - a*d)^2)/(4*b^11*(a + b*x)^12) - (10*d^9*(b*c - a*d))/(11*b^11*(a + b*x)^11) - d^10/(10*b^11*(a + b*x)^10), integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^10/(a + b*x)^22, result = -((b*c - a*d)^10/(21*b^11*(a + b*x)^21)) - (d*(b*c - a*d)^9)/(2*b^11*(a + b*x)^20) - (45*d^2*(b*c - a*d)^8)/(19*b^11*(a + b*x)^19) - (20*d^3*(b*c - a*d)^7)/(3*b^11*(a + b*x)^18) - (210*d^4*(b*c - a*d)^6)/(17*b^11*(a + b*x)^17) - (63*d^5*(b*c - a*d)^5)/(4*b^11*(a + b*x)^16) - (14*d^6*(b*c - a*d)^4)/(b^11*(a + b*x)^15) - (60*d^7*(b*c - a*d)^3)/(7*b^11*(a + b*x)^14) - (45*d^8*(b*c - a*d)^2)/(13*b^11*(a + b*x)^13) - (5*d^9*(b*c - a*d))/(6*b^11*(a + b*x)^12) - d^10/(11*b^11*(a + b*x)^11), integration_var = x, mistery_val = 2),
# 
# 
# # {(a + b*x)^m*(c + d*x)^15, x, 2, ((b*c - a*d)^15*(a + b*x)^(1 + m))/(b^16*(1 + m)) + (15*d*(b*c - a*d)^14*(a + b*x)^(2 + m))/(b^16*(2 + m)) + (105*d^2*(b*c - a*d)^13*(a + b*x)^(3 + m))/(b^16*(3 + m)) + (455*d^3*(b*c - a*d)^12*(a + b*x)^(4 + m))/(b^16*(4 + m)) + (1365*d^4*(b*c - a*d)^11*(a + b*x)^(5 + m))/(b^16*(5 + m)) + (3003*d^5*(b*c - a*d)^10*(a + b*x)^(6 + m))/(b^16*(6 + m)) + (5005*d^6*(b*c - a*d)^9*(a + b*x)^(7 + m))/(b^16*(7 + m)) + (6435*d^7*(b*c - a*d)^8*(a + b*x)^(8 + m))/(b^16*(8 + m)) + (6435*d^8*(b*c - a*d)^7*(a + b*x)^(9 + m))/(b^16*(9 + m)) + (5005*d^9*(b*c - a*d)^6*(a + b*x)^(10 + m))/(b^16*(10 + m)) + (3003*d^10*(b*c - a*d)^5*(a + b*x)^(11 + m))/(b^16*(11 + m)) + (1365*d^11*(b*c - a*d)^4*(a + b*x)^(12 + m))/(b^16*(12 + m)) + (455*d^12*(b*c - a*d)^3*(a + b*x)^(13 + m))/(b^16*(13 + m)) + (105*d^13*(b*c - a*d)^2*(a + b*x)^(14 + m))/(b^16*(14 + m)) + (15*d^14*(b*c - a*d)*(a + b*x)^(15 + m))/(b^16*(15 + m)) + (d^15*(a + b*x)^(16 + m))/(b^16*(16 + m))}
# 
#     (integrand = (a + b*x)^17*(c + d*x)^15, result = ((b*c - a*d)^15*(a + b*x)^18)/(18*b^16) + (15*d*(b*c - a*d)^14*(a + b*x)^19)/(19*b^16) + (21*d^2*(b*c - a*d)^13*(a + b*x)^20)/(4*b^16) + (65*d^3*(b*c - a*d)^12*(a + b*x)^21)/(3*b^16) + (1365*d^4*(b*c - a*d)^11*(a + b*x)^22)/(22*b^16) + (3003*d^5*(b*c - a*d)^10*(a + b*x)^23)/(23*b^16) + (5005*d^6*(b*c - a*d)^9*(a + b*x)^24)/(24*b^16) + (1287*d^7*(b*c - a*d)^8*(a + b*x)^25)/(5*b^16) + (495*d^8*(b*c - a*d)^7*(a + b*x)^26)/(2*b^16) + (5005*d^9*(b*c - a*d)^6*(a + b*x)^27)/(27*b^16) + (429*d^10*(b*c - a*d)^5*(a + b*x)^28)/(4*b^16) + (1365*d^11*(b*c - a*d)^4*(a + b*x)^29)/(29*b^16) + (91*d^12*(b*c - a*d)^3*(a + b*x)^30)/(6*b^16) + (105*d^13*(b*c - a*d)^2*(a + b*x)^31)/(31*b^16) + (15*d^14*(b*c - a*d)*(a + b*x)^32)/(32*b^16) + (d^15*(a + b*x)^33)/(33*b^16), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^16*(c + d*x)^15, result = ((b*c - a*d)^15*(a + b*x)^17)/(17*b^16) + (5*d*(b*c - a*d)^14*(a + b*x)^18)/(6*b^16) + (105*d^2*(b*c - a*d)^13*(a + b*x)^19)/(19*b^16) + (91*d^3*(b*c - a*d)^12*(a + b*x)^20)/(4*b^16) + (65*d^4*(b*c - a*d)^11*(a + b*x)^21)/b^16 + (273*d^5*(b*c - a*d)^10*(a + b*x)^22)/(2*b^16) + (5005*d^6*(b*c - a*d)^9*(a + b*x)^23)/(23*b^16) + (2145*d^7*(b*c - a*d)^8*(a + b*x)^24)/(8*b^16) + (1287*d^8*(b*c - a*d)^7*(a + b*x)^25)/(5*b^16) + (385*d^9*(b*c - a*d)^6*(a + b*x)^26)/(2*b^16) + (1001*d^10*(b*c - a*d)^5*(a + b*x)^27)/(9*b^16) + (195*d^11*(b*c - a*d)^4*(a + b*x)^28)/(4*b^16) + (455*d^12*(b*c - a*d)^3*(a + b*x)^29)/(29*b^16) + (7*d^13*(b*c - a*d)^2*(a + b*x)^30)/(2*b^16) + (15*d^14*(b*c - a*d)*(a + b*x)^31)/(31*b^16) + (d^15*(a + b*x)^32)/(32*b^16), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^15*(c + d*x)^15, result = ((b*c - a*d)^15*(a + b*x)^16)/(16*b^16) + (15*d*(b*c - a*d)^14*(a + b*x)^17)/(17*b^16) + (35*d^2*(b*c - a*d)^13*(a + b*x)^18)/(6*b^16) + (455*d^3*(b*c - a*d)^12*(a + b*x)^19)/(19*b^16) + (273*d^4*(b*c - a*d)^11*(a + b*x)^20)/(4*b^16) + (143*d^5*(b*c - a*d)^10*(a + b*x)^21)/b^16 + (455*d^6*(b*c - a*d)^9*(a + b*x)^22)/(2*b^16) + (6435*d^7*(b*c - a*d)^8*(a + b*x)^23)/(23*b^16) + (2145*d^8*(b*c - a*d)^7*(a + b*x)^24)/(8*b^16) + (1001*d^9*(b*c - a*d)^6*(a + b*x)^25)/(5*b^16) + (231*d^10*(b*c - a*d)^5*(a + b*x)^26)/(2*b^16) + (455*d^11*(b*c - a*d)^4*(a + b*x)^27)/(9*b^16) + (65*d^12*(b*c - a*d)^3*(a + b*x)^28)/(4*b^16) + (105*d^13*(b*c - a*d)^2*(a + b*x)^29)/(29*b^16) + (d^14*(b*c - a*d)*(a + b*x)^30)/(2*b^16) + (d^15*(a + b*x)^31)/(31*b^16), integration_var = x, mistery_val = 2),
# 
#     (integrand = (a + b*x)^14*(c + d*x)^15, result = ((b*c - a*d)^14*(c + d*x)^16)/(16*d^15) - (14*b*(b*c - a*d)^13*(c + d*x)^17)/(17*d^15) + (91*b^2*(b*c - a*d)^12*(c + d*x)^18)/(18*d^15) - (364*b^3*(b*c - a*d)^11*(c + d*x)^19)/(19*d^15) + (1001*b^4*(b*c - a*d)^10*(c + d*x)^20)/(20*d^15) - (286*b^5*(b*c - a*d)^9*(c + d*x)^21)/(3*d^15) + (273*b^6*(b*c - a*d)^8*(c + d*x)^22)/(2*d^15) - (3432*b^7*(b*c - a*d)^7*(c + d*x)^23)/(23*d^15) + (1001*b^8*(b*c - a*d)^6*(c + d*x)^24)/(8*d^15) - (2002*b^9*(b*c - a*d)^5*(c + d*x)^25)/(25*d^15) + (77*b^10*(b*c - a*d)^4*(c + d*x)^26)/(2*d^15) - (364*b^11*(b*c - a*d)^3*(c + d*x)^27)/(27*d^15) + (13*b^12*(b*c - a*d)^2*(c + d*x)^28)/(4*d^15) - (14*b^13*(b*c - a*d)*(c + d*x)^29)/(29*d^15) + (b^14*(c + d*x)^30)/(30*d^15), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^13*(c + d*x)^15, result = -(((b*c - a*d)^13*(c + d*x)^16)/(16*d^14)) + (13*b*(b*c - a*d)^12*(c + d*x)^17)/(17*d^14) - (13*b^2*(b*c - a*d)^11*(c + d*x)^18)/(3*d^14) + (286*b^3*(b*c - a*d)^10*(c + d*x)^19)/(19*d^14) - (143*b^4*(b*c - a*d)^9*(c + d*x)^20)/(4*d^14) + (429*b^5*(b*c - a*d)^8*(c + d*x)^21)/(7*d^14) - (78*b^6*(b*c - a*d)^7*(c + d*x)^22)/d^14 + (1716*b^7*(b*c - a*d)^6*(c + d*x)^23)/(23*d^14) - (429*b^8*(b*c - a*d)^5*(c + d*x)^24)/(8*d^14) + (143*b^9*(b*c - a*d)^4*(c + d*x)^25)/(5*d^14) - (11*b^10*(b*c - a*d)^3*(c + d*x)^26)/d^14 + (26*b^11*(b*c - a*d)^2*(c + d*x)^27)/(9*d^14) - (13*b^12*(b*c - a*d)*(c + d*x)^28)/(28*d^14) + (b^13*(c + d*x)^29)/(29*d^14), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^12*(c + d*x)^15, result = ((b*c - a*d)^12*(c + d*x)^16)/(16*d^13) - (12*b*(b*c - a*d)^11*(c + d*x)^17)/(17*d^13) + (11*b^2*(b*c - a*d)^10*(c + d*x)^18)/(3*d^13) - (220*b^3*(b*c - a*d)^9*(c + d*x)^19)/(19*d^13) + (99*b^4*(b*c - a*d)^8*(c + d*x)^20)/(4*d^13) - (264*b^5*(b*c - a*d)^7*(c + d*x)^21)/(7*d^13) + (42*b^6*(b*c - a*d)^6*(c + d*x)^22)/d^13 - (792*b^7*(b*c - a*d)^5*(c + d*x)^23)/(23*d^13) + (165*b^8*(b*c - a*d)^4*(c + d*x)^24)/(8*d^13) - (44*b^9*(b*c - a*d)^3*(c + d*x)^25)/(5*d^13) + (33*b^10*(b*c - a*d)^2*(c + d*x)^26)/(13*d^13) - (4*b^11*(b*c - a*d)*(c + d*x)^27)/(9*d^13) + (b^12*(c + d*x)^28)/(28*d^13), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^11*(c + d*x)^15, result = -((b*c - a*d)^11*(c + d*x)^16)/(16*d^12) + (11*b*(b*c - a*d)^10*(c + d*x)^17)/(17*d^12) - (55*b^2*(b*c - a*d)^9*(c + d*x)^18)/(18*d^12) + (165*b^3*(b*c - a*d)^8*(c + d*x)^19)/(19*d^12) - (33*b^4*(b*c - a*d)^7*(c + d*x)^20)/(2*d^12) + (22*b^5*(b*c - a*d)^6*(c + d*x)^21)/d^12 - (21*b^6*(b*c - a*d)^5*(c + d*x)^22)/d^12 + (330*b^7*(b*c - a*d)^4*(c + d*x)^23)/(23*d^12) - (55*b^8*(b*c - a*d)^3*(c + d*x)^24)/(8*d^12) + (11*b^9*(b*c - a*d)^2*(c + d*x)^25)/(5*d^12) - (11*b^10*(b*c - a*d)*(c + d*x)^26)/(26*d^12) + (b^11*(c + d*x)^27)/(27*d^12), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^10*(c + d*x)^15, result = ((b*c - a*d)^10*(c + d*x)^16)/(16*d^11) - (10*b*(b*c - a*d)^9*(c + d*x)^17)/(17*d^11) + (5*b^2*(b*c - a*d)^8*(c + d*x)^18)/(2*d^11) - (120*b^3*(b*c - a*d)^7*(c + d*x)^19)/(19*d^11) + (21*b^4*(b*c - a*d)^6*(c + d*x)^20)/(2*d^11) - (12*b^5*(b*c - a*d)^5*(c + d*x)^21)/d^11 + (105*b^6*(b*c - a*d)^4*(c + d*x)^22)/(11*d^11) - (120*b^7*(b*c - a*d)^3*(c + d*x)^23)/(23*d^11) + (15*b^8*(b*c - a*d)^2*(c + d*x)^24)/(8*d^11) - (2*b^9*(b*c - a*d)*(c + d*x)^25)/(5*d^11) + (b^10*(c + d*x)^26)/(26*d^11), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^9*(c + d*x)^15, result = -((b*c - a*d)^9*(c + d*x)^16)/(16*d^10) + (9*b*(b*c - a*d)^8*(c + d*x)^17)/(17*d^10) - (2*b^2*(b*c - a*d)^7*(c + d*x)^18)/d^10 + (84*b^3*(b*c - a*d)^6*(c + d*x)^19)/(19*d^10) - (63*b^4*(b*c - a*d)^5*(c + d*x)^20)/(10*d^10) + (6*b^5*(b*c - a*d)^4*(c + d*x)^21)/d^10 - (42*b^6*(b*c - a*d)^3*(c + d*x)^22)/(11*d^10) + (36*b^7*(b*c - a*d)^2*(c + d*x)^23)/(23*d^10) - (3*b^8*(b*c - a*d)*(c + d*x)^24)/(8*d^10) + (b^9*(c + d*x)^25)/(25*d^10), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^8*(c + d*x)^15, result = ((b*c - a*d)^8*(c + d*x)^16)/(16*d^9) - (8*b*(b*c - a*d)^7*(c + d*x)^17)/(17*d^9) + (14*b^2*(b*c - a*d)^6*(c + d*x)^18)/(9*d^9) - (56*b^3*(b*c - a*d)^5*(c + d*x)^19)/(19*d^9) + (7*b^4*(b*c - a*d)^4*(c + d*x)^20)/(2*d^9) - (8*b^5*(b*c - a*d)^3*(c + d*x)^21)/(3*d^9) + (14*b^6*(b*c - a*d)^2*(c + d*x)^22)/(11*d^9) - (8*b^7*(b*c - a*d)*(c + d*x)^23)/(23*d^9) + (b^8*(c + d*x)^24)/(24*d^9), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^7*(c + d*x)^15, result = -((b*c - a*d)^7*(c + d*x)^16)/(16*d^8) + (7*b*(b*c - a*d)^6*(c + d*x)^17)/(17*d^8) - (7*b^2*(b*c - a*d)^5*(c + d*x)^18)/(6*d^8) + (35*b^3*(b*c - a*d)^4*(c + d*x)^19)/(19*d^8) - (7*b^4*(b*c - a*d)^3*(c + d*x)^20)/(4*d^8) + (b^5*(b*c - a*d)^2*(c + d*x)^21)/d^8 - (7*b^6*(b*c - a*d)*(c + d*x)^22)/(22*d^8) + (b^7*(c + d*x)^23)/(23*d^8), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^6*(c + d*x)^15, result = ((b*c - a*d)^6*(c + d*x)^16)/(16*d^7) - (6*b*(b*c - a*d)^5*(c + d*x)^17)/(17*d^7) + (5*b^2*(b*c - a*d)^4*(c + d*x)^18)/(6*d^7) - (20*b^3*(b*c - a*d)^3*(c + d*x)^19)/(19*d^7) + (3*b^4*(b*c - a*d)^2*(c + d*x)^20)/(4*d^7) - (2*b^5*(b*c - a*d)*(c + d*x)^21)/(7*d^7) + (b^6*(c + d*x)^22)/(22*d^7), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^5*(c + d*x)^15, result = -((b*c - a*d)^5*(c + d*x)^16)/(16*d^6) + (5*b*(b*c - a*d)^4*(c + d*x)^17)/(17*d^6) - (5*b^2*(b*c - a*d)^3*(c + d*x)^18)/(9*d^6) + (10*b^3*(b*c - a*d)^2*(c + d*x)^19)/(19*d^6) - (b^4*(b*c - a*d)*(c + d*x)^20)/(4*d^6) + (b^5*(c + d*x)^21)/(21*d^6), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^4*(c + d*x)^15, result = ((b*c - a*d)^4*(c + d*x)^16)/(16*d^5) - (4*b*(b*c - a*d)^3*(c + d*x)^17)/(17*d^5) + (b^2*(b*c - a*d)^2*(c + d*x)^18)/(3*d^5) - (4*b^3*(b*c - a*d)*(c + d*x)^19)/(19*d^5) + (b^4*(c + d*x)^20)/(20*d^5), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^3*(c + d*x)^15, result = -((b*c - a*d)^3*(c + d*x)^16)/(16*d^4) + (3*b*(b*c - a*d)^2*(c + d*x)^17)/(17*d^4) - (b^2*(b*c - a*d)*(c + d*x)^18)/(6*d^4) + (b^3*(c + d*x)^19)/(19*d^4), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^2*(c + d*x)^15, result = ((b*c - a*d)^2*(c + d*x)^16)/(16*d^3) - (2*b*(b*c - a*d)*(c + d*x)^17)/(17*d^3) + (b^2*(c + d*x)^18)/(18*d^3), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)*(c + d*x)^15, result = -((b*c - a*d)*(c + d*x)^16)/(16*d^2) + (b*(c + d*x)^17)/(17*d^2), integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^15, result = (c + d*x)^16/(16*d), integration_var = x, mistery_val = 1),
# 
#     (integrand = (c + d*x)^15/(a + b*x), result = (d*(b*c - a*d)^14*x)/b^15 + ((b*c - a*d)^13*(c + d*x)^2)/(2*b^14) + ((b*c - a*d)^12*(c + d*x)^3)/(3*b^13) + ((b*c - a*d)^11*(c + d*x)^4)/(4*b^12) + ((b*c - a*d)^10*(c + d*x)^5)/(5*b^11) + ((b*c - a*d)^9*(c + d*x)^6)/(6*b^10) + ((b*c - a*d)^8*(c + d*x)^7)/(7*b^9) + ((b*c - a*d)^7*(c + d*x)^8)/(8*b^8) + ((b*c - a*d)^6*(c + d*x)^9)/(9*b^7) + ((b*c - a*d)^5*(c + d*x)^10)/(10*b^6) + ((b*c - a*d)^4*(c + d*x)^11)/(11*b^5) + ((b*c - a*d)^3*(c + d*x)^12)/(12*b^4) + ((b*c - a*d)^2*(c + d*x)^13)/(13*b^3) + ((b*c - a*d)*(c + d*x)^14)/(14*b^2) + (c + d*x)^15/(15*b) + ((b*c - a*d)^15*log(a + b*x))/b^16, integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^15/(a + b*x)^2, result = (105*d^2*(b*c - a*d)^13*x)/b^15 - (b*c - a*d)^15/(b^16*(a + b*x)) + (455*d^3*(b*c - a*d)^12*(a + b*x)^2)/(2*b^16) + (455*d^4*(b*c - a*d)^11*(a + b*x)^3)/b^16 + (3003*d^5*(b*c - a*d)^10*(a + b*x)^4)/(4*b^16) + (1001*d^6*(b*c - a*d)^9*(a + b*x)^5)/b^16 + (2145*d^7*(b*c - a*d)^8*(a + b*x)^6)/(2*b^16) + (6435*d^8*(b*c - a*d)^7*(a + b*x)^7)/(7*b^16) + (5005*d^9*(b*c - a*d)^6*(a + b*x)^8)/(8*b^16) + (1001*d^10*(b*c - a*d)^5*(a + b*x)^9)/(3*b^16) + (273*d^11*(b*c - a*d)^4*(a + b*x)^10)/(2*b^16) + (455*d^12*(b*c - a*d)^3*(a + b*x)^11)/(11*b^16) + (35*d^13*(b*c - a*d)^2*(a + b*x)^12)/(4*b^16) + (15*d^14*(b*c - a*d)*(a + b*x)^13)/(13*b^16) + (d^15*(a + b*x)^14)/(14*b^16) + (15*d*(b*c - a*d)^14*log(a + b*x))/b^16, integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^15/(a + b*x)^3, result = (455*d^3*(b*c - a*d)^12*x)/b^15 - (b*c - a*d)^15/(2*b^16*(a + b*x)^2) - (15*d*(b*c - a*d)^14)/(b^16*(a + b*x)) + (1365*d^4*(b*c - a*d)^11*(a + b*x)^2)/(2*b^16) + (1001*d^5*(b*c - a*d)^10*(a + b*x)^3)/b^16 + (5005*d^6*(b*c - a*d)^9*(a + b*x)^4)/(4*b^16) + (1287*d^7*(b*c - a*d)^8*(a + b*x)^5)/b^16 + (2145*d^8*(b*c - a*d)^7*(a + b*x)^6)/(2*b^16) + (715*d^9*(b*c - a*d)^6*(a + b*x)^7)/b^16 + (3003*d^10*(b*c - a*d)^5*(a + b*x)^8)/(8*b^16) + (455*d^11*(b*c - a*d)^4*(a + b*x)^9)/(3*b^16) + (91*d^12*(b*c - a*d)^3*(a + b*x)^10)/(2*b^16) + (105*d^13*(b*c - a*d)^2*(a + b*x)^11)/(11*b^16) + (5*d^14*(b*c - a*d)*(a + b*x)^12)/(4*b^16) + (d^15*(a + b*x)^13)/(13*b^16) + (105*d^2*(b*c - a*d)^13*log(a + b*x))/b^16, integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^15/(a + b*x)^4, result = (1365*d^4*(b*c - a*d)^11*x)/b^15 - (b*c - a*d)^15/(3*b^16*(a + b*x)^3) - (15*d*(b*c - a*d)^14)/(2*b^16*(a + b*x)^2) - (105*d^2*(b*c - a*d)^13)/(b^16*(a + b*x)) + (3003*d^5*(b*c - a*d)^10*(a + b*x)^2)/(2*b^16) + (5005*d^6*(b*c - a*d)^9*(a + b*x)^3)/(3*b^16) + (6435*d^7*(b*c - a*d)^8*(a + b*x)^4)/(4*b^16) + (1287*d^8*(b*c - a*d)^7*(a + b*x)^5)/b^16 + (5005*d^9*(b*c - a*d)^6*(a + b*x)^6)/(6*b^16) + (429*d^10*(b*c - a*d)^5*(a + b*x)^7)/b^16 + (1365*d^11*(b*c - a*d)^4*(a + b*x)^8)/(8*b^16) + (455*d^12*(b*c - a*d)^3*(a + b*x)^9)/(9*b^16) + (21*d^13*(b*c - a*d)^2*(a + b*x)^10)/(2*b^16) + (15*d^14*(b*c - a*d)*(a + b*x)^11)/(11*b^16) + (d^15*(a + b*x)^12)/(12*b^16) + (455*d^3*(b*c - a*d)^12*log(a + b*x))/b^16, integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^15/(a + b*x)^5, result = (3003*d^5*(b*c - a*d)^10*x)/b^15 - (b*c - a*d)^15/(4*b^16*(a + b*x)^4) - (5*d*(b*c - a*d)^14)/(b^16*(a + b*x)^3) - (105*d^2*(b*c - a*d)^13)/(2*b^16*(a + b*x)^2) - (455*d^3*(b*c - a*d)^12)/(b^16*(a + b*x)) + (5005*d^6*(b*c - a*d)^9*(a + b*x)^2)/(2*b^16) + (2145*d^7*(b*c - a*d)^8*(a + b*x)^3)/b^16 + (6435*d^8*(b*c - a*d)^7*(a + b*x)^4)/(4*b^16) + (1001*d^9*(b*c - a*d)^6*(a + b*x)^5)/b^16 + (1001*d^10*(b*c - a*d)^5*(a + b*x)^6)/(2*b^16) + (195*d^11*(b*c - a*d)^4*(a + b*x)^7)/b^16 + (455*d^12*(b*c - a*d)^3*(a + b*x)^8)/(8*b^16) + (35*d^13*(b*c - a*d)^2*(a + b*x)^9)/(3*b^16) + (3*d^14*(b*c - a*d)*(a + b*x)^10)/(2*b^16) + (d^15*(a + b*x)^11)/(11*b^16) + (1365*d^4*(b*c - a*d)^11*log(a + b*x))/b^16, integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^15/(a + b*x)^6, result = (5005*d^6*(b*c - a*d)^9*x)/b^15 - (b*c - a*d)^15/(5*b^16*(a + b*x)^5) - (15*d*(b*c - a*d)^14)/(4*b^16*(a + b*x)^4) - (35*d^2*(b*c - a*d)^13)/(b^16*(a + b*x)^3) - (455*d^3*(b*c - a*d)^12)/(2*b^16*(a + b*x)^2) - (1365*d^4*(b*c - a*d)^11)/(b^16*(a + b*x)) + (6435*d^7*(b*c - a*d)^8*(a + b*x)^2)/(2*b^16) + (2145*d^8*(b*c - a*d)^7*(a + b*x)^3)/b^16 + (5005*d^9*(b*c - a*d)^6*(a + b*x)^4)/(4*b^16) + (3003*d^10*(b*c - a*d)^5*(a + b*x)^5)/(5*b^16) + (455*d^11*(b*c - a*d)^4*(a + b*x)^6)/(2*b^16) + (65*d^12*(b*c - a*d)^3*(a + b*x)^7)/b^16 + (105*d^13*(b*c - a*d)^2*(a + b*x)^8)/(8*b^16) + (5*d^14*(b*c - a*d)*(a + b*x)^9)/(3*b^16) + (d^15*(a + b*x)^10)/(10*b^16) + (3003*d^5*(b*c - a*d)^10*log(a + b*x))/b^16, integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^15/(a + b*x)^7, result = (6435*d^7*(b*c - a*d)^8*x)/b^15 - (b*c - a*d)^15/(6*b^16*(a + b*x)^6) - (3*d*(b*c - a*d)^14)/(b^16*(a + b*x)^5) - (105*d^2*(b*c - a*d)^13)/(4*b^16*(a + b*x)^4) - (455*d^3*(b*c - a*d)^12)/(3*b^16*(a + b*x)^3) - (1365*d^4*(b*c - a*d)^11)/(2*b^16*(a + b*x)^2) - (3003*d^5*(b*c - a*d)^10)/(b^16*(a + b*x)) + (6435*d^8*(b*c - a*d)^7*(a + b*x)^2)/(2*b^16) + (5005*d^9*(b*c - a*d)^6*(a + b*x)^3)/(3*b^16) + (3003*d^10*(b*c - a*d)^5*(a + b*x)^4)/(4*b^16) + (273*d^11*(b*c - a*d)^4*(a + b*x)^5)/b^16 + (455*d^12*(b*c - a*d)^3*(a + b*x)^6)/(6*b^16) + (15*d^13*(b*c - a*d)^2*(a + b*x)^7)/b^16 + (15*d^14*(b*c - a*d)*(a + b*x)^8)/(8*b^16) + (d^15*(a + b*x)^9)/(9*b^16) + (5005*d^6*(b*c - a*d)^9*log(a + b*x))/b^16, integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^15/(a + b*x)^8, result = (6435*d^8*(b*c - a*d)^7*x)/b^15 - (b*c - a*d)^15/(7*b^16*(a + b*x)^7) - (5*d*(b*c - a*d)^14)/(2*b^16*(a + b*x)^6) - (21*d^2*(b*c - a*d)^13)/(b^16*(a + b*x)^5) - (455*d^3*(b*c - a*d)^12)/(4*b^16*(a + b*x)^4) - (455*d^4*(b*c - a*d)^11)/(b^16*(a + b*x)^3) - (3003*d^5*(b*c - a*d)^10)/(2*b^16*(a + b*x)^2) - (5005*d^6*(b*c - a*d)^9)/(b^16*(a + b*x)) + (5005*d^9*(b*c - a*d)^6*(a + b*x)^2)/(2*b^16) + (1001*d^10*(b*c - a*d)^5*(a + b*x)^3)/b^16 + (1365*d^11*(b*c - a*d)^4*(a + b*x)^4)/(4*b^16) + (91*d^12*(b*c - a*d)^3*(a + b*x)^5)/b^16 + (35*d^13*(b*c - a*d)^2*(a + b*x)^6)/(2*b^16) + (15*d^14*(b*c - a*d)*(a + b*x)^7)/(7*b^16) + (d^15*(a + b*x)^8)/(8*b^16) + (6435*d^7*(b*c - a*d)^8*log(a + b*x))/b^16, integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^15/(a + b*x)^9, result = (5005*d^9*(b*c - a*d)^6*x)/b^15 - (b*c - a*d)^15/(8*b^16*(a + b*x)^8) - (15*d*(b*c - a*d)^14)/(7*b^16*(a + b*x)^7) - (35*d^2*(b*c - a*d)^13)/(2*b^16*(a + b*x)^6) - (91*d^3*(b*c - a*d)^12)/(b^16*(a + b*x)^5) - (1365*d^4*(b*c - a*d)^11)/(4*b^16*(a + b*x)^4) - (1001*d^5*(b*c - a*d)^10)/(b^16*(a + b*x)^3) - (5005*d^6*(b*c - a*d)^9)/(2*b^16*(a + b*x)^2) - (6435*d^7*(b*c - a*d)^8)/(b^16*(a + b*x)) + (3003*d^10*(b*c - a*d)^5*(a + b*x)^2)/(2*b^16) + (455*d^11*(b*c - a*d)^4*(a + b*x)^3)/b^16 + (455*d^12*(b*c - a*d)^3*(a + b*x)^4)/(4*b^16) + (21*d^13*(b*c - a*d)^2*(a + b*x)^5)/b^16 + (5*d^14*(b*c - a*d)*(a + b*x)^6)/(2*b^16) + (d^15*(a + b*x)^7)/(7*b^16) + (6435*d^8*(b*c - a*d)^7*log(a + b*x))/b^16, integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^15/(a + b*x)^10, result = (3003*d^10*(b*c - a*d)^5*x)/b^15 - (b*c - a*d)^15/(9*b^16*(a + b*x)^9) - (15*d*(b*c - a*d)^14)/(8*b^16*(a + b*x)^8) - (15*d^2*(b*c - a*d)^13)/(b^16*(a + b*x)^7) - (455*d^3*(b*c - a*d)^12)/(6*b^16*(a + b*x)^6) - (273*d^4*(b*c - a*d)^11)/(b^16*(a + b*x)^5) - (3003*d^5*(b*c - a*d)^10)/(4*b^16*(a + b*x)^4) - (5005*d^6*(b*c - a*d)^9)/(3*b^16*(a + b*x)^3) - (6435*d^7*(b*c - a*d)^8)/(2*b^16*(a + b*x)^2) - (6435*d^8*(b*c - a*d)^7)/(b^16*(a + b*x)) + (1365*d^11*(b*c - a*d)^4*(a + b*x)^2)/(2*b^16) + (455*d^12*(b*c - a*d)^3*(a + b*x)^3)/(3*b^16) + (105*d^13*(b*c - a*d)^2*(a + b*x)^4)/(4*b^16) + (3*d^14*(b*c - a*d)*(a + b*x)^5)/b^16 + (d^15*(a + b*x)^6)/(6*b^16) + (5005*d^9*(b*c - a*d)^6*log(a + b*x))/b^16, integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^15/(a + b*x)^11, result = (1365*d^11*(b*c - a*d)^4*x)/b^15 - (b*c - a*d)^15/(10*b^16*(a + b*x)^10) - (5*d*(b*c - a*d)^14)/(3*b^16*(a + b*x)^9) - (105*d^2*(b*c - a*d)^13)/(8*b^16*(a + b*x)^8) - (65*d^3*(b*c - a*d)^12)/(b^16*(a + b*x)^7) - (455*d^4*(b*c - a*d)^11)/(2*b^16*(a + b*x)^6) - (3003*d^5*(b*c - a*d)^10)/(5*b^16*(a + b*x)^5) - (5005*d^6*(b*c - a*d)^9)/(4*b^16*(a + b*x)^4) - (2145*d^7*(b*c - a*d)^8)/(b^16*(a + b*x)^3) - (6435*d^8*(b*c - a*d)^7)/(2*b^16*(a + b*x)^2) - (5005*d^9*(b*c - a*d)^6)/(b^16*(a + b*x)) + (455*d^12*(b*c - a*d)^3*(a + b*x)^2)/(2*b^16) + (35*d^13*(b*c - a*d)^2*(a + b*x)^3)/b^16 + (15*d^14*(b*c - a*d)*(a + b*x)^4)/(4*b^16) + (d^15*(a + b*x)^5)/(5*b^16) + (3003*d^10*(b*c - a*d)^5*log(a + b*x))/b^16, integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^15/(a + b*x)^12, result = (455*d^12*(b*c - a*d)^3*x)/b^15 - (b*c - a*d)^15/(11*b^16*(a + b*x)^11) - (3*d*(b*c - a*d)^14)/(2*b^16*(a + b*x)^10) - (35*d^2*(b*c - a*d)^13)/(3*b^16*(a + b*x)^9) - (455*d^3*(b*c - a*d)^12)/(8*b^16*(a + b*x)^8) - (195*d^4*(b*c - a*d)^11)/(b^16*(a + b*x)^7) - (1001*d^5*(b*c - a*d)^10)/(2*b^16*(a + b*x)^6) - (1001*d^6*(b*c - a*d)^9)/(b^16*(a + b*x)^5) - (6435*d^7*(b*c - a*d)^8)/(4*b^16*(a + b*x)^4) - (2145*d^8*(b*c - a*d)^7)/(b^16*(a + b*x)^3) - (5005*d^9*(b*c - a*d)^6)/(2*b^16*(a + b*x)^2) - (3003*d^10*(b*c - a*d)^5)/(b^16*(a + b*x)) + (105*d^13*(b*c - a*d)^2*(a + b*x)^2)/(2*b^16) + (5*d^14*(b*c - a*d)*(a + b*x)^3)/b^16 + (d^15*(a + b*x)^4)/(4*b^16) + (1365*d^11*(b*c - a*d)^4*log(a + b*x))/b^16, integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^15/(a + b*x)^13, result = (105*d^13*(b*c - a*d)^2*x)/b^15 - (b*c - a*d)^15/(12*b^16*(a + b*x)^12) - (15*d*(b*c - a*d)^14)/(11*b^16*(a + b*x)^11) - (21*d^2*(b*c - a*d)^13)/(2*b^16*(a + b*x)^10) - (455*d^3*(b*c - a*d)^12)/(9*b^16*(a + b*x)^9) - (1365*d^4*(b*c - a*d)^11)/(8*b^16*(a + b*x)^8) - (429*d^5*(b*c - a*d)^10)/(b^16*(a + b*x)^7) - (5005*d^6*(b*c - a*d)^9)/(6*b^16*(a + b*x)^6) - (1287*d^7*(b*c - a*d)^8)/(b^16*(a + b*x)^5) - (6435*d^8*(b*c - a*d)^7)/(4*b^16*(a + b*x)^4) - (5005*d^9*(b*c - a*d)^6)/(3*b^16*(a + b*x)^3) - (3003*d^10*(b*c - a*d)^5)/(2*b^16*(a + b*x)^2) - (1365*d^11*(b*c - a*d)^4)/(b^16*(a + b*x)) + (15*d^14*(b*c - a*d)*(a + b*x)^2)/(2*b^16) + (d^15*(a + b*x)^3)/(3*b^16) + (455*d^12*(b*c - a*d)^3*log(a + b*x))/b^16, integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^15/(a + b*x)^14, result = (d^14*(15*b*c - 14*a*d)*x)/b^15 + (d^15*x^2)/(2*b^14) - (b*c - a*d)^15/(13*b^16*(a + b*x)^13) - (5*d*(b*c - a*d)^14)/(4*b^16*(a + b*x)^12) - (105*d^2*(b*c - a*d)^13)/(11*b^16*(a + b*x)^11) - (91*d^3*(b*c - a*d)^12)/(2*b^16*(a + b*x)^10) - (455*d^4*(b*c - a*d)^11)/(3*b^16*(a + b*x)^9) - (3003*d^5*(b*c - a*d)^10)/(8*b^16*(a + b*x)^8) - (715*d^6*(b*c - a*d)^9)/(b^16*(a + b*x)^7) - (2145*d^7*(b*c - a*d)^8)/(2*b^16*(a + b*x)^6) - (1287*d^8*(b*c - a*d)^7)/(b^16*(a + b*x)^5) - (5005*d^9*(b*c - a*d)^6)/(4*b^16*(a + b*x)^4) - (1001*d^10*(b*c - a*d)^5)/(b^16*(a + b*x)^3) - (1365*d^11*(b*c - a*d)^4)/(2*b^16*(a + b*x)^2) - (455*d^12*(b*c - a*d)^3)/(b^16*(a + b*x)) + (105*d^13*(b*c - a*d)^2*log(a + b*x))/b^16, integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^15/(a + b*x)^15, result = (d^15*x)/b^15 - (b*c - a*d)^15/(14*b^16*(a + b*x)^14) - (15*d*(b*c - a*d)^14)/(13*b^16*(a + b*x)^13) - (35*d^2*(b*c - a*d)^13)/(4*b^16*(a + b*x)^12) - (455*d^3*(b*c - a*d)^12)/(11*b^16*(a + b*x)^11) - (273*d^4*(b*c - a*d)^11)/(2*b^16*(a + b*x)^10) - (1001*d^5*(b*c - a*d)^10)/(3*b^16*(a + b*x)^9) - (5005*d^6*(b*c - a*d)^9)/(8*b^16*(a + b*x)^8) - (6435*d^7*(b*c - a*d)^8)/(7*b^16*(a + b*x)^7) - (2145*d^8*(b*c - a*d)^7)/(2*b^16*(a + b*x)^6) - (1001*d^9*(b*c - a*d)^6)/(b^16*(a + b*x)^5) - (3003*d^10*(b*c - a*d)^5)/(4*b^16*(a + b*x)^4) - (455*d^11*(b*c - a*d)^4)/(b^16*(a + b*x)^3) - (455*d^12*(b*c - a*d)^3)/(2*b^16*(a + b*x)^2) - (105*d^13*(b*c - a*d)^2)/(b^16*(a + b*x)) + (15*d^14*(b*c - a*d)*log(a + b*x))/b^16, integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^15/(a + b*x)^16, result = -(b*c - a*d)^15/(15*b^16*(a + b*x)^15) - (15*d*(b*c - a*d)^14)/(14*b^16*(a + b*x)^14) - (105*d^2*(b*c - a*d)^13)/(13*b^16*(a + b*x)^13) - (455*d^3*(b*c - a*d)^12)/(12*b^16*(a + b*x)^12) - (1365*d^4*(b*c - a*d)^11)/(11*b^16*(a + b*x)^11) - (3003*d^5*(b*c - a*d)^10)/(10*b^16*(a + b*x)^10) - (5005*d^6*(b*c - a*d)^9)/(9*b^16*(a + b*x)^9) - (6435*d^7*(b*c - a*d)^8)/(8*b^16*(a + b*x)^8) - (6435*d^8*(b*c - a*d)^7)/(7*b^16*(a + b*x)^7) - (5005*d^9*(b*c - a*d)^6)/(6*b^16*(a + b*x)^6) - (3003*d^10*(b*c - a*d)^5)/(5*b^16*(a + b*x)^5) - (1365*d^11*(b*c - a*d)^4)/(4*b^16*(a + b*x)^4) - (455*d^12*(b*c - a*d)^3)/(3*b^16*(a + b*x)^3) - (105*d^13*(b*c - a*d)^2)/(2*b^16*(a + b*x)^2) - (15*d^14*(b*c - a*d))/(b^16*(a + b*x)) + (d^15*log(a + b*x))/b^16, integration_var = x, mistery_val = 2),
# 
#     (integrand = (c + d*x)^15/(a + b*x)^17, result = -(c + d*x)^16/(16*(b*c - a*d)*(a + b*x)^16), integration_var = x, mistery_val = 1),
#     (integrand = (c + d*x)^15/(a + b*x)^18, result = -(c + d*x)^16/(17*(b*c - a*d)*(a + b*x)^17) + (d*(c + d*x)^16)/(272*(b*c - a*d)^2*(a + b*x)^16), integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^15/(a + b*x)^19, result = -(c + d*x)^16/(18*(b*c - a*d)*(a + b*x)^18) + (d*(c + d*x)^16)/(153*(b*c - a*d)^2*(a + b*x)^17) - (d^2*(c + d*x)^16)/(2448*(b*c - a*d)^3*(a + b*x)^16), integration_var = x, mistery_val = 3),
#     (integrand = (c + d*x)^15/(a + b*x)^20, result = -(c + d*x)^16/(19*(b*c - a*d)*(a + b*x)^19) + (d*(c + d*x)^16)/(114*(b*c - a*d)^2*(a + b*x)^18) - (d^2*(c + d*x)^16)/(969*(b*c - a*d)^3*(a + b*x)^17) + (d^3*(c + d*x)^16)/(15504*(b*c - a*d)^4*(a + b*x)^16), integration_var = x, mistery_val = 4),
#     (integrand = (c + d*x)^15/(a + b*x)^21, result = -(c + d*x)^16/(20*(b*c - a*d)*(a + b*x)^20) + (d*(c + d*x)^16)/(95*(b*c - a*d)^2*(a + b*x)^19) - (d^2*(c + d*x)^16)/(570*(b*c - a*d)^3*(a + b*x)^18) + (d^3*(c + d*x)^16)/(4845*(b*c - a*d)^4*(a + b*x)^17) - (d^4*(c + d*x)^16)/(77520*(b*c - a*d)^5*(a + b*x)^16), integration_var = x, mistery_val = 5),
#     (integrand = (c + d*x)^15/(a + b*x)^22, result = -(c + d*x)^16/(21*(b*c - a*d)*(a + b*x)^21) + (d*(c + d*x)^16)/(84*(b*c - a*d)^2*(a + b*x)^20) - (d^2*(c + d*x)^16)/(399*(b*c - a*d)^3*(a + b*x)^19) + (d^3*(c + d*x)^16)/(2394*(b*c - a*d)^4*(a + b*x)^18) - (d^4*(c + d*x)^16)/(20349*(b*c - a*d)^5*(a + b*x)^17) + (d^5*(c + d*x)^16)/(325584*(b*c - a*d)^6*(a + b*x)^16), integration_var = x, mistery_val = 6),
#     (integrand = (c + d*x)^15/(a + b*x)^23, result = -(c + d*x)^16/(22*(b*c - a*d)*(a + b*x)^22) + (d*(c + d*x)^16)/(77*(b*c - a*d)^2*(a + b*x)^21) - (d^2*(c + d*x)^16)/(308*(b*c - a*d)^3*(a + b*x)^20) + (d^3*(c + d*x)^16)/(1463*(b*c - a*d)^4*(a + b*x)^19) - (d^4*(c + d*x)^16)/(8778*(b*c - a*d)^5*(a + b*x)^18) + (d^5*(c + d*x)^16)/(74613*(b*c - a*d)^6*(a + b*x)^17) - (d^6*(c + d*x)^16)/(1193808*(b*c - a*d)^7*(a + b*x)^16), integration_var = x, mistery_val = 7),
#     (integrand = (c + d*x)^15/(a + b*x)^24, result = -(c + d*x)^16/(23*(b*c - a*d)*(a + b*x)^23) + (7*d*(c + d*x)^16)/(506*(b*c - a*d)^2*(a + b*x)^22) - (d^2*(c + d*x)^16)/(253*(b*c - a*d)^3*(a + b*x)^21) + (d^3*(c + d*x)^16)/(1012*(b*c - a*d)^4*(a + b*x)^20) - (d^4*(c + d*x)^16)/(4807*(b*c - a*d)^5*(a + b*x)^19) + (d^5*(c + d*x)^16)/(28842*(b*c - a*d)^6*(a + b*x)^18) - (d^6*(c + d*x)^16)/(245157*(b*c - a*d)^7*(a + b*x)^17) + (d^7*(c + d*x)^16)/(3922512*(b*c - a*d)^8*(a + b*x)^16), integration_var = x, mistery_val = 8),
#     (integrand = (c + d*x)^15/(a + b*x)^25, result = -(c + d*x)^16/(24*(b*c - a*d)*(a + b*x)^24) + (d*(c + d*x)^16)/(69*(b*c - a*d)^2*(a + b*x)^23) - (7*d^2*(c + d*x)^16)/(1518*(b*c - a*d)^3*(a + b*x)^22) + (d^3*(c + d*x)^16)/(759*(b*c - a*d)^4*(a + b*x)^21) - (d^4*(c + d*x)^16)/(3036*(b*c - a*d)^5*(a + b*x)^20) + (d^5*(c + d*x)^16)/(14421*(b*c - a*d)^6*(a + b*x)^19) - (d^6*(c + d*x)^16)/(86526*(b*c - a*d)^7*(a + b*x)^18) + (d^7*(c + d*x)^16)/(735471*(b*c - a*d)^8*(a + b*x)^17) - (d^8*(c + d*x)^16)/(11767536*(b*c - a*d)^9*(a + b*x)^16), integration_var = x, mistery_val = 9),
#     (integrand = (c + d*x)^15/(a + b*x)^26, result = -(c + d*x)^16/(25*(b*c - a*d)*(a + b*x)^25) + (3*d*(c + d*x)^16)/(200*(b*c - a*d)^2*(a + b*x)^24) - (3*d^2*(c + d*x)^16)/(575*(b*c - a*d)^3*(a + b*x)^23) + (21*d^3*(c + d*x)^16)/(12650*(b*c - a*d)^4*(a + b*x)^22) - (3*d^4*(c + d*x)^16)/(6325*(b*c - a*d)^5*(a + b*x)^21) + (3*d^5*(c + d*x)^16)/(25300*(b*c - a*d)^6*(a + b*x)^20) - (3*d^6*(c + d*x)^16)/(120175*(b*c - a*d)^7*(a + b*x)^19) + (d^7*(c + d*x)^16)/(240350*(b*c - a*d)^8*(a + b*x)^18) - (d^8*(c + d*x)^16)/(2042975*(b*c - a*d)^9*(a + b*x)^17) + (d^9*(c + d*x)^16)/(32687600*(b*c - a*d)^10*(a + b*x)^16), integration_var = x, mistery_val = 10),
#     (integrand = (c + d*x)^15/(a + b*x)^27, result = -(c + d*x)^16/(26*(b*c - a*d)*(a + b*x)^26) + (d*(c + d*x)^16)/(65*(b*c - a*d)^2*(a + b*x)^25) - (3*d^2*(c + d*x)^16)/(520*(b*c - a*d)^3*(a + b*x)^24) + (3*d^3*(c + d*x)^16)/(1495*(b*c - a*d)^4*(a + b*x)^23) - (21*d^4*(c + d*x)^16)/(32890*(b*c - a*d)^5*(a + b*x)^22) + (3*d^5*(c + d*x)^16)/(16445*(b*c - a*d)^6*(a + b*x)^21) - (3*d^6*(c + d*x)^16)/(65780*(b*c - a*d)^7*(a + b*x)^20) + (3*d^7*(c + d*x)^16)/(312455*(b*c - a*d)^8*(a + b*x)^19) - (d^8*(c + d*x)^16)/(624910*(b*c - a*d)^9*(a + b*x)^18) + (d^9*(c + d*x)^16)/(5311735*(b*c - a*d)^10*(a + b*x)^17) - (d^10*(c + d*x)^16)/(84987760*(b*c - a*d)^11*(a + b*x)^16), integration_var = x, mistery_val = 11),
#     (integrand = (c + d*x)^15/(a + b*x)^28, result = -((c + d*x)^16/(27*(b*c - a*d)*(a + b*x)^27)) + (11*d*(c + d*x)^16)/(702*(b*c - a*d)^2*(a + b*x)^26) - (11*d^2*(c + d*x)^16)/(1755*(b*c - a*d)^3*(a + b*x)^25) + (11*d^3*(c + d*x)^16)/(4680*(b*c - a*d)^4*(a + b*x)^24) - (11*d^4*(c + d*x)^16)/(13455*(b*c - a*d)^5*(a + b*x)^23) + (7*d^5*(c + d*x)^16)/(26910*(b*c - a*d)^6*(a + b*x)^22) - (d^6*(c + d*x)^16)/(13455*(b*c - a*d)^7*(a + b*x)^21) + (d^7*(c + d*x)^16)/(53820*(b*c - a*d)^8*(a + b*x)^20) - (d^8*(c + d*x)^16)/(255645*(b*c - a*d)^9*(a + b*x)^19) + (d^9*(c + d*x)^16)/(1533870*(b*c - a*d)^10*(a + b*x)^18) - (d^10*(c + d*x)^16)/(13037895*(b*c - a*d)^11*(a + b*x)^17) + (d^11*(c + d*x)^16)/(208606320*(b*c - a*d)^12*(a + b*x)^16), integration_var = x, mistery_val = 12),
# 
#     (integrand = (c + d*x)^15/(a + b*x)^29, result = -(b*c - a*d)^15/(28*b^16*(a + b*x)^28) - (5*d*(b*c - a*d)^14)/(9*b^16*(a + b*x)^27) - (105*d^2*(b*c - a*d)^13)/(26*b^16*(a + b*x)^26) - (91*d^3*(b*c - a*d)^12)/(5*b^16*(a + b*x)^25) - (455*d^4*(b*c - a*d)^11)/(8*b^16*(a + b*x)^24) - (3003*d^5*(b*c - a*d)^10)/(23*b^16*(a + b*x)^23) - (455*d^6*(b*c - a*d)^9)/(2*b^16*(a + b*x)^22) - (2145*d^7*(b*c - a*d)^8)/(7*b^16*(a + b*x)^21) - (1287*d^8*(b*c - a*d)^7)/(4*b^16*(a + b*x)^20) - (5005*d^9*(b*c - a*d)^6)/(19*b^16*(a + b*x)^19) - (1001*d^10*(b*c - a*d)^5)/(6*b^16*(a + b*x)^18) - (1365*d^11*(b*c - a*d)^4)/(17*b^16*(a + b*x)^17) - (455*d^12*(b*c - a*d)^3)/(16*b^16*(a + b*x)^16) - (7*d^13*(b*c - a*d)^2)/(b^16*(a + b*x)^15) - (15*d^14*(b*c - a*d))/(14*b^16*(a + b*x)^14) - d^15/(13*b^16*(a + b*x)^13), integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^15/(a + b*x)^30, result = -(b*c - a*d)^15/(29*b^16*(a + b*x)^29) - (15*d*(b*c - a*d)^14)/(28*b^16*(a + b*x)^28) - (35*d^2*(b*c - a*d)^13)/(9*b^16*(a + b*x)^27) - (35*d^3*(b*c - a*d)^12)/(2*b^16*(a + b*x)^26) - (273*d^4*(b*c - a*d)^11)/(5*b^16*(a + b*x)^25) - (1001*d^5*(b*c - a*d)^10)/(8*b^16*(a + b*x)^24) - (5005*d^6*(b*c - a*d)^9)/(23*b^16*(a + b*x)^23) - (585*d^7*(b*c - a*d)^8)/(2*b^16*(a + b*x)^22) - (2145*d^8*(b*c - a*d)^7)/(7*b^16*(a + b*x)^21) - (1001*d^9*(b*c - a*d)^6)/(4*b^16*(a + b*x)^20) - (3003*d^10*(b*c - a*d)^5)/(19*b^16*(a + b*x)^19) - (455*d^11*(b*c - a*d)^4)/(6*b^16*(a + b*x)^18) - (455*d^12*(b*c - a*d)^3)/(17*b^16*(a + b*x)^17) - (105*d^13*(b*c - a*d)^2)/(16*b^16*(a + b*x)^16) - (d^14*(b*c - a*d))/(b^16*(a + b*x)^15) - d^15/(14*b^16*(a + b*x)^14), integration_var = x, mistery_val = 2),
# # {(c + d*x)^15/(a + b*x)^31, x, 2, -(b*c - a*d)^15/(30*b^16*(a + b*x)^30) - (15*d*(b*c - a*d)^14)/(29*b^16*(a + b*x)^29) - (15*d^2*(b*c - a*d)^13)/(4*b^16*(a + b*x)^28) - (455*d^3*(b*c - a*d)^12)/(27*b^16*(a + b*x)^27) - (105*d^4*(b*c - a*d)^11)/(2*b^16*(a + b*x)^26) - (3003*d^5*(b*c - a*d)^10)/(25*b^16*(a + b*x)^25) - (5005*d^6*(b*c - a*d)^9)/(24*b^16*(a + b*x)^24) - (6435*d^7*(b*c - a*d)^8)/(23*b^16*(a + b*x)^23) - (585*d^8*(b*c - a*d)^7)/(2*b^16*(a + b*x)^22) - (715*d^9*(b*c - a*d)^6)/(3*b^16*(a + b*x)^21) - (3003*d^10*(b*c - a*d)^5)/(20*b^16*(a + b*x)^20) - (1365*d^11*(b*c - a*d)^4)/(19*b^16*(a + b*x)^19) - (455*d^12*(b*c - a*d)^3)/(18*b^16*(a + b*x)^18) - (105*d^13*(b*c - a*d)^2)/(17*b^16*(a + b*x)^17) - (15*d^14*(b*c - a*d))/(16*b^16*(a + b*x)^16) - d^15/(15*b^16*(a + b*x)^15)} *)
# 
# 
# # ::Subsubsection::Closed::
# # n<0
# 
# 
#     (integrand = (a + b*x)^5/(c + d*x), result = (b*(b*c - a*d)^4*x)/d^5 - ((b*c - a*d)^3*(a + b*x)^2)/(2*d^4) + ((b*c - a*d)^2*(a + b*x)^3)/(3*d^3) - ((b*c - a*d)*(a + b*x)^4)/(4*d^2) + (a + b*x)^5/(5*d) - ((b*c - a*d)^5*log(c + d*x))/d^6, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^4/(c + d*x), result = -((b*(b*c - a*d)^3*x)/d^4) + ((b*c - a*d)^2*(a + b*x)^2)/(2*d^3) - ((b*c - a*d)*(a + b*x)^3)/(3*d^2) + (a + b*x)^4/(4*d) + ((b*c - a*d)^4*log(c + d*x))/d^5, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^3/(c + d*x), result = (b*(b*c - a*d)^2*x)/d^3 - ((b*c - a*d)*(a + b*x)^2)/(2*d^2) + (a + b*x)^3/(3*d) - ((b*c - a*d)^3*log(c + d*x))/d^4, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^2/(c + d*x), result = -((b*(b*c - a*d)*x)/d^2) + (a + b*x)^2/(2*d) + ((b*c - a*d)^2*log(c + d*x))/d^3, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^1/(c + d*x), result = (b*x)/d - ((b*c - a*d)*log(c + d*x))/d^2, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^0/(c + d*x), result = log(c + d*x)/d, integration_var = x, mistery_val = 1),
#     (integrand = (a + b*x)^(-1)/(c + d*x), result = log(a + b*x)/(b*c - a*d) - log(c + d*x)/(b*c - a*d), integration_var = x, mistery_val = 3),
#     (integrand = (a + b*x)^(-2)/(c + d*x), result = -(1/((b*c - a*d)*(a + b*x))) - (d*log(a + b*x))/(b*c - a*d)^2 + (d*log(c + d*x))/(b*c - a*d)^2, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^(-3)/(c + d*x), result = -(1/(2*(b*c - a*d)*(a + b*x)^2)) + d/((b*c - a*d)^2*(a + b*x)) + (d^2*log(a + b*x))/(b*c - a*d)^3 - (d^2*log(c + d*x))/(b*c - a*d)^3, integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = (a + b*x)^5/(c + d*x)^2, result = -((10*b^2*(b*c - a*d)^3*x)/d^5) + (b*c - a*d)^5/(d^6*(c + d*x)) + (5*b^3*(b*c - a*d)^2*(c + d*x)^2)/d^6 - (5*b^4*(b*c - a*d)*(c + d*x)^3)/(3*d^6) + (b^5*(c + d*x)^4)/(4*d^6) + (5*b*(b*c - a*d)^4*log(c + d*x))/d^6, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^4/(c + d*x)^2, result = (6*b^2*(b*c - a*d)^2*x)/d^4 - (b*c - a*d)^4/(d^5*(c + d*x)) - (2*b^3*(b*c - a*d)*(c + d*x)^2)/d^5 + (b^4*(c + d*x)^3)/(3*d^5) - (4*b*(b*c - a*d)^3*log(c + d*x))/d^5, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^3/(c + d*x)^2, result = -((b^2*(2*b*c - 3*a*d)*x)/d^3) + (b^3*x^2)/(2*d^2) + (b*c - a*d)^3/(d^4*(c + d*x)) + (3*b*(b*c - a*d)^2*log(c + d*x))/d^4, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^2/(c + d*x)^2, result = (b^2*x)/d^2 - (b*c - a*d)^2/(d^3*(c + d*x)) - (2*b*(b*c - a*d)*log(c + d*x))/d^3, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^1/(c + d*x)^2, result = (b*c - a*d)/(d^2*(c + d*x)) + (b*log(c + d*x))/d^2, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^0/(c + d*x)^2, result = -(1/(d*(c + d*x))), integration_var = x, mistery_val = 1),
#     (integrand = (a + b*x)^(-1)/(c + d*x)^2, result = 1/((b*c - a*d)*(c + d*x)) + (b*log(a + b*x))/(b*c - a*d)^2 - (b*log(c + d*x))/(b*c - a*d)^2, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^(-2)/(c + d*x)^2, result = -(b/((b*c - a*d)^2*(a + b*x))) - d/((b*c - a*d)^2*(c + d*x)) - (2*b*d*log(a + b*x))/(b*c - a*d)^3 + (2*b*d*log(c + d*x))/(b*c - a*d)^3, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^(-3)/(c + d*x)^2, result = -(b/(2*(b*c - a*d)^2*(a + b*x)^2)) + (2*b*d)/((b*c - a*d)^3*(a + b*x)) + d^2/((b*c - a*d)^3*(c + d*x)) + (3*b*d^2*log(a + b*x))/(b*c - a*d)^4 - (3*b*d^2*log(c + d*x))/(b*c - a*d)^4, integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = (a + b*x)^6/(c + d*x)^3, result = -((20*b^3*(b*c - a*d)^3*x)/d^6) - (b*c - a*d)^6/(2*d^7*(c + d*x)^2) + (6*b*(b*c - a*d)^5)/(d^7*(c + d*x)) + (15*b^4*(b*c - a*d)^2*(c + d*x)^2)/(2*d^7) - (2*b^5*(b*c - a*d)*(c + d*x)^3)/d^7 + (b^6*(c + d*x)^4)/(4*d^7) + (15*b^2*(b*c - a*d)^4*log(c + d*x))/d^7, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^5/(c + d*x)^3, result = (10*b^3*(b*c - a*d)^2*x)/d^5 + (b*c - a*d)^5/(2*d^6*(c + d*x)^2) - (5*b*(b*c - a*d)^4)/(d^6*(c + d*x)) - (5*b^4*(b*c - a*d)*(c + d*x)^2)/(2*d^6) + (b^5*(c + d*x)^3)/(3*d^6) - (10*b^2*(b*c - a*d)^3*log(c + d*x))/d^6, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^4/(c + d*x)^3, result = -((b^3*(3*b*c - 4*a*d)*x)/d^4) + (b^4*x^2)/(2*d^3) - (b*c - a*d)^4/(2*d^5*(c + d*x)^2) + (4*b*(b*c - a*d)^3)/(d^5*(c + d*x)) + (6*b^2*(b*c - a*d)^2*log(c + d*x))/d^5, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^3/(c + d*x)^3, result = (b^3*x)/d^3 + (b*c - a*d)^3/(2*d^4*(c + d*x)^2) - (3*b*(b*c - a*d)^2)/(d^4*(c + d*x)) - (3*b^2*(b*c - a*d)*log(c + d*x))/d^4, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^2/(c + d*x)^3, result = -((b*c - a*d)^2/(2*d^3*(c + d*x)^2)) + (2*b*(b*c - a*d))/(d^3*(c + d*x)) + (b^2*log(c + d*x))/d^3, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^1/(c + d*x)^3, result = (a + b*x)^2/(2*(b*c - a*d)*(c + d*x)^2), integration_var = x, mistery_val = 1),
#     (integrand = (a + b*x)^0/(c + d*x)^3, result = -(1/(2*d*(c + d*x)^2)), integration_var = x, mistery_val = 1),
#     (integrand = (a + b*x)^(-1)/(c + d*x)^3, result = 1/(2*(b*c - a*d)*(c + d*x)^2) + b/((b*c - a*d)^2*(c + d*x)) + (b^2*log(a + b*x))/(b*c - a*d)^3 - (b^2*log(c + d*x))/(b*c - a*d)^3, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^(-2)/(c + d*x)^3, result = -(b^2/((b*c - a*d)^3*(a + b*x))) - d/(2*(b*c - a*d)^2*(c + d*x)^2) - (2*b*d)/((b*c - a*d)^3*(c + d*x)) - (3*b^2*d*log(a + b*x))/(b*c - a*d)^4 + (3*b^2*d*log(c + d*x))/(b*c - a*d)^4, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^(-3)/(c + d*x)^3, result = -(b^2/(2*(b*c - a*d)^3*(a + b*x)^2)) + (3*b^2*d)/((b*c - a*d)^4*(a + b*x)) + d^2/(2*(b*c - a*d)^3*(c + d*x)^2) + (3*b*d^2)/((b*c - a*d)^4*(c + d*x)) + (6*b^2*d^2*log(a + b*x))/(b*c - a*d)^5 - (6*b^2*d^2*log(c + d*x))/(b*c - a*d)^5, integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = (a + b*x)^9/(c + d*x)^8, result = -((b^8*(8*b*c - 9*a*d)*x)/d^9) + (b^9*x^2)/(2*d^8) + (b*c - a*d)^9/(7*d^10*(c + d*x)^7) - (3*b*(b*c - a*d)^8)/(2*d^10*(c + d*x)^6) + (36*b^2*(b*c - a*d)^7)/(5*d^10*(c + d*x)^5) - (21*b^3*(b*c - a*d)^6)/(d^10*(c + d*x)^4) + (42*b^4*(b*c - a*d)^5)/(d^10*(c + d*x)^3) - (63*b^5*(b*c - a*d)^4)/(d^10*(c + d*x)^2) + (84*b^6*(b*c - a*d)^3)/(d^10*(c + d*x)) + (36*b^7*(b*c - a*d)^2*log(c + d*x))/d^10, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^8/(c + d*x)^8, result = (b^8*x)/d^8 - (b*c - a*d)^8/(7*d^9*(c + d*x)^7) + (4*b*(b*c - a*d)^7)/(3*d^9*(c + d*x)^6) - (28*b^2*(b*c - a*d)^6)/(5*d^9*(c + d*x)^5) + (14*b^3*(b*c - a*d)^5)/(d^9*(c + d*x)^4) - (70*b^4*(b*c - a*d)^4)/(3*d^9*(c + d*x)^3) + (28*b^5*(b*c - a*d)^3)/(d^9*(c + d*x)^2) - (28*b^6*(b*c - a*d)^2)/(d^9*(c + d*x)) - (8*b^7*(b*c - a*d)*log(c + d*x))/d^9, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^7/(c + d*x)^8, result = (b*c - a*d)^7/(7*d^8*(c + d*x)^7) - (7*b*(b*c - a*d)^6)/(6*d^8*(c + d*x)^6) + (21*b^2*(b*c - a*d)^5)/(5*d^8*(c + d*x)^5) - (35*b^3*(b*c - a*d)^4)/(4*d^8*(c + d*x)^4) + (35*b^4*(b*c - a*d)^3)/(3*d^8*(c + d*x)^3) - (21*b^5*(b*c - a*d)^2)/(2*d^8*(c + d*x)^2) + (7*b^6*(b*c - a*d))/(d^8*(c + d*x)) + (b^7*log(c + d*x))/d^8, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^6/(c + d*x)^8, result = (a + b*x)^7/(7*(b*c - a*d)*(c + d*x)^7), integration_var = x, mistery_val = 1),
#     (integrand = (a + b*x)^5/(c + d*x)^8, result = (a + b*x)^6/(7*(b*c - a*d)*(c + d*x)^7) + (b*(a + b*x)^6)/(42*(b*c - a*d)^2*(c + d*x)^6), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^4/(c + d*x)^8, result = (a + b*x)^5/(7*(b*c - a*d)*(c + d*x)^7) + (b*(a + b*x)^5)/(21*(b*c - a*d)^2*(c + d*x)^6) + (b^2*(a + b*x)^5)/(105*(b*c - a*d)^3*(c + d*x)^5), integration_var = x, mistery_val = 3),
#     (integrand = (a + b*x)^3/(c + d*x)^8, result = (b*c - a*d)^3/(7*d^4*(c + d*x)^7) - (b*(b*c - a*d)^2)/(2*d^4*(c + d*x)^6) + (3*b^2*(b*c - a*d))/(5*d^4*(c + d*x)^5) - b^3/(4*d^4*(c + d*x)^4), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^2/(c + d*x)^8, result = -((b*c - a*d)^2/(7*d^3*(c + d*x)^7)) + (b*(b*c - a*d))/(3*d^3*(c + d*x)^6) - b^2/(5*d^3*(c + d*x)^5), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^1/(c + d*x)^8, result = (b*c - a*d)/(7*d^2*(c + d*x)^7) - b/(6*d^2*(c + d*x)^6), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^0/(c + d*x)^8, result = -(1/(7*d*(c + d*x)^7)), integration_var = x, mistery_val = 1),
#     (integrand = (a + b*x)^(-1)/(c + d*x)^8, result = 1/(7*(b*c - a*d)*(c + d*x)^7) + b/(6*(b*c - a*d)^2*(c + d*x)^6) + b^2/(5*(b*c - a*d)^3*(c + d*x)^5) + b^3/(4*(b*c - a*d)^4*(c + d*x)^4) + b^4/(3*(b*c - a*d)^5*(c + d*x)^3) + b^5/(2*(b*c - a*d)^6*(c + d*x)^2) + b^6/((b*c - a*d)^7*(c + d*x)) + (b^7*log(a + b*x))/(b*c - a*d)^8 - (b^7*log(c + d*x))/(b*c - a*d)^8, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^(-2)/(c + d*x)^8, result = -(b^7/((b*c - a*d)^8*(a + b*x))) - d/(7*(b*c - a*d)^2*(c + d*x)^7) - (b*d)/(3*(b*c - a*d)^3*(c + d*x)^6) - (3*b^2*d)/(5*(b*c - a*d)^4*(c + d*x)^5) - (b^3*d)/((b*c - a*d)^5*(c + d*x)^4) - (5*b^4*d)/(3*(b*c - a*d)^6*(c + d*x)^3) - (3*b^5*d)/((b*c - a*d)^7*(c + d*x)^2) - (7*b^6*d)/((b*c - a*d)^8*(c + d*x)) - (8*b^7*d*log(a + b*x))/(b*c - a*d)^9 + (8*b^7*d*log(c + d*x))/(b*c - a*d)^9, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^(-3)/(c + d*x)^8, result = -(b^7/(2*(b*c - a*d)^8*(a + b*x)^2)) + (8*b^7*d)/((b*c - a*d)^9*(a + b*x)) + d^2/(7*(b*c - a*d)^3*(c + d*x)^7) + (b*d^2)/(2*(b*c - a*d)^4*(c + d*x)^6) + (6*b^2*d^2)/(5*(b*c - a*d)^5*(c + d*x)^5) + (5*b^3*d^2)/(2*(b*c - a*d)^6*(c + d*x)^4) + (5*b^4*d^2)/((b*c - a*d)^7*(c + d*x)^3) + (21*b^5*d^2)/(2*(b*c - a*d)^8*(c + d*x)^2) + (28*b^6*d^2)/((b*c - a*d)^9*(c + d*x)) + (36*b^7*d^2*log(a + b*x))/(b*c - a*d)^10 - (36*b^7*d^2*log(c + d*x))/(b*c - a*d)^10, integration_var = x, mistery_val = 2),
# 
# 
# # ::Subsection::Closed::
# # Integrands of the form (a+b x)^m (c+d x)^(n/2)
# 
# 
# # ::Subsubsection::Closed::
# # n>0
# 
# 
#     (integrand = (a + b*x)^5*(c + d*x)^(1//2), result = -((2*(b*c - a*d)^5*(c + d*x)^(3//2))/(3*d^6)) + (2*b*(b*c - a*d)^4*(c + d*x)^(5//2))/d^6 - (20*b^2*(b*c - a*d)^3*(c + d*x)^(7//2))/(7*d^6) + (20*b^3*(b*c - a*d)^2*(c + d*x)^(9//2))/(9*d^6) - (10*b^4*(b*c - a*d)*(c + d*x)^(11//2))/(11*d^6) + (2*b^5*(c + d*x)^(13//2))/(13*d^6), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^4*(c + d*x)^(1//2), result = (2*(b*c - a*d)^4*(c + d*x)^(3//2))/(3*d^5) - (8*b*(b*c - a*d)^3*(c + d*x)^(5//2))/(5*d^5) + (12*b^2*(b*c - a*d)^2*(c + d*x)^(7//2))/(7*d^5) - (8*b^3*(b*c - a*d)*(c + d*x)^(9//2))/(9*d^5) + (2*b^4*(c + d*x)^(11//2))/(11*d^5), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^3*(c + d*x)^(1//2), result = -((2*(b*c - a*d)^3*(c + d*x)^(3//2))/(3*d^4)) + (6*b*(b*c - a*d)^2*(c + d*x)^(5//2))/(5*d^4) - (6*b^2*(b*c - a*d)*(c + d*x)^(7//2))/(7*d^4) + (2*b^3*(c + d*x)^(9//2))/(9*d^4), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^2*(c + d*x)^(1//2), result = (2*(b*c - a*d)^2*(c + d*x)^(3//2))/(3*d^3) - (4*b*(b*c - a*d)*(c + d*x)^(5//2))/(5*d^3) + (2*b^2*(c + d*x)^(7//2))/(7*d^3), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^1*(c + d*x)^(1//2), result = -((2*(b*c - a*d)*(c + d*x)^(3//2))/(3*d^2)) + (2*b*(c + d*x)^(5//2))/(5*d^2), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^0*(c + d*x)^(1//2), result = (2*(c + d*x)^(3//2))/(3*d), integration_var = x, mistery_val = 1),
#     (integrand = (c + d*x)^(1//2)/(a + b*x)^1, result = (2*sqrt(c + d*x))/b - (2*sqrt(b*c - a*d)*atanh((sqrt(b)*sqrt(c + d*x))/sqrt(b*c - a*d)))/b^(3//2), integration_var = x, mistery_val = 3),
#     (integrand = (c + d*x)^(1//2)/(a + b*x)^2, result = -(sqrt(c + d*x)/(b*(a + b*x))) - (d*atanh((sqrt(b)*sqrt(c + d*x))/sqrt(b*c - a*d)))/(b^(3//2)*sqrt(b*c - a*d)), integration_var = x, mistery_val = 3),
#     (integrand = (c + d*x)^(1//2)/(a + b*x)^3, result = -(sqrt(c + d*x)/(2*b*(a + b*x)^2)) - (d*sqrt(c + d*x))/(4*b*(b*c - a*d)*(a + b*x)) + (d^2*atanh((sqrt(b)*sqrt(c + d*x))/sqrt(b*c - a*d)))/(4*b^(3//2)*(b*c - a*d)^(3//2)), integration_var = x, mistery_val = 4),
#     (integrand = (c + d*x)^(1//2)/(a + b*x)^4, result = -(sqrt(c + d*x)/(3*b*(a + b*x)^3)) - (d*sqrt(c + d*x))/(12*b*(b*c - a*d)*(a + b*x)^2) + (d^2*sqrt(c + d*x))/(8*b*(b*c - a*d)^2*(a + b*x)) - (d^3*atanh((sqrt(b)*sqrt(c + d*x))/sqrt(b*c - a*d)))/(8*b^(3//2)*(b*c - a*d)^(5//2)), integration_var = x, mistery_val = 5),
#     (integrand = (c + d*x)^(1//2)/(a + b*x)^5, result = -(sqrt(c + d*x)/(4*b*(a + b*x)^4)) - (d*sqrt(c + d*x))/(24*b*(b*c - a*d)*(a + b*x)^3) + (5*d^2*sqrt(c + d*x))/(96*b*(b*c - a*d)^2*(a + b*x)^2) - (5*d^3*sqrt(c + d*x))/(64*b*(b*c - a*d)^3*(a + b*x)) + (5*d^4*atanh((sqrt(b)*sqrt(c + d*x))/sqrt(b*c - a*d)))/(64*b^(3//2)*(b*c - a*d)^(7//2)), integration_var = x, mistery_val = 6),
#     (integrand = (c + d*x)^(1//2)/(a + b*x)^6, result = -(sqrt(c + d*x)/(5*b*(a + b*x)^5)) - (d*sqrt(c + d*x))/(40*b*(b*c - a*d)*(a + b*x)^4) + (7*d^2*sqrt(c + d*x))/(240*b*(b*c - a*d)^2*(a + b*x)^3) - (7*d^3*sqrt(c + d*x))/(192*b*(b*c - a*d)^3*(a + b*x)^2) + (7*d^4*sqrt(c + d*x))/(128*b*(b*c - a*d)^4*(a + b*x)) - (7*d^5*atanh((sqrt(b)*sqrt(c + d*x))/sqrt(b*c - a*d)))/(128*b^(3//2)*(b*c - a*d)^(9//2)), integration_var = x, mistery_val = 7),
# 
# 
#     (integrand = (a + b*x)^5*(c + d*x)^(3//2), result = -((2*(b*c - a*d)^5*(c + d*x)^(5//2))/(5*d^6)) + (10*b*(b*c - a*d)^4*(c + d*x)^(7//2))/(7*d^6) - (20*b^2*(b*c - a*d)^3*(c + d*x)^(9//2))/(9*d^6) + (20*b^3*(b*c - a*d)^2*(c + d*x)^(11//2))/(11*d^6) - (10*b^4*(b*c - a*d)*(c + d*x)^(13//2))/(13*d^6) + (2*b^5*(c + d*x)^(15//2))/(15*d^6), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^4*(c + d*x)^(3//2), result = (2*(b*c - a*d)^4*(c + d*x)^(5//2))/(5*d^5) - (8*b*(b*c - a*d)^3*(c + d*x)^(7//2))/(7*d^5) + (4*b^2*(b*c - a*d)^2*(c + d*x)^(9//2))/(3*d^5) - (8*b^3*(b*c - a*d)*(c + d*x)^(11//2))/(11*d^5) + (2*b^4*(c + d*x)^(13//2))/(13*d^5), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^3*(c + d*x)^(3//2), result = -((2*(b*c - a*d)^3*(c + d*x)^(5//2))/(5*d^4)) + (6*b*(b*c - a*d)^2*(c + d*x)^(7//2))/(7*d^4) - (2*b^2*(b*c - a*d)*(c + d*x)^(9//2))/(3*d^4) + (2*b^3*(c + d*x)^(11//2))/(11*d^4), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^2*(c + d*x)^(3//2), result = (2*(b*c - a*d)^2*(c + d*x)^(5//2))/(5*d^3) - (4*b*(b*c - a*d)*(c + d*x)^(7//2))/(7*d^3) + (2*b^2*(c + d*x)^(9//2))/(9*d^3), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^1*(c + d*x)^(3//2), result = -((2*(b*c - a*d)*(c + d*x)^(5//2))/(5*d^2)) + (2*b*(c + d*x)^(7//2))/(7*d^2), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^0*(c + d*x)^(3//2), result = (2*(c + d*x)^(5//2))/(5*d), integration_var = x, mistery_val = 1),
#     (integrand = (c + d*x)^(3//2)/(a + b*x)^1, result = (2*(b*c - a*d)*sqrt(c + d*x))/b^2 + (2*(c + d*x)^(3//2))/(3*b) - (2*(b*c - a*d)^(3//2)*atanh((sqrt(b)*sqrt(c + d*x))/sqrt(b*c - a*d)))/b^(5//2), integration_var = x, mistery_val = 4),
#     (integrand = (c + d*x)^(3//2)/(a + b*x)^2, result = (3*d*sqrt(c + d*x))/b^2 - (c + d*x)^(3//2)/(b*(a + b*x)) - (3*d*sqrt(b*c - a*d)*atanh((sqrt(b)*sqrt(c + d*x))/sqrt(b*c - a*d)))/b^(5//2), integration_var = x, mistery_val = 4),
#     (integrand = (c + d*x)^(3//2)/(a + b*x)^3, result = -((3*d*sqrt(c + d*x))/(4*b^2*(a + b*x))) - (c + d*x)^(3//2)/(2*b*(a + b*x)^2) - (3*d^2*atanh((sqrt(b)*sqrt(c + d*x))/sqrt(b*c - a*d)))/(4*b^(5//2)*sqrt(b*c - a*d)), integration_var = x, mistery_val = 4),
#     (integrand = (c + d*x)^(3//2)/(a + b*x)^4, result = -((d*sqrt(c + d*x))/(4*b^2*(a + b*x)^2)) - (d^2*sqrt(c + d*x))/(8*b^2*(b*c - a*d)*(a + b*x)) - (c + d*x)^(3//2)/(3*b*(a + b*x)^3) + (d^3*atanh((sqrt(b)*sqrt(c + d*x))/sqrt(b*c - a*d)))/(8*b^(5//2)*(b*c - a*d)^(3//2)), integration_var = x, mistery_val = 5),
#     (integrand = (c + d*x)^(3//2)/(a + b*x)^5, result = -((d*sqrt(c + d*x))/(8*b^2*(a + b*x)^3)) - (d^2*sqrt(c + d*x))/(32*b^2*(b*c - a*d)*(a + b*x)^2) + (3*d^3*sqrt(c + d*x))/(64*b^2*(b*c - a*d)^2*(a + b*x)) - (c + d*x)^(3//2)/(4*b*(a + b*x)^4) - (3*d^4*atanh((sqrt(b)*sqrt(c + d*x))/sqrt(b*c - a*d)))/(64*b^(5//2)*(b*c - a*d)^(5//2)), integration_var = x, mistery_val = 6),
#     (integrand = (c + d*x)^(3//2)/(a + b*x)^6, result = -((3*d*sqrt(c + d*x))/(40*b^2*(a + b*x)^4)) - (d^2*sqrt(c + d*x))/(80*b^2*(b*c - a*d)*(a + b*x)^3) + (d^3*sqrt(c + d*x))/(64*b^2*(b*c - a*d)^2*(a + b*x)^2) - (3*d^4*sqrt(c + d*x))/(128*b^2*(b*c - a*d)^3*(a + b*x)) - (c + d*x)^(3//2)/(5*b*(a + b*x)^5) + (3*d^5*atanh((sqrt(b)*sqrt(c + d*x))/sqrt(b*c - a*d)))/(128*b^(5//2)*(b*c - a*d)^(7//2)), integration_var = x, mistery_val = 7),
# 
# 
#     (integrand = (a + b*x)^5*(c + d*x)^(5//2), result = -((2*(b*c - a*d)^5*(c + d*x)^(7//2))/(7*d^6)) + (10*b*(b*c - a*d)^4*(c + d*x)^(9//2))/(9*d^6) - (20*b^2*(b*c - a*d)^3*(c + d*x)^(11//2))/(11*d^6) + (20*b^3*(b*c - a*d)^2*(c + d*x)^(13//2))/(13*d^6) - (2*b^4*(b*c - a*d)*(c + d*x)^(15//2))/(3*d^6) + (2*b^5*(c + d*x)^(17//2))/(17*d^6), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^4*(c + d*x)^(5//2), result = (2*(b*c - a*d)^4*(c + d*x)^(7//2))/(7*d^5) - (8*b*(b*c - a*d)^3*(c + d*x)^(9//2))/(9*d^5) + (12*b^2*(b*c - a*d)^2*(c + d*x)^(11//2))/(11*d^5) - (8*b^3*(b*c - a*d)*(c + d*x)^(13//2))/(13*d^5) + (2*b^4*(c + d*x)^(15//2))/(15*d^5), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^3*(c + d*x)^(5//2), result = -((2*(b*c - a*d)^3*(c + d*x)^(7//2))/(7*d^4)) + (2*b*(b*c - a*d)^2*(c + d*x)^(9//2))/(3*d^4) - (6*b^2*(b*c - a*d)*(c + d*x)^(11//2))/(11*d^4) + (2*b^3*(c + d*x)^(13//2))/(13*d^4), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^2*(c + d*x)^(5//2), result = (2*(b*c - a*d)^2*(c + d*x)^(7//2))/(7*d^3) - (4*b*(b*c - a*d)*(c + d*x)^(9//2))/(9*d^3) + (2*b^2*(c + d*x)^(11//2))/(11*d^3), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^1*(c + d*x)^(5//2), result = -((2*(b*c - a*d)*(c + d*x)^(7//2))/(7*d^2)) + (2*b*(c + d*x)^(9//2))/(9*d^2), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^0*(c + d*x)^(5//2), result = (2*(c + d*x)^(7//2))/(7*d), integration_var = x, mistery_val = 1),
#     (integrand = (c + d*x)^(5//2)/(a + b*x)^1, result = (2*(b*c - a*d)^2*sqrt(c + d*x))/b^3 + (2*(b*c - a*d)*(c + d*x)^(3//2))/(3*b^2) + (2*(c + d*x)^(5//2))/(5*b) - (2*(b*c - a*d)^(5//2)*atanh((sqrt(b)*sqrt(c + d*x))/sqrt(b*c - a*d)))/b^(7//2), integration_var = x, mistery_val = 5),
#     (integrand = (c + d*x)^(5//2)/(a + b*x)^2, result = (5*d*(b*c - a*d)*sqrt(c + d*x))/b^3 + (5*d*(c + d*x)^(3//2))/(3*b^2) - (c + d*x)^(5//2)/(b*(a + b*x)) - (5*d*(b*c - a*d)^(3//2)*atanh((sqrt(b)*sqrt(c + d*x))/sqrt(b*c - a*d)))/b^(7//2), integration_var = x, mistery_val = 5),
#     (integrand = (c + d*x)^(5//2)/(a + b*x)^3, result = (15*d^2*sqrt(c + d*x))/(4*b^3) - (5*d*(c + d*x)^(3//2))/(4*b^2*(a + b*x)) - (c + d*x)^(5//2)/(2*b*(a + b*x)^2) - (15*d^2*sqrt(b*c - a*d)*atanh((sqrt(b)*sqrt(c + d*x))/sqrt(b*c - a*d)))/(4*b^(7//2)), integration_var = x, mistery_val = 5),
#     (integrand = (c + d*x)^(5//2)/(a + b*x)^4, result = -((5*d^2*sqrt(c + d*x))/(8*b^3*(a + b*x))) - (5*d*(c + d*x)^(3//2))/(12*b^2*(a + b*x)^2) - (c + d*x)^(5//2)/(3*b*(a + b*x)^3) - (5*d^3*atanh((sqrt(b)*sqrt(c + d*x))/sqrt(b*c - a*d)))/(8*b^(7//2)*sqrt(b*c - a*d)), integration_var = x, mistery_val = 5),
#     (integrand = (c + d*x)^(5//2)/(a + b*x)^5, result = -((5*d^2*sqrt(c + d*x))/(32*b^3*(a + b*x)^2)) - (5*d^3*sqrt(c + d*x))/(64*b^3*(b*c - a*d)*(a + b*x)) - (5*d*(c + d*x)^(3//2))/(24*b^2*(a + b*x)^3) - (c + d*x)^(5//2)/(4*b*(a + b*x)^4) + (5*d^4*atanh((sqrt(b)*sqrt(c + d*x))/sqrt(b*c - a*d)))/(64*b^(7//2)*(b*c - a*d)^(3//2)), integration_var = x, mistery_val = 6),
#     (integrand = (c + d*x)^(5//2)/(a + b*x)^6, result = -((d^2*sqrt(c + d*x))/(16*b^3*(a + b*x)^3)) - (d^3*sqrt(c + d*x))/(64*b^3*(b*c - a*d)*(a + b*x)^2) + (3*d^4*sqrt(c + d*x))/(128*b^3*(b*c - a*d)^2*(a + b*x)) - (d*(c + d*x)^(3//2))/(8*b^2*(a + b*x)^4) - (c + d*x)^(5//2)/(5*b*(a + b*x)^5) - (3*d^5*atanh((sqrt(b)*sqrt(c + d*x))/sqrt(b*c - a*d)))/(128*b^(7//2)*(b*c - a*d)^(5//2)), integration_var = x, mistery_val = 7),
# 
# 
#     (integrand = sqrt(-1 + x)/(1 + x)^2, result = -(sqrt(-1 + x)/(1 + x)) + atan(sqrt(-1 + x)/sqrt(2))/sqrt(2), integration_var = x, mistery_val = 3),
#     (integrand = sqrt(-1 + x)/(1 + x)^3, result = -(sqrt(-1 + x)/(2*(1 + x)^2)) + sqrt(-1 + x)/(8*(1 + x)) + atan(sqrt(-1 + x)/sqrt(2))/(8*sqrt(2)), integration_var = x, mistery_val = 4),
# 
# 
# # ::Subsubsection::Closed::
# # n<0
# 
# 
#     (integrand = (a + b*x)^5/(c + d*x)^(1//2), result = -((2*(b*c - a*d)^5*sqrt(c + d*x))/d^6) + (10*b*(b*c - a*d)^4*(c + d*x)^(3//2))/(3*d^6) - (4*b^2*(b*c - a*d)^3*(c + d*x)^(5//2))/d^6 + (20*b^3*(b*c - a*d)^2*(c + d*x)^(7//2))/(7*d^6) - (10*b^4*(b*c - a*d)*(c + d*x)^(9//2))/(9*d^6) + (2*b^5*(c + d*x)^(11//2))/(11*d^6), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^4/(c + d*x)^(1//2), result = (2*(b*c - a*d)^4*sqrt(c + d*x))/d^5 - (8*b*(b*c - a*d)^3*(c + d*x)^(3//2))/(3*d^5) + (12*b^2*(b*c - a*d)^2*(c + d*x)^(5//2))/(5*d^5) - (8*b^3*(b*c - a*d)*(c + d*x)^(7//2))/(7*d^5) + (2*b^4*(c + d*x)^(9//2))/(9*d^5), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^3/(c + d*x)^(1//2), result = -((2*(b*c - a*d)^3*sqrt(c + d*x))/d^4) + (2*b*(b*c - a*d)^2*(c + d*x)^(3//2))/d^4 - (6*b^2*(b*c - a*d)*(c + d*x)^(5//2))/(5*d^4) + (2*b^3*(c + d*x)^(7//2))/(7*d^4), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^2/(c + d*x)^(1//2), result = (2*(b*c - a*d)^2*sqrt(c + d*x))/d^3 - (4*b*(b*c - a*d)*(c + d*x)^(3//2))/(3*d^3) + (2*b^2*(c + d*x)^(5//2))/(5*d^3), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^1/(c + d*x)^(1//2), result = -((2*(b*c - a*d)*sqrt(c + d*x))/d^2) + (2*b*(c + d*x)^(3//2))/(3*d^2), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^0/(c + d*x)^(1//2), result = (2*sqrt(c + d*x))/d, integration_var = x, mistery_val = 1),
#     (integrand = 1/((a + b*x)^1*(c + d*x)^(1//2)), result = -((2*atanh((sqrt(b)*sqrt(c + d*x))/sqrt(b*c - a*d)))/(sqrt(b)*sqrt(b*c - a*d))), integration_var = x, mistery_val = 2),
#     (integrand = 1/((a + b*x)^2*(c + d*x)^(1//2)), result = -(sqrt(c + d*x)/((b*c - a*d)*(a + b*x))) + (d*atanh((sqrt(b)*sqrt(c + d*x))/sqrt(b*c - a*d)))/(sqrt(b)*(b*c - a*d)^(3//2)), integration_var = x, mistery_val = 3),
#     (integrand = 1/((a + b*x)^3*(c + d*x)^(1//2)), result = -(sqrt(c + d*x)/(2*(b*c - a*d)*(a + b*x)^2)) + (3*d*sqrt(c + d*x))/(4*(b*c - a*d)^2*(a + b*x)) - (3*d^2*atanh((sqrt(b)*sqrt(c + d*x))/sqrt(b*c - a*d)))/(4*sqrt(b)*(b*c - a*d)^(5//2)), integration_var = x, mistery_val = 4),
#     (integrand = 1/((a + b*x)^4*(c + d*x)^(1//2)), result = -(sqrt(c + d*x)/(3*(b*c - a*d)*(a + b*x)^3)) + (5*d*sqrt(c + d*x))/(12*(b*c - a*d)^2*(a + b*x)^2) - (5*d^2*sqrt(c + d*x))/(8*(b*c - a*d)^3*(a + b*x)) + (5*d^3*atanh((sqrt(b)*sqrt(c + d*x))/sqrt(b*c - a*d)))/(8*sqrt(b)*(b*c - a*d)^(7//2)), integration_var = x, mistery_val = 5),
#     (integrand = 1/((a + b*x)^5*(c + d*x)^(1//2)), result = -(sqrt(c + d*x)/(4*(b*c - a*d)*(a + b*x)^4)) + (7*d*sqrt(c + d*x))/(24*(b*c - a*d)^2*(a + b*x)^3) - (35*d^2*sqrt(c + d*x))/(96*(b*c - a*d)^3*(a + b*x)^2) + (35*d^3*sqrt(c + d*x))/(64*(b*c - a*d)^4*(a + b*x)) - (35*d^4*atanh((sqrt(b)*sqrt(c + d*x))/sqrt(b*c - a*d)))/(64*sqrt(b)*(b*c - a*d)^(9//2)), integration_var = x, mistery_val = 6),
# 
# 
#     (integrand = (a + b*x)^5/(c + d*x)^(3//2), result = (2*(b*c - a*d)^5)/(d^6*sqrt(c + d*x)) + (10*b*(b*c - a*d)^4*sqrt(c + d*x))/d^6 - (20*b^2*(b*c - a*d)^3*(c + d*x)^(3//2))/(3*d^6) + (4*b^3*(b*c - a*d)^2*(c + d*x)^(5//2))/d^6 - (10*b^4*(b*c - a*d)*(c + d*x)^(7//2))/(7*d^6) + (2*b^5*(c + d*x)^(9//2))/(9*d^6), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^4/(c + d*x)^(3//2), result = -((2*(b*c - a*d)^4)/(d^5*sqrt(c + d*x))) - (8*b*(b*c - a*d)^3*sqrt(c + d*x))/d^5 + (4*b^2*(b*c - a*d)^2*(c + d*x)^(3//2))/d^5 - (8*b^3*(b*c - a*d)*(c + d*x)^(5//2))/(5*d^5) + (2*b^4*(c + d*x)^(7//2))/(7*d^5), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^3/(c + d*x)^(3//2), result = (2*(b*c - a*d)^3)/(d^4*sqrt(c + d*x)) + (6*b*(b*c - a*d)^2*sqrt(c + d*x))/d^4 - (2*b^2*(b*c - a*d)*(c + d*x)^(3//2))/d^4 + (2*b^3*(c + d*x)^(5//2))/(5*d^4), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^2/(c + d*x)^(3//2), result = -((2*(b*c - a*d)^2)/(d^3*sqrt(c + d*x))) - (4*b*(b*c - a*d)*sqrt(c + d*x))/d^3 + (2*b^2*(c + d*x)^(3//2))/(3*d^3), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^1/(c + d*x)^(3//2), result = (2*(b*c - a*d))/(d^2*sqrt(c + d*x)) + (2*b*sqrt(c + d*x))/d^2, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^0/(c + d*x)^(3//2), result = -(2/(d*sqrt(c + d*x))), integration_var = x, mistery_val = 1),
#     (integrand = 1/((a + b*x)^1*(c + d*x)^(3//2)), result = 2/((b*c - a*d)*sqrt(c + d*x)) - (2*sqrt(b)*atanh((sqrt(b)*sqrt(c + d*x))/sqrt(b*c - a*d)))/(b*c - a*d)^(3//2), integration_var = x, mistery_val = 3),
#     (integrand = 1/((a + b*x)^2*(c + d*x)^(3//2)), result = -((3*d)/((b*c - a*d)^2*sqrt(c + d*x))) - 1/((b*c - a*d)*(a + b*x)*sqrt(c + d*x)) + (3*sqrt(b)*d*atanh((sqrt(b)*sqrt(c + d*x))/sqrt(b*c - a*d)))/(b*c - a*d)^(5//2), integration_var = x, mistery_val = 4),
#     (integrand = 1/((a + b*x)^3*(c + d*x)^(3//2)), result = (15*d^2)/(4*(b*c - a*d)^3*sqrt(c + d*x)) - 1/(2*(b*c - a*d)*(a + b*x)^2*sqrt(c + d*x)) + (5*d)/(4*(b*c - a*d)^2*(a + b*x)*sqrt(c + d*x)) - (15*sqrt(b)*d^2*atanh((sqrt(b)*sqrt(c + d*x))/sqrt(b*c - a*d)))/(4*(b*c - a*d)^(7//2)), integration_var = x, mistery_val = 5),
#     (integrand = 1/((a + b*x)^4*(c + d*x)^(3//2)), result = -((35*d^3)/(8*(b*c - a*d)^4*sqrt(c + d*x))) - 1/(3*(b*c - a*d)*(a + b*x)^3*sqrt(c + d*x)) + (7*d)/(12*(b*c - a*d)^2*(a + b*x)^2*sqrt(c + d*x)) - (35*d^2)/(24*(b*c - a*d)^3*(a + b*x)*sqrt(c + d*x)) + (35*sqrt(b)*d^3*atanh((sqrt(b)*sqrt(c + d*x))/sqrt(b*c - a*d)))/(8*(b*c - a*d)^(9//2)), integration_var = x, mistery_val = 6),
# 
# 
#     (integrand = (a + b*x)^5/(c + d*x)^(5//2), result = (2*(b*c - a*d)^5)/(3*d^6*(c + d*x)^(3//2)) - (10*b*(b*c - a*d)^4)/(d^6*sqrt(c + d*x)) - (20*b^2*(b*c - a*d)^3*sqrt(c + d*x))/d^6 + (20*b^3*(b*c - a*d)^2*(c + d*x)^(3//2))/(3*d^6) - (2*b^4*(b*c - a*d)*(c + d*x)^(5//2))/d^6 + (2*b^5*(c + d*x)^(7//2))/(7*d^6), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^4/(c + d*x)^(5//2), result = -((2*(b*c - a*d)^4)/(3*d^5*(c + d*x)^(3//2))) + (8*b*(b*c - a*d)^3)/(d^5*sqrt(c + d*x)) + (12*b^2*(b*c - a*d)^2*sqrt(c + d*x))/d^5 - (8*b^3*(b*c - a*d)*(c + d*x)^(3//2))/(3*d^5) + (2*b^4*(c + d*x)^(5//2))/(5*d^5), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^3/(c + d*x)^(5//2), result = (2*(b*c - a*d)^3)/(3*d^4*(c + d*x)^(3//2)) - (6*b*(b*c - a*d)^2)/(d^4*sqrt(c + d*x)) - (6*b^2*(b*c - a*d)*sqrt(c + d*x))/d^4 + (2*b^3*(c + d*x)^(3//2))/(3*d^4), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^2/(c + d*x)^(5//2), result = -((2*(b*c - a*d)^2)/(3*d^3*(c + d*x)^(3//2))) + (4*b*(b*c - a*d))/(d^3*sqrt(c + d*x)) + (2*b^2*sqrt(c + d*x))/d^3, integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^1/(c + d*x)^(5//2), result = (2*(b*c - a*d))/(3*d^2*(c + d*x)^(3//2)) - (2*b)/(d^2*sqrt(c + d*x)), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^0/(c + d*x)^(5//2), result = -(2/(3*d*(c + d*x)^(3//2))), integration_var = x, mistery_val = 1),
#     (integrand = 1/((a + b*x)^1*(c + d*x)^(5//2)), result = 2/(3*(b*c - a*d)*(c + d*x)^(3//2)) + (2*b)/((b*c - a*d)^2*sqrt(c + d*x)) - (2*b^(3//2)*atanh((sqrt(b)*sqrt(c + d*x))/sqrt(b*c - a*d)))/(b*c - a*d)^(5//2), integration_var = x, mistery_val = 4),
#     (integrand = 1/((a + b*x)^2*(c + d*x)^(5//2)), result = -((5*d)/(3*(b*c - a*d)^2*(c + d*x)^(3//2))) - 1/((b*c - a*d)*(a + b*x)*(c + d*x)^(3//2)) - (5*b*d)/((b*c - a*d)^3*sqrt(c + d*x)) + (5*b^(3//2)*d*atanh((sqrt(b)*sqrt(c + d*x))/sqrt(b*c - a*d)))/(b*c - a*d)^(7//2), integration_var = x, mistery_val = 5),
#     (integrand = 1/((a + b*x)^3*(c + d*x)^(5//2)), result = (35*d^2)/(12*(b*c - a*d)^3*(c + d*x)^(3//2)) - 1/(2*(b*c - a*d)*(a + b*x)^2*(c + d*x)^(3//2)) + (7*d)/(4*(b*c - a*d)^2*(a + b*x)*(c + d*x)^(3//2)) + (35*b*d^2)/(4*(b*c - a*d)^4*sqrt(c + d*x)) - (35*b^(3//2)*d^2*atanh((sqrt(b)*sqrt(c + d*x))/sqrt(b*c - a*d)))/(4*(b*c - a*d)^(9//2)), integration_var = x, mistery_val = 6),
#     (integrand = 1/((a + b*x)^4*(c + d*x)^(5//2)), result = -((35*d^3)/(8*(b*c - a*d)^4*(c + d*x)^(3//2))) - 1/(3*(b*c - a*d)*(a + b*x)^3*(c + d*x)^(3//2)) + (3*d)/(4*(b*c - a*d)^2*(a + b*x)^2*(c + d*x)^(3//2)) - (21*d^2)/(8*(b*c - a*d)^3*(a + b*x)*(c + d*x)^(3//2)) - (105*b*d^3)/(8*(b*c - a*d)^5*sqrt(c + d*x)) + (105*b^(3//2)*d^3*atanh((sqrt(b)*sqrt(c + d*x))/sqrt(b*c - a*d)))/(8*(b*c - a*d)^(11//2)), integration_var = x, mistery_val = 7),
# 
# 
#     (integrand = (a + b*x)^5*(a*c + b*c*x)^(3//2), result = (2*(a*c + b*c*x)^(15//2))/(15*b*c^6), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^5*(a*c + b*c*x)^(1//2), result = (2*(a*c + b*c*x)^(13//2))/(13*b*c^6), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^5/(a*c + b*c*x)^(1//2), result = (2*(a*c + b*c*x)^(11//2))/(11*b*c^6), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^5/(a*c + b*c*x)^(3//2), result = (2*(a*c + b*c*x)^(9//2))/(9*b*c^6), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^5/(a*c + b*c*x)^(5//2), result = (2*(a*c + b*c*x)^(7//2))/(7*b*c^6), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^5/(a*c + b*c*x)^(7//2), result = (2*(a*c + b*c*x)^(5//2))/(5*b*c^6), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^5/(a*c + b*c*x)^(9//2), result = (2*(a*c + b*c*x)^(3//2))/(3*b*c^6), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^5/(a*c + b*c*x)^(11//2), result = (2*sqrt(a*c + b*c*x))/(b*c^6), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^5/(a*c + b*c*x)^(13//2), result = -(2/(b*c^6*sqrt(a*c + b*c*x))), integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = 1/((-2 + x)*sqrt(2 + x)), result = -atanh(sqrt(2 + x)/2), integration_var = x, mistery_val = 2),
#     (integrand = 1/((2 + 3*x)*sqrt(1 + 5*x)), result = (2*atan(sqrt(3//7)*sqrt(1 + 5*x)))/sqrt(21), integration_var = x, mistery_val = 2),
# 
# 
# # ::Subsection::Closed::
# # Integrands of the form (a+b x)^m (c+d x)^(n/3)
# 
# 
#     (integrand = (1 - x)^(1//3)/(1 + x), result = 3*(1 - x)^(1//3) - 2^(1//3)*sqrt(3)*atan((1 + 2^(2//3)*(1 - x)^(1//3))/sqrt(3)) + (3*log(2^(1//3) - (1 - x)^(1//3)))/2^(2//3) - log(1 + x)/2^(2//3), integration_var = x, mistery_val = 5),
#     (integrand = (3 - 2*x)^(1//3)*(7 + x), result = (-(51//16))*(3 - 2*x)^(4//3) + (3//28)*(3 - 2*x)^(7//3), integration_var = x, mistery_val = 2),
#     (integrand = (1 - x)^(1//3)*(1 + x)^2, result = -3*(1 - x)^(4//3) + (12//7)*(1 - x)^(7//3) - (3//10)*(1 - x)^(10//3), integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = 1/((a + b*x)*(c + d*x)^(1//3)), result = (sqrt(3)*atan((1 + (2*b^(1//3)*(c + d*x)^(1//3))/(b*c - a*d)^(1//3))/sqrt(3)))/(b^(2//3)*(b*c - a*d)^(1//3)) - log(a + b*x)/(2*b^(2//3)*(b*c - a*d)^(1//3)) + (3*log((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/(2*b^(2//3)*(b*c - a*d)^(1//3)), integration_var = x, mistery_val = 4),
#     (integrand = 1/((a + b*x)*(c + d*x)^(2//3)), result = -((sqrt(3)*atan((1 + (2*b^(1//3)*(c + d*x)^(1//3))/(b*c - a*d)^(1//3))/sqrt(3)))/(b^(1//3)*(b*c - a*d)^(2//3))) - log(a + b*x)/(2*b^(1//3)*(b*c - a*d)^(2//3)) + (3*log((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/(2*b^(1//3)*(b*c - a*d)^(2//3)), integration_var = x, mistery_val = 4),
# 
# 
# # ::Subsection::Closed::
# # Integrands of the form (a+b x)^(m/2) (c+d x)^(n/2)
# 
# 
# # ::Subsubsection::Closed::
# # n>0
# 
# 
#     (integrand = (a + b*x)^(7//2)*(c + d*x)^(1//2), result = -((7*(b*c - a*d)^4*sqrt(a + b*x)*sqrt(c + d*x))/(128*b*d^4)) + (7*(b*c - a*d)^3*(a + b*x)^(3//2)*sqrt(c + d*x))/(192*b*d^3) - (7*(b*c - a*d)^2*(a + b*x)^(5//2)*sqrt(c + d*x))/(240*b*d^2) + ((b*c - a*d)*(a + b*x)^(7//2)*sqrt(c + d*x))/(40*b*d) + ((a + b*x)^(9//2)*sqrt(c + d*x))/(5*b) + (7*(b*c - a*d)^5*atanh((sqrt(d)*sqrt(a + b*x))/(sqrt(b)*sqrt(c + d*x))))/(128*b^(3//2)*d^(9//2)), integration_var = x, mistery_val = 8),
#     (integrand = (a + b*x)^(5//2)*(c + d*x)^(1//2), result = (5*(b*c - a*d)^3*sqrt(a + b*x)*sqrt(c + d*x))/(64*b*d^3) - (5*(b*c - a*d)^2*(a + b*x)^(3//2)*sqrt(c + d*x))/(96*b*d^2) + ((b*c - a*d)*(a + b*x)^(5//2)*sqrt(c + d*x))/(24*b*d) + ((a + b*x)^(7//2)*sqrt(c + d*x))/(4*b) - (5*(b*c - a*d)^4*atanh((sqrt(d)*sqrt(a + b*x))/(sqrt(b)*sqrt(c + d*x))))/(64*b^(3//2)*d^(7//2)), integration_var = x, mistery_val = 7),
#     (integrand = (a + b*x)^(3//2)*(c + d*x)^(1//2), result = -(((b*c - a*d)^2*sqrt(a + b*x)*sqrt(c + d*x))/(8*b*d^2)) + ((b*c - a*d)*(a + b*x)^(3//2)*sqrt(c + d*x))/(12*b*d) + ((a + b*x)^(5//2)*sqrt(c + d*x))/(3*b) + ((b*c - a*d)^3*atanh((sqrt(d)*sqrt(a + b*x))/(sqrt(b)*sqrt(c + d*x))))/(8*b^(3//2)*d^(5//2)), integration_var = x, mistery_val = 6),
#     (integrand = (a + b*x)^(1//2)*(c + d*x)^(1//2), result = ((b*c - a*d)*sqrt(a + b*x)*sqrt(c + d*x))/(4*b*d) + ((a + b*x)^(3//2)*sqrt(c + d*x))/(2*b) - ((b*c - a*d)^2*atanh((sqrt(d)*sqrt(a + b*x))/(sqrt(b)*sqrt(c + d*x))))/(4*b^(3//2)*d^(3//2)), integration_var = x, mistery_val = 5),
#     (integrand = (c + d*x)^(1//2)/(a + b*x)^(1//2), result = (sqrt(a + b*x)*sqrt(c + d*x))/b + ((b*c - a*d)*atanh((sqrt(d)*sqrt(a + b*x))/(sqrt(b)*sqrt(c + d*x))))/(b^(3//2)*sqrt(d)), integration_var = x, mistery_val = 4),
#     (integrand = (c + d*x)^(1//2)/(a + b*x)^(3//2), result = -((2*sqrt(c + d*x))/(b*sqrt(a + b*x))) + (2*sqrt(d)*atanh((sqrt(d)*sqrt(a + b*x))/(sqrt(b)*sqrt(c + d*x))))/b^(3//2), integration_var = x, mistery_val = 4),
#     (integrand = (c + d*x)^(1//2)/(a + b*x)^(5//2), result = -((2*(c + d*x)^(3//2))/(3*(b*c - a*d)*(a + b*x)^(3//2))), integration_var = x, mistery_val = 1),
#     (integrand = (c + d*x)^(1//2)/(a + b*x)^(7//2), result = -((2*(c + d*x)^(3//2))/(5*(b*c - a*d)*(a + b*x)^(5//2))) + (4*d*(c + d*x)^(3//2))/(15*(b*c - a*d)^2*(a + b*x)^(3//2)), integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^(1//2)/(a + b*x)^(9//2), result = -((2*(c + d*x)^(3//2))/(7*(b*c - a*d)*(a + b*x)^(7//2))) + (8*d*(c + d*x)^(3//2))/(35*(b*c - a*d)^2*(a + b*x)^(5//2)) - (16*d^2*(c + d*x)^(3//2))/(105*(b*c - a*d)^3*(a + b*x)^(3//2)), integration_var = x, mistery_val = 3),
#     (integrand = (c + d*x)^(1//2)/(a + b*x)^(11//2), result = -((2*(c + d*x)^(3//2))/(9*(b*c - a*d)*(a + b*x)^(9//2))) + (4*d*(c + d*x)^(3//2))/(21*(b*c - a*d)^2*(a + b*x)^(7//2)) - (16*d^2*(c + d*x)^(3//2))/(105*(b*c - a*d)^3*(a + b*x)^(5//2)) + (32*d^3*(c + d*x)^(3//2))/(315*(b*c - a*d)^4*(a + b*x)^(3//2)), integration_var = x, mistery_val = 4),
#     (integrand = (c + d*x)^(1//2)/(a + b*x)^(13//2), result = -((2*(c + d*x)^(3//2))/(11*(b*c - a*d)*(a + b*x)^(11//2))) + (16*d*(c + d*x)^(3//2))/(99*(b*c - a*d)^2*(a + b*x)^(9//2)) - (32*d^2*(c + d*x)^(3//2))/(231*(b*c - a*d)^3*(a + b*x)^(7//2)) + (128*d^3*(c + d*x)^(3//2))/(1155*(b*c - a*d)^4*(a + b*x)^(5//2)) - (256*d^4*(c + d*x)^(3//2))/(3465*(b*c - a*d)^5*(a + b*x)^(3//2)), integration_var = x, mistery_val = 5),
# 
# 
#     (integrand = (a + b*x)^(5//2)*(c + d*x)^(3//2), result = (3*(b*c - a*d)^4*sqrt(a + b*x)*sqrt(c + d*x))/(128*b^2*d^3) - ((b*c - a*d)^3*(a + b*x)^(3//2)*sqrt(c + d*x))/(64*b^2*d^2) + ((b*c - a*d)^2*(a + b*x)^(5//2)*sqrt(c + d*x))/(80*b^2*d) + (3*(b*c - a*d)*(a + b*x)^(7//2)*sqrt(c + d*x))/(40*b^2) + ((a + b*x)^(7//2)*(c + d*x)^(3//2))/(5*b) - (3*(b*c - a*d)^5*atanh((sqrt(d)*sqrt(a + b*x))/(sqrt(b)*sqrt(c + d*x))))/(128*b^(5//2)*d^(7//2)), integration_var = x, mistery_val = 8),
#     (integrand = (a + b*x)^(3//2)*(c + d*x)^(3//2), result = -((3*(b*c - a*d)^3*sqrt(a + b*x)*sqrt(c + d*x))/(64*b^2*d^2)) + ((b*c - a*d)^2*(a + b*x)^(3//2)*sqrt(c + d*x))/(32*b^2*d) + ((b*c - a*d)*(a + b*x)^(5//2)*sqrt(c + d*x))/(8*b^2) + ((a + b*x)^(5//2)*(c + d*x)^(3//2))/(4*b) + (3*(b*c - a*d)^4*atanh((sqrt(d)*sqrt(a + b*x))/(sqrt(b)*sqrt(c + d*x))))/(64*b^(5//2)*d^(5//2)), integration_var = x, mistery_val = 7),
#     (integrand = (a + b*x)^(1//2)*(c + d*x)^(3//2), result = ((b*c - a*d)^2*sqrt(a + b*x)*sqrt(c + d*x))/(8*b^2*d) + ((b*c - a*d)*(a + b*x)^(3//2)*sqrt(c + d*x))/(4*b^2) + ((a + b*x)^(3//2)*(c + d*x)^(3//2))/(3*b) - ((b*c - a*d)^3*atanh((sqrt(d)*sqrt(a + b*x))/(sqrt(b)*sqrt(c + d*x))))/(8*b^(5//2)*d^(3//2)), integration_var = x, mistery_val = 6),
#     (integrand = (c + d*x)^(3//2)/(a + b*x)^(1//2), result = (3*(b*c - a*d)*sqrt(a + b*x)*sqrt(c + d*x))/(4*b^2) + (sqrt(a + b*x)*(c + d*x)^(3//2))/(2*b) + (3*(b*c - a*d)^2*atanh((sqrt(d)*sqrt(a + b*x))/(sqrt(b)*sqrt(c + d*x))))/(4*b^(5//2)*sqrt(d)), integration_var = x, mistery_val = 5),
#     (integrand = (c + d*x)^(3//2)/(a + b*x)^(3//2), result = (3*d*sqrt(a + b*x)*sqrt(c + d*x))/b^2 - (2*(c + d*x)^(3//2))/(b*sqrt(a + b*x)) + (3*sqrt(d)*(b*c - a*d)*atanh((sqrt(d)*sqrt(a + b*x))/(sqrt(b)*sqrt(c + d*x))))/b^(5//2), integration_var = x, mistery_val = 5),
#     (integrand = (c + d*x)^(3//2)/(a + b*x)^(5//2), result = -((2*d*sqrt(c + d*x))/(b^2*sqrt(a + b*x))) - (2*(c + d*x)^(3//2))/(3*b*(a + b*x)^(3//2)) + (2*d^(3//2)*atanh((sqrt(d)*sqrt(a + b*x))/(sqrt(b)*sqrt(c + d*x))))/b^(5//2), integration_var = x, mistery_val = 5),
#     (integrand = (c + d*x)^(3//2)/(a + b*x)^(7//2), result = -((2*(c + d*x)^(5//2))/(5*(b*c - a*d)*(a + b*x)^(5//2))), integration_var = x, mistery_val = 1),
#     (integrand = (c + d*x)^(3//2)/(a + b*x)^(9//2), result = -((2*(c + d*x)^(5//2))/(7*(b*c - a*d)*(a + b*x)^(7//2))) + (4*d*(c + d*x)^(5//2))/(35*(b*c - a*d)^2*(a + b*x)^(5//2)), integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^(3//2)/(a + b*x)^(11//2), result = -((2*(c + d*x)^(5//2))/(9*(b*c - a*d)*(a + b*x)^(9//2))) + (8*d*(c + d*x)^(5//2))/(63*(b*c - a*d)^2*(a + b*x)^(7//2)) - (16*d^2*(c + d*x)^(5//2))/(315*(b*c - a*d)^3*(a + b*x)^(5//2)), integration_var = x, mistery_val = 3),
#     (integrand = (c + d*x)^(3//2)/(a + b*x)^(13//2), result = -((2*(c + d*x)^(5//2))/(11*(b*c - a*d)*(a + b*x)^(11//2))) + (4*d*(c + d*x)^(5//2))/(33*(b*c - a*d)^2*(a + b*x)^(9//2)) - (16*d^2*(c + d*x)^(5//2))/(231*(b*c - a*d)^3*(a + b*x)^(7//2)) + (32*d^3*(c + d*x)^(5//2))/(1155*(b*c - a*d)^4*(a + b*x)^(5//2)), integration_var = x, mistery_val = 4),
# 
# 
#     (integrand = (a + b*x)^(5//2)*(c + d*x)^(5//2), result = (5*(b*c - a*d)^5*sqrt(a + b*x)*sqrt(c + d*x))/(512*b^3*d^3) - (5*(b*c - a*d)^4*(a + b*x)^(3//2)*sqrt(c + d*x))/(768*b^3*d^2) + ((b*c - a*d)^3*(a + b*x)^(5//2)*sqrt(c + d*x))/(192*b^3*d) + ((b*c - a*d)^2*(a + b*x)^(7//2)*sqrt(c + d*x))/(32*b^3) + ((b*c - a*d)*(a + b*x)^(7//2)*(c + d*x)^(3//2))/(12*b^2) + ((a + b*x)^(7//2)*(c + d*x)^(5//2))/(6*b) - (5*(b*c - a*d)^6*atanh((sqrt(d)*sqrt(a + b*x))/(sqrt(b)*sqrt(c + d*x))))/(512*b^(7//2)*d^(7//2)), integration_var = x, mistery_val = 9),
#     (integrand = (a + b*x)^(3//2)*(c + d*x)^(5//2), result = -((3*(b*c - a*d)^4*sqrt(a + b*x)*sqrt(c + d*x))/(128*b^3*d^2)) + ((b*c - a*d)^3*(a + b*x)^(3//2)*sqrt(c + d*x))/(64*b^3*d) + ((b*c - a*d)^2*(a + b*x)^(5//2)*sqrt(c + d*x))/(16*b^3) + ((b*c - a*d)*(a + b*x)^(5//2)*(c + d*x)^(3//2))/(8*b^2) + ((a + b*x)^(5//2)*(c + d*x)^(5//2))/(5*b) + (3*(b*c - a*d)^5*atanh((sqrt(d)*sqrt(a + b*x))/(sqrt(b)*sqrt(c + d*x))))/(128*b^(7//2)*d^(5//2)), integration_var = x, mistery_val = 8),
#     (integrand = (a + b*x)^(1//2)*(c + d*x)^(5//2), result = (5*(b*c - a*d)^3*sqrt(a + b*x)*sqrt(c + d*x))/(64*b^3*d) + (5*(b*c - a*d)^2*(a + b*x)^(3//2)*sqrt(c + d*x))/(32*b^3) + (5*(b*c - a*d)*(a + b*x)^(3//2)*(c + d*x)^(3//2))/(24*b^2) + ((a + b*x)^(3//2)*(c + d*x)^(5//2))/(4*b) - (5*(b*c - a*d)^4*atanh((sqrt(d)*sqrt(a + b*x))/(sqrt(b)*sqrt(c + d*x))))/(64*b^(7//2)*d^(3//2)), integration_var = x, mistery_val = 7),
#     (integrand = (c + d*x)^(5//2)/(a + b*x)^(1//2), result = (5*(b*c - a*d)^2*sqrt(a + b*x)*sqrt(c + d*x))/(8*b^3) + (5*(b*c - a*d)*sqrt(a + b*x)*(c + d*x)^(3//2))/(12*b^2) + (sqrt(a + b*x)*(c + d*x)^(5//2))/(3*b) + (5*(b*c - a*d)^3*atanh((sqrt(d)*sqrt(a + b*x))/(sqrt(b)*sqrt(c + d*x))))/(8*b^(7//2)*sqrt(d)), integration_var = x, mistery_val = 6),
#     (integrand = (c + d*x)^(5//2)/(a + b*x)^(3//2), result = (15*d*(b*c - a*d)*sqrt(a + b*x)*sqrt(c + d*x))/(4*b^3) + (5*d*sqrt(a + b*x)*(c + d*x)^(3//2))/(2*b^2) - (2*(c + d*x)^(5//2))/(b*sqrt(a + b*x)) + (15*sqrt(d)*(b*c - a*d)^2*atanh((sqrt(d)*sqrt(a + b*x))/(sqrt(b)*sqrt(c + d*x))))/(4*b^(7//2)), integration_var = x, mistery_val = 6),
#     (integrand = (c + d*x)^(5//2)/(a + b*x)^(5//2), result = (5*d^2*sqrt(a + b*x)*sqrt(c + d*x))/b^3 - (10*d*(c + d*x)^(3//2))/(3*b^2*sqrt(a + b*x)) - (2*(c + d*x)^(5//2))/(3*b*(a + b*x)^(3//2)) + (5*d^(3//2)*(b*c - a*d)*atanh((sqrt(d)*sqrt(a + b*x))/(sqrt(b)*sqrt(c + d*x))))/b^(7//2), integration_var = x, mistery_val = 6),
#     (integrand = (c + d*x)^(5//2)/(a + b*x)^(7//2), result = -((2*d^2*sqrt(c + d*x))/(b^3*sqrt(a + b*x))) - (2*d*(c + d*x)^(3//2))/(3*b^2*(a + b*x)^(3//2)) - (2*(c + d*x)^(5//2))/(5*b*(a + b*x)^(5//2)) + (2*d^(5//2)*atanh((sqrt(d)*sqrt(a + b*x))/(sqrt(b)*sqrt(c + d*x))))/b^(7//2), integration_var = x, mistery_val = 6),
#     (integrand = (c + d*x)^(5//2)/(a + b*x)^(9//2), result = -((2*(c + d*x)^(7//2))/(7*(b*c - a*d)*(a + b*x)^(7//2))), integration_var = x, mistery_val = 1),
#     (integrand = (c + d*x)^(5//2)/(a + b*x)^(11//2), result = -((2*(c + d*x)^(7//2))/(9*(b*c - a*d)*(a + b*x)^(9//2))) + (4*d*(c + d*x)^(7//2))/(63*(b*c - a*d)^2*(a + b*x)^(7//2)), integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^(5//2)/(a + b*x)^(13//2), result = -((2*(c + d*x)^(7//2))/(11*(b*c - a*d)*(a + b*x)^(11//2))) + (8*d*(c + d*x)^(7//2))/(99*(b*c - a*d)^2*(a + b*x)^(9//2)) - (16*d^2*(c + d*x)^(7//2))/(693*(b*c - a*d)^3*(a + b*x)^(7//2)), integration_var = x, mistery_val = 3),
#     (integrand = (c + d*x)^(5//2)/(a + b*x)^(15//2), result = -((2*(c + d*x)^(7//2))/(13*(b*c - a*d)*(a + b*x)^(13//2))) + (12*d*(c + d*x)^(7//2))/(143*(b*c - a*d)^2*(a + b*x)^(11//2)) - (16*d^2*(c + d*x)^(7//2))/(429*(b*c - a*d)^3*(a + b*x)^(9//2)) + (32*d^3*(c + d*x)^(7//2))/(3003*(b*c - a*d)^4*(a + b*x)^(7//2)), integration_var = x, mistery_val = 4),
# 
# 
# # ::Subsubsection::Closed::
# # n<0
# 
# 
#     (integrand = (a + b*x)^(7//2)/(c + d*x)^(1//2), result = -((35*(b*c - a*d)^3*sqrt(a + b*x)*sqrt(c + d*x))/(64*d^4)) + (35*(b*c - a*d)^2*(a + b*x)^(3//2)*sqrt(c + d*x))/(96*d^3) - (7*(b*c - a*d)*(a + b*x)^(5//2)*sqrt(c + d*x))/(24*d^2) + ((a + b*x)^(7//2)*sqrt(c + d*x))/(4*d) + (35*(b*c - a*d)^4*atanh((sqrt(d)*sqrt(a + b*x))/(sqrt(b)*sqrt(c + d*x))))/(64*sqrt(b)*d^(9//2)), integration_var = x, mistery_val = 7),
#     (integrand = (a + b*x)^(5//2)/(c + d*x)^(1//2), result = (5*(b*c - a*d)^2*sqrt(a + b*x)*sqrt(c + d*x))/(8*d^3) - (5*(b*c - a*d)*(a + b*x)^(3//2)*sqrt(c + d*x))/(12*d^2) + ((a + b*x)^(5//2)*sqrt(c + d*x))/(3*d) - (5*(b*c - a*d)^3*atanh((sqrt(d)*sqrt(a + b*x))/(sqrt(b)*sqrt(c + d*x))))/(8*sqrt(b)*d^(7//2)), integration_var = x, mistery_val = 6),
#     (integrand = (a + b*x)^(3//2)/(c + d*x)^(1//2), result = -((3*(b*c - a*d)*sqrt(a + b*x)*sqrt(c + d*x))/(4*d^2)) + ((a + b*x)^(3//2)*sqrt(c + d*x))/(2*d) + (3*(b*c - a*d)^2*atanh((sqrt(d)*sqrt(a + b*x))/(sqrt(b)*sqrt(c + d*x))))/(4*sqrt(b)*d^(5//2)), integration_var = x, mistery_val = 5),
#     (integrand = (a + b*x)^(1//2)/(c + d*x)^(1//2), result = (sqrt(a + b*x)*sqrt(c + d*x))/d - ((b*c - a*d)*atanh((sqrt(d)*sqrt(a + b*x))/(sqrt(b)*sqrt(c + d*x))))/(sqrt(b)*d^(3//2)), integration_var = x, mistery_val = 4),
#     (integrand = 1/((a + b*x)^(1//2)*(c + d*x)^(1//2)), result = (2*atanh((sqrt(d)*sqrt(a + b*x))/(sqrt(b)*sqrt(c + d*x))))/(sqrt(b)*sqrt(d)), integration_var = x, mistery_val = 3),
#     (integrand = 1/((a + b*x)^(3//2)*(c + d*x)^(1//2)), result = -((2*sqrt(c + d*x))/((b*c - a*d)*sqrt(a + b*x))), integration_var = x, mistery_val = 1),
#     (integrand = 1/((a + b*x)^(5//2)*(c + d*x)^(1//2)), result = -((2*sqrt(c + d*x))/(3*(b*c - a*d)*(a + b*x)^(3//2))) + (4*d*sqrt(c + d*x))/(3*(b*c - a*d)^2*sqrt(a + b*x)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((a + b*x)^(7//2)*(c + d*x)^(1//2)), result = -((2*sqrt(c + d*x))/(5*(b*c - a*d)*(a + b*x)^(5//2))) + (8*d*sqrt(c + d*x))/(15*(b*c - a*d)^2*(a + b*x)^(3//2)) - (16*d^2*sqrt(c + d*x))/(15*(b*c - a*d)^3*sqrt(a + b*x)), integration_var = x, mistery_val = 3),
#     (integrand = 1/((a + b*x)^(9//2)*(c + d*x)^(1//2)), result = -((2*sqrt(c + d*x))/(7*(b*c - a*d)*(a + b*x)^(7//2))) + (12*d*sqrt(c + d*x))/(35*(b*c - a*d)^2*(a + b*x)^(5//2)) - (16*d^2*sqrt(c + d*x))/(35*(b*c - a*d)^3*(a + b*x)^(3//2)) + (32*d^3*sqrt(c + d*x))/(35*(b*c - a*d)^4*sqrt(a + b*x)), integration_var = x, mistery_val = 4),
#     (integrand = 1/((a + b*x)^(11//2)*(c + d*x)^(1//2)), result = -((2*sqrt(c + d*x))/(9*(b*c - a*d)*(a + b*x)^(9//2))) + (16*d*sqrt(c + d*x))/(63*(b*c - a*d)^2*(a + b*x)^(7//2)) - (32*d^2*sqrt(c + d*x))/(105*(b*c - a*d)^3*(a + b*x)^(5//2)) + (128*d^3*sqrt(c + d*x))/(315*(b*c - a*d)^4*(a + b*x)^(3//2)) - (256*d^4*sqrt(c + d*x))/(315*(b*c - a*d)^5*sqrt(a + b*x)), integration_var = x, mistery_val = 5),
# 
# 
#     (integrand = (a + b*x)^(7//2)/(c + d*x)^(3//2), result = -((2*(a + b*x)^(7//2))/(d*sqrt(c + d*x))) + (35*b*(b*c - a*d)^2*sqrt(a + b*x)*sqrt(c + d*x))/(8*d^4) - (35*b*(b*c - a*d)*(a + b*x)^(3//2)*sqrt(c + d*x))/(12*d^3) + (7*b*(a + b*x)^(5//2)*sqrt(c + d*x))/(3*d^2) - (35*sqrt(b)*(b*c - a*d)^3*atanh((sqrt(d)*sqrt(a + b*x))/(sqrt(b)*sqrt(c + d*x))))/(8*d^(9//2)), integration_var = x, mistery_val = 7),
#     (integrand = (a + b*x)^(5//2)/(c + d*x)^(3//2), result = -((2*(a + b*x)^(5//2))/(d*sqrt(c + d*x))) - (15*b*(b*c - a*d)*sqrt(a + b*x)*sqrt(c + d*x))/(4*d^3) + (5*b*(a + b*x)^(3//2)*sqrt(c + d*x))/(2*d^2) + (15*sqrt(b)*(b*c - a*d)^2*atanh((sqrt(d)*sqrt(a + b*x))/(sqrt(b)*sqrt(c + d*x))))/(4*d^(7//2)), integration_var = x, mistery_val = 6),
#     (integrand = (a + b*x)^(3//2)/(c + d*x)^(3//2), result = -((2*(a + b*x)^(3//2))/(d*sqrt(c + d*x))) + (3*b*sqrt(a + b*x)*sqrt(c + d*x))/d^2 - (3*sqrt(b)*(b*c - a*d)*atanh((sqrt(d)*sqrt(a + b*x))/(sqrt(b)*sqrt(c + d*x))))/d^(5//2), integration_var = x, mistery_val = 5),
#     (integrand = (a + b*x)^(1//2)/(c + d*x)^(3//2), result = -((2*sqrt(a + b*x))/(d*sqrt(c + d*x))) + (2*sqrt(b)*atanh((sqrt(d)*sqrt(a + b*x))/(sqrt(b)*sqrt(c + d*x))))/d^(3//2), integration_var = x, mistery_val = 4),
#     (integrand = 1/((a + b*x)^(1//2)*(c + d*x)^(3//2)), result = (2*sqrt(a + b*x))/((b*c - a*d)*sqrt(c + d*x)), integration_var = x, mistery_val = 1),
#     (integrand = 1/((a + b*x)^(3//2)*(c + d*x)^(3//2)), result = -(2/((b*c - a*d)*sqrt(a + b*x)*sqrt(c + d*x))) - (4*d*sqrt(a + b*x))/((b*c - a*d)^2*sqrt(c + d*x)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((a + b*x)^(5//2)*(c + d*x)^(3//2)), result = -(2/(3*(b*c - a*d)*(a + b*x)^(3//2)*sqrt(c + d*x))) + (8*d)/(3*(b*c - a*d)^2*sqrt(a + b*x)*sqrt(c + d*x)) + (16*d^2*sqrt(a + b*x))/(3*(b*c - a*d)^3*sqrt(c + d*x)), integration_var = x, mistery_val = 3),
#     (integrand = 1/((a + b*x)^(7//2)*(c + d*x)^(3//2)), result = -(2/(5*(b*c - a*d)*(a + b*x)^(5//2)*sqrt(c + d*x))) + (4*d)/(5*(b*c - a*d)^2*(a + b*x)^(3//2)*sqrt(c + d*x)) - (16*d^2)/(5*(b*c - a*d)^3*sqrt(a + b*x)*sqrt(c + d*x)) - (32*d^3*sqrt(a + b*x))/(5*(b*c - a*d)^4*sqrt(c + d*x)), integration_var = x, mistery_val = 4),
#     (integrand = 1/((a + b*x)^(9//2)*(c + d*x)^(3//2)), result = -(2/(7*(b*c - a*d)*(a + b*x)^(7//2)*sqrt(c + d*x))) + (16*d)/(35*(b*c - a*d)^2*(a + b*x)^(5//2)*sqrt(c + d*x)) - (32*d^2)/(35*(b*c - a*d)^3*(a + b*x)^(3//2)*sqrt(c + d*x)) + (128*d^3)/(35*(b*c - a*d)^4*sqrt(a + b*x)*sqrt(c + d*x)) + (256*d^4*sqrt(a + b*x))/(35*(b*c - a*d)^5*sqrt(c + d*x)), integration_var = x, mistery_val = 5),
#     (integrand = 1/((a + b*x)^(11//2)*(c + d*x)^(3//2)), result = -(2/(9*(b*c - a*d)*(a + b*x)^(9//2)*sqrt(c + d*x))) + (20*d)/(63*(b*c - a*d)^2*(a + b*x)^(7//2)*sqrt(c + d*x)) - (32*d^2)/(63*(b*c - a*d)^3*(a + b*x)^(5//2)*sqrt(c + d*x)) + (64*d^3)/(63*(b*c - a*d)^4*(a + b*x)^(3//2)*sqrt(c + d*x)) - (256*d^4)/(63*(b*c - a*d)^5*sqrt(a + b*x)*sqrt(c + d*x)) - (512*d^5*sqrt(a + b*x))/(63*(b*c - a*d)^6*sqrt(c + d*x)), integration_var = x, mistery_val = 6),
# 
# 
#     (integrand = (a + b*x)^(9//2)/(c + d*x)^(5//2), result = -((2*(a + b*x)^(9//2))/(3*d*(c + d*x)^(3//2))) - (6*b*(a + b*x)^(7//2))/(d^2*sqrt(c + d*x)) + (105*b^2*(b*c - a*d)^2*sqrt(a + b*x)*sqrt(c + d*x))/(8*d^5) - (35*b^2*(b*c - a*d)*(a + b*x)^(3//2)*sqrt(c + d*x))/(4*d^4) + (7*b^2*(a + b*x)^(5//2)*sqrt(c + d*x))/d^3 - (105*b^(3//2)*(b*c - a*d)^3*atanh((sqrt(d)*sqrt(a + b*x))/(sqrt(b)*sqrt(c + d*x))))/(8*d^(11//2)), integration_var = x, mistery_val = 8),
#     (integrand = (a + b*x)^(7//2)/(c + d*x)^(5//2), result = -((2*(a + b*x)^(7//2))/(3*d*(c + d*x)^(3//2))) - (14*b*(a + b*x)^(5//2))/(3*d^2*sqrt(c + d*x)) - (35*b^2*(b*c - a*d)*sqrt(a + b*x)*sqrt(c + d*x))/(4*d^4) + (35*b^2*(a + b*x)^(3//2)*sqrt(c + d*x))/(6*d^3) + (35*b^(3//2)*(b*c - a*d)^2*atanh((sqrt(d)*sqrt(a + b*x))/(sqrt(b)*sqrt(c + d*x))))/(4*d^(9//2)), integration_var = x, mistery_val = 7),
#     (integrand = (a + b*x)^(5//2)/(c + d*x)^(5//2), result = -((2*(a + b*x)^(5//2))/(3*d*(c + d*x)^(3//2))) - (10*b*(a + b*x)^(3//2))/(3*d^2*sqrt(c + d*x)) + (5*b^2*sqrt(a + b*x)*sqrt(c + d*x))/d^3 - (5*b^(3//2)*(b*c - a*d)*atanh((sqrt(d)*sqrt(a + b*x))/(sqrt(b)*sqrt(c + d*x))))/d^(7//2), integration_var = x, mistery_val = 6),
#     (integrand = (a + b*x)^(3//2)/(c + d*x)^(5//2), result = -((2*(a + b*x)^(3//2))/(3*d*(c + d*x)^(3//2))) - (2*b*sqrt(a + b*x))/(d^2*sqrt(c + d*x)) + (2*b^(3//2)*atanh((sqrt(d)*sqrt(a + b*x))/(sqrt(b)*sqrt(c + d*x))))/d^(5//2), integration_var = x, mistery_val = 5),
#     (integrand = (a + b*x)^(1//2)/(c + d*x)^(5//2), result = (2*(a + b*x)^(3//2))/(3*(b*c - a*d)*(c + d*x)^(3//2)), integration_var = x, mistery_val = 1),
#     (integrand = 1/((a + b*x)^(1//2)*(c + d*x)^(5//2)), result = (2*sqrt(a + b*x))/(3*(b*c - a*d)*(c + d*x)^(3//2)) + (4*b*sqrt(a + b*x))/(3*(b*c - a*d)^2*sqrt(c + d*x)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((a + b*x)^(3//2)*(c + d*x)^(5//2)), result = -(2/((b*c - a*d)*sqrt(a + b*x)*(c + d*x)^(3//2))) - (8*d*sqrt(a + b*x))/(3*(b*c - a*d)^2*(c + d*x)^(3//2)) - (16*b*d*sqrt(a + b*x))/(3*(b*c - a*d)^3*sqrt(c + d*x)), integration_var = x, mistery_val = 3),
#     (integrand = 1/((a + b*x)^(5//2)*(c + d*x)^(5//2)), result = -(2/(3*(b*c - a*d)*(a + b*x)^(3//2)*(c + d*x)^(3//2))) + (4*d)/((b*c - a*d)^2*sqrt(a + b*x)*(c + d*x)^(3//2)) + (16*d^2*sqrt(a + b*x))/(3*(b*c - a*d)^3*(c + d*x)^(3//2)) + (32*b*d^2*sqrt(a + b*x))/(3*(b*c - a*d)^4*sqrt(c + d*x)), integration_var = x, mistery_val = 4),
#     (integrand = 1/((a + b*x)^(7//2)*(c + d*x)^(5//2)), result = -(2/(5*(b*c - a*d)*(a + b*x)^(5//2)*(c + d*x)^(3//2))) + (16*d)/(15*(b*c - a*d)^2*(a + b*x)^(3//2)*(c + d*x)^(3//2)) - (32*d^2)/(5*(b*c - a*d)^3*sqrt(a + b*x)*(c + d*x)^(3//2)) - (128*d^3*sqrt(a + b*x))/(15*(b*c - a*d)^4*(c + d*x)^(3//2)) - (256*b*d^3*sqrt(a + b*x))/(15*(b*c - a*d)^5*sqrt(c + d*x)), integration_var = x, mistery_val = 5),
#     (integrand = 1/((a + b*x)^(9//2)*(c + d*x)^(5//2)), result = -(2/(7*(b*c - a*d)*(a + b*x)^(7//2)*(c + d*x)^(3//2))) + (4*d)/(7*(b*c - a*d)^2*(a + b*x)^(5//2)*(c + d*x)^(3//2)) - (32*d^2)/(21*(b*c - a*d)^3*(a + b*x)^(3//2)*(c + d*x)^(3//2)) + (64*d^3)/(7*(b*c - a*d)^4*sqrt(a + b*x)*(c + d*x)^(3//2)) + (256*d^4*sqrt(a + b*x))/(21*(b*c - a*d)^5*(c + d*x)^(3//2)) + (512*b*d^4*sqrt(a + b*x))/(21*(b*c - a*d)^6*sqrt(c + d*x)), integration_var = x, mistery_val = 6),
# 
# 
#     (integrand = 1/(sqrt(4 + a + b*x)*sqrt(a + b*x)), result = (2*asinh((1//2)*sqrt(a + b*x)))/b, integration_var = x, mistery_val = 2),
# 
#     (integrand = 1/(sqrt(4 + 2 + b*x)*sqrt(2 + b*x)), result = (2*asinh((1//2)*sqrt(2 + b*x)))/b, integration_var = x, mistery_val = 2),
#     (integrand = 1/(sqrt(4 + 1 + b*x)*sqrt(1 + b*x)), result = (2*asinh((1//2)*sqrt(1 + b*x)))/b, integration_var = x, mistery_val = 2),
#     (integrand = 1/(sqrt(4 + 0 + b*x)*sqrt(0 + b*x)), result = (2*asinh((1//2)*sqrt(b*x)))/b, integration_var = x, mistery_val = 2),
#     (integrand = 1/(sqrt(4 - 1 + b*x)*sqrt(-1 + b*x)), result = (2*asinh((1//2)*sqrt(-1 + b*x)))/b, integration_var = x, mistery_val = 2),
#     (integrand = 1/(sqrt(4 - 2 + b*x)*sqrt(-2 + b*x)), result = acosh((b*x)/2)/b, integration_var = x, mistery_val = 1),
#     (integrand = 1/(sqrt(4 - 3 + b*x)*sqrt(-3 + b*x)), result = (2*asinh((1//2)*sqrt(-3 + b*x)))/b, integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = 1/(sqrt(3 + b*x)*sqrt(2 + b*x)), result = (2*asinh(sqrt(2 + b*x)))/b, integration_var = x, mistery_val = 2),
#     (integrand = 1/(sqrt(2 + b*x)*sqrt(2 + b*x)), result = log(2 + b*x)/b, integration_var = x, mistery_val = 1),
#     (integrand = 1/(sqrt(1 + b*x)*sqrt(2 + b*x)), result = (2*asinh(sqrt(1 + b*x)))/b, integration_var = x, mistery_val = 2),
#     (integrand = 1/(sqrt(0 + b*x)*sqrt(2 + b*x)), result = (2*asinh(sqrt(b*x)/sqrt(2)))/b, integration_var = x, mistery_val = 2),
#     (integrand = 1/(sqrt(-1 + b*x)*sqrt(2 + b*x)), result = (2*asinh(sqrt(-1 + b*x)/sqrt(3)))/b, integration_var = x, mistery_val = 2),
#     (integrand = 1/(sqrt(-2 + b*x)*sqrt(2 + b*x)), result = acosh((b*x)/2)/b, integration_var = x, mistery_val = 1),
#     (integrand = 1/(sqrt(-3 + b*x)*sqrt(2 + b*x)), result = (2*asinh(sqrt(-3 + b*x)/sqrt(5)))/b, integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = 1/(sqrt(3 - b*x)*sqrt(2 + b*x)), result = -(asin((1 - 2*b*x)/5)/b), integration_var = x, mistery_val = 3),
#     (integrand = 1/(sqrt(2 - b*x)*sqrt(2 + b*x)), result = asin((b*x)/2)/b, integration_var = x, mistery_val = 2),
#     (integrand = 1/(sqrt(1 - b*x)*sqrt(2 + b*x)), result = -(asin((-1 - 2*b*x)/3)/b), integration_var = x, mistery_val = 3),
#     (integrand = 1/(sqrt(0 - b*x)*sqrt(2 + b*x)), result = asin(1 + b*x)/b, integration_var = x, mistery_val = 3),
#     (integrand = 1/(sqrt(-1 - b*x)*sqrt(2 + b*x)), result = asin(3 + 2*b*x)/b, integration_var = x, mistery_val = 3),
#     (integrand = 1/(sqrt(-2 - b*x)*sqrt(2 + b*x)), result = (sqrt(2 + b*x)*log(2 + b*x))/(b*sqrt(-2 - b*x)), integration_var = x, mistery_val = 2),
#     (integrand = 1/(sqrt(-3 - b*x)*sqrt(2 + b*x)), result = (-2*atan(sqrt(-3 - b*x)/sqrt(2 + b*x)))/b, integration_var = x, mistery_val = 3),
# 
# 
#     (integrand = 1/(sqrt(3 - b*x)*sqrt(2 - b*x)), result = -((2*asinh(sqrt(2 - b*x)))/b), integration_var = x, mistery_val = 2),
#     (integrand = 1/(sqrt(2 - b*x)*sqrt(2 - b*x)), result = -(log(2 - b*x)/b), integration_var = x, mistery_val = 1),
#     (integrand = 1/(sqrt(1 - b*x)*sqrt(2 - b*x)), result = -((2*asinh(sqrt(1 - b*x)))/b), integration_var = x, mistery_val = 2),
#     (integrand = 1/(sqrt(0 - b*x)*sqrt(2 - b*x)), result = -((2*asinh(sqrt(-b*x)/sqrt(2)))/b), integration_var = x, mistery_val = 2),
#     (integrand = 1/(sqrt(-1 - b*x)*sqrt(2 - b*x)), result = -((2*asinh(sqrt(-1 - b*x)/sqrt(3)))/b), integration_var = x, mistery_val = 2),
#     (integrand = 1/(sqrt(-2 - b*x)*sqrt(2 - b*x)), result = -(acosh(-(b*x)/2)/b), integration_var = x, mistery_val = 1),
#     (integrand = 1/(sqrt(-3 - b*x)*sqrt(2 - b*x)), result = -((2*asinh(sqrt(-3 - b*x)/sqrt(5)))/b), integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = 1/(sqrt(4 + b*x)*sqrt(-4 + b*x)), result = acosh((b*x)/4)/b, integration_var = x, mistery_val = 1),
# 
#     (integrand = 1/(sqrt((-b + b*c)/d + b*x)*sqrt(c + d*x)), result = (2*asinh((sqrt(d)*sqrt(-((b*(1 - c))/d) + b*x))/sqrt(b)))/(sqrt(b)*sqrt(d)), integration_var = x, mistery_val = 2),
#     (integrand = 1/(sqrt(x)*sqrt(-3 + 2*x)), result = sqrt(2)*asinh(sqrt(-3 + 2*x)/sqrt(3)), integration_var = x, mistery_val = 2),
#     (integrand = 1/(sqrt(2+3*x)*sqrt(-3+2*x)), result = sqrt(2//3)*asinh(sqrt(3//13)*sqrt(-3 + 2*x)), integration_var = x, mistery_val = 2),
# 
#     (integrand = 1/(sqrt((b - b*c)/d + b*x)*sqrt(c - d*x)), result = (2*asin((sqrt(d)*sqrt((b*(1 - c))/d + b*x))/sqrt(b)))/(sqrt(b)*sqrt(d)), integration_var = x, mistery_val = 2),
#     (integrand = 1/(sqrt(4 - x)*sqrt(x)), result = -asin(1 - x/2), integration_var = x, mistery_val = 3),
#     (integrand = 1/(sqrt(x)*sqrt(3 - 2*x)), result = sqrt(2)*asin(sqrt(2//3)*sqrt(x)), integration_var = x, mistery_val = 2),
#     (integrand = 1/(sqrt(3+5*x)*sqrt(3-2*x)), result = sqrt(2//5)*asin(sqrt(2//21)*sqrt(3 + 5*x)), integration_var = x, mistery_val = 2),
#     (integrand = 1/(sqrt(a-b*x)*sqrt(c+d*x)), result = -((2*atan((sqrt(d)*sqrt(a - b*x))/(sqrt(b)*sqrt(c + d*x))))/(sqrt(b)*sqrt(d))), integration_var = x, mistery_val = 3),
# 
# 
# # ::Subsection::Closed::
# # Integrands of the form (a+b x)^(m/2) (c+d x)^(n/3)
# 
# 
# # ::Subsubsection::Closed::
# # n>0
# 
# 
#     (integrand = (a + b*x)^(3//2)*(c + d*x)^(1//3), result = -((108*(b*c - a*d)^2*sqrt(a + b*x)*(c + d*x)^(1//3))/(935*b*d^2)) + (12*(b*c - a*d)*(a + b*x)^(3//2)*(c + d*x)^(1//3))/(187*b*d) + (6*(a + b*x)^(5//2)*(c + d*x)^(1//3))/(17*b) - (108*3^(3//4)*sqrt(2 - sqrt(3))*(b*c - a*d)^3*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(asin(((1 + sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))), -7 + 4*sqrt(3)))/(935*b^(4//3)*d^3*sqrt(a + b*x)*sqrt(-(((b*c - a*d)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 5),
#     (integrand = (a + b*x)^(1//2)*(c + d*x)^(1//3), result = (12*(b*c - a*d)*sqrt(a + b*x)*(c + d*x)^(1//3))/(55*b*d) + (6*(a + b*x)^(3//2)*(c + d*x)^(1//3))/(11*b) + (12*3^(3//4)*sqrt(2 - sqrt(3))*(b*c - a*d)^2*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(asin(((1 + sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))), -7 + 4*sqrt(3)))/(55*b^(4//3)*d^2*sqrt(a + b*x)*sqrt(-(((b*c - a*d)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 4),
#     (integrand = (c + d*x)^(1//3)/(a + b*x)^(1//2), result = (6*sqrt(a + b*x)*(c + d*x)^(1//3))/(5*b) - (4*3^(3//4)*sqrt(2 - sqrt(3))*(b*c - a*d)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(asin(((1 + sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))), -7 + 4*sqrt(3)))/(5*b^(4//3)*d*sqrt(a + b*x)*sqrt(-(((b*c - a*d)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 3),
#     (integrand = (c + d*x)^(1//3)/(a + b*x)^(3//2), result = -((2*(c + d*x)^(1//3))/(b*sqrt(a + b*x))) - (4*sqrt(2 - sqrt(3))*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(asin(((1 + sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))), -7 + 4*sqrt(3)))/(3^(1//4)*b^(4//3)*sqrt(a + b*x)*sqrt(-(((b*c - a*d)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 3),
#     (integrand = (c + d*x)^(1//3)/(a + b*x)^(5//2), result = -((2*(c + d*x)^(1//3))/(3*b*(a + b*x)^(3//2))) - (4*d*(c + d*x)^(1//3))/(9*b*(b*c - a*d)*sqrt(a + b*x)) + (4*sqrt(2 - sqrt(3))*d*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(asin(((1 + sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))), -7 + 4*sqrt(3)))/(9*3^(1//4)*b^(4//3)*(b*c - a*d)*sqrt(a + b*x)*sqrt(-(((b*c - a*d)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 4),
#     (integrand = (c + d*x)^(1//3)/(a + b*x)^(7//2), result = -((2*(c + d*x)^(1//3))/(5*b*(a + b*x)^(5//2))) - (4*d*(c + d*x)^(1//3))/(45*b*(b*c - a*d)*(a + b*x)^(3//2)) + (28*d^2*(c + d*x)^(1//3))/(135*b*(b*c - a*d)^2*sqrt(a + b*x)) - (28*sqrt(2 - sqrt(3))*d^2*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(asin(((1 + sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))), -7 + 4*sqrt(3)))/(135*3^(1//4)*b^(4//3)*(b*c - a*d)^2*sqrt(a + b*x)*sqrt(-(((b*c - a*d)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 5),
# 
# 
# # ::Subsubsection::Closed::
# # n<0
# 
# 
#     (integrand = (a + b*x)^(3//2)/(c + d*x)^(1//3), result = -((54*(b*c - a*d)*sqrt(a + b*x)*(c + d*x)^(2//3))/(91*d^2)) + (6*(a + b*x)^(3//2)*(c + d*x)^(2//3))/(13*d) - (162*(b*c - a*d)^2*sqrt(a + b*x))/(91*b^(2//3)*d^2*((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))) + (81*3^(1//4)*sqrt(2 + sqrt(3))*(b*c - a*d)^(7//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))^2)*EllipticE(asin(((1 + sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))), -7 + 4*sqrt(3)))/(91*b^(2//3)*d^3*sqrt(a + b*x)*sqrt(-(((b*c - a*d)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))^2))) - (54*sqrt(2)*3^(3//4)*(b*c - a*d)^(7//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(asin(((1 + sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))), -7 + 4*sqrt(3)))/(91*b^(2//3)*d^3*sqrt(a + b*x)*sqrt(-(((b*c - a*d)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 6),
#     (integrand = (a + b*x)^(1//2)/(c + d*x)^(1//3), result = (6*sqrt(a + b*x)*(c + d*x)^(2//3))/(7*d) + (18*(b*c - a*d)*sqrt(a + b*x))/(7*b^(2//3)*d*((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))) - (9*3^(1//4)*sqrt(2 + sqrt(3))*(b*c - a*d)^(4//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))^2)*EllipticE(asin(((1 + sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))), -7 + 4*sqrt(3)))/(7*b^(2//3)*d^2*sqrt(a + b*x)*sqrt(-(((b*c - a*d)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))^2))) + (6*sqrt(2)*3^(3//4)*(b*c - a*d)^(4//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(asin(((1 + sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))), -7 + 4*sqrt(3)))/(7*b^(2//3)*d^2*sqrt(a + b*x)*sqrt(-(((b*c - a*d)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 5),
#     (integrand = 1/((a + b*x)^(1//2)*(c + d*x)^(1//3)), result = -((6*sqrt(a + b*x))/(b^(2//3)*((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))) + (3*3^(1//4)*sqrt(2 + sqrt(3))*(b*c - a*d)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))^2)*EllipticE(asin(((1 + sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))), -7 + 4*sqrt(3)))/(b^(2//3)*d*sqrt(a + b*x)*sqrt(-(((b*c - a*d)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))^2))) - (2*sqrt(2)*3^(3//4)*(b*c - a*d)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(asin(((1 + sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))), -7 + 4*sqrt(3)))/(b^(2//3)*d*sqrt(a + b*x)*sqrt(-(((b*c - a*d)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 4),
#     (integrand = 1/((a + b*x)^(3//2)*(c + d*x)^(1//3)), result = -((2*(c + d*x)^(2//3))/((b*c - a*d)*sqrt(a + b*x))) - (2*d*sqrt(a + b*x))/(b^(2//3)*(b*c - a*d)*((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))) + (3^(1//4)*sqrt(2 + sqrt(3))*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))^2)*EllipticE(asin(((1 + sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))), -7 + 4*sqrt(3)))/(b^(2//3)*(b*c - a*d)^(2//3)*sqrt(a + b*x)*sqrt(-(((b*c - a*d)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))^2))) - (2*sqrt(2)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(asin(((1 + sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))), -7 + 4*sqrt(3)))/(3^(1//4)*b^(2//3)*(b*c - a*d)^(2//3)*sqrt(a + b*x)*sqrt(-(((b*c - a*d)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 5),
#     (integrand = 1/((a + b*x)^(5//2)*(c + d*x)^(1//3)), result = -((2*(c + d*x)^(2//3))/(3*(b*c - a*d)*(a + b*x)^(3//2))) + (10*d*(c + d*x)^(2//3))/(9*(b*c - a*d)^2*sqrt(a + b*x)) + (10*d^2*sqrt(a + b*x))/(9*b^(2//3)*(b*c - a*d)^2*((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))) - (5*sqrt(2 + sqrt(3))*d*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))^2)*EllipticE(asin(((1 + sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))), -7 + 4*sqrt(3)))/(3*3^(3//4)*b^(2//3)*(b*c - a*d)^(5//3)*sqrt(a + b*x)*sqrt(-(((b*c - a*d)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))^2))) + (10*sqrt(2)*d*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(asin(((1 + sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))), -7 + 4*sqrt(3)))/(9*3^(1//4)*b^(2//3)*(b*c - a*d)^(5//3)*sqrt(a + b*x)*sqrt(-(((b*c - a*d)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 6),
# 
# 
#     (integrand = (a + b*x)^(3//2)/(c + d*x)^(2//3), result = -((54*(b*c - a*d)*sqrt(a + b*x)*(c + d*x)^(1//3))/(55*d^2)) + (6*(a + b*x)^(3//2)*(c + d*x)^(1//3))/(11*d) - (54*3^(3//4)*sqrt(2 - sqrt(3))*(b*c - a*d)^2*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(asin(((1 + sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))), -7 + 4*sqrt(3)))/(55*b^(1//3)*d^3*sqrt(a + b*x)*sqrt(-(((b*c - a*d)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 4),
#     (integrand = (a + b*x)^(1//2)/(c + d*x)^(2//3), result = (6*sqrt(a + b*x)*(c + d*x)^(1//3))/(5*d) + (6*3^(3//4)*sqrt(2 - sqrt(3))*(b*c - a*d)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(asin(((1 + sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))), -7 + 4*sqrt(3)))/(5*b^(1//3)*d^2*sqrt(a + b*x)*sqrt(-(((b*c - a*d)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 3),
#     (integrand = 1/((a + b*x)^(1//2)*(c + d*x)^(2//3)), result = -((2*3^(3//4)*sqrt(2 - sqrt(3))*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(asin(((1 + sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))), -7 + 4*sqrt(3)))/(b^(1//3)*d*sqrt(a + b*x)*sqrt(-(((b*c - a*d)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))^2)))), integration_var = x, mistery_val = 2),
#     (integrand = 1/((a + b*x)^(3//2)*(c + d*x)^(2//3)), result = -((2*(c + d*x)^(1//3))/((b*c - a*d)*sqrt(a + b*x))) + (2*sqrt(2 - sqrt(3))*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(asin(((1 + sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))), -7 + 4*sqrt(3)))/(3^(1//4)*b^(1//3)*(b*c - a*d)*sqrt(a + b*x)*sqrt(-(((b*c - a*d)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 3),
#     (integrand = 1/((a + b*x)^(5//2)*(c + d*x)^(2//3)), result = -((2*(c + d*x)^(1//3))/(3*(b*c - a*d)*(a + b*x)^(3//2))) + (14*d*(c + d*x)^(1//3))/(9*(b*c - a*d)^2*sqrt(a + b*x)) - (14*sqrt(2 - sqrt(3))*d*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(asin(((1 + sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))), -7 + 4*sqrt(3)))/(9*3^(1//4)*b^(1//3)*(b*c - a*d)^2*sqrt(a + b*x)*sqrt(-(((b*c - a*d)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((1 - sqrt(3))*(b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 4),
# 
# 
# # ::Subsection::Closed::
# # Integrands of the form (a+b x)^(m/3) (c+d x)^(n/3)
# 
# 
# # ::Subsubsection::Closed::
# # n>0
# 
# 
#     (integrand = (a + b*x)^(2//3)*(c + d*x)^(1//3), result = ((b*c - a*d)*(a + b*x)^(2//3)*(c + d*x)^(1//3))/(6*b*d) + ((a + b*x)^(5//3)*(c + d*x)^(1//3))/(2*b) + ((b*c - a*d)^2*atan(1/sqrt(3) + (2*d^(1//3)*(a + b*x)^(1//3))/(sqrt(3)*b^(1//3)*(c + d*x)^(1//3))))/(3*sqrt(3)*b^(4//3)*d^(5//3)) + ((b*c - a*d)^2*log(c + d*x))/(18*b^(4//3)*d^(5//3)) + ((b*c - a*d)^2*log(-1 + (d^(1//3)*(a + b*x)^(1//3))/(b^(1//3)*(c + d*x)^(1//3))))/(6*b^(4//3)*d^(5//3)), integration_var = x, mistery_val = 3),
#     (integrand = (c + d*x)^(1//3)/(a + b*x)^(1//3), result = ((a + b*x)^(2//3)*(c + d*x)^(1//3))/b - ((b*c - a*d)*atan(1/sqrt(3) + (2*d^(1//3)*(a + b*x)^(1//3))/(sqrt(3)*b^(1//3)*(c + d*x)^(1//3))))/(sqrt(3)*b^(4//3)*d^(2//3)) - ((b*c - a*d)*log(c + d*x))/(6*b^(4//3)*d^(2//3)) - ((b*c - a*d)*log(-1 + (d^(1//3)*(a + b*x)^(1//3))/(b^(1//3)*(c + d*x)^(1//3))))/(2*b^(4//3)*d^(2//3)), integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^(1//3)/(a + b*x)^(4//3), result = -((3*(c + d*x)^(1//3))/(b*(a + b*x)^(1//3))) - (sqrt(3)*d^(1//3)*atan(1/sqrt(3) + (2*d^(1//3)*(a + b*x)^(1//3))/(sqrt(3)*b^(1//3)*(c + d*x)^(1//3))))/b^(4//3) - (d^(1//3)*log(c + d*x))/(2*b^(4//3)) - (3*d^(1//3)*log(-1 + (d^(1//3)*(a + b*x)^(1//3))/(b^(1//3)*(c + d*x)^(1//3))))/(2*b^(4//3)), integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^(1//3)/(a + b*x)^(7//3), result = -((3*(c + d*x)^(4//3))/(4*(b*c - a*d)*(a + b*x)^(4//3))), integration_var = x, mistery_val = 1),
#     (integrand = (c + d*x)^(1//3)/(a + b*x)^(10//3), result = -((3*(c + d*x)^(4//3))/(7*(b*c - a*d)*(a + b*x)^(7//3))) + (9*d*(c + d*x)^(4//3))/(28*(b*c - a*d)^2*(a + b*x)^(4//3)), integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^(1//3)/(a + b*x)^(13//3), result = -((3*(c + d*x)^(4//3))/(10*(b*c - a*d)*(a + b*x)^(10//3))) + (9*d*(c + d*x)^(4//3))/(35*(b*c - a*d)^2*(a + b*x)^(7//3)) - (27*d^2*(c + d*x)^(4//3))/(140*(b*c - a*d)^3*(a + b*x)^(4//3)), integration_var = x, mistery_val = 3),
#     (integrand = (c + d*x)^(1//3)/(a + b*x)^(16//3), result = -((3*(c + d*x)^(4//3))/(13*(b*c - a*d)*(a + b*x)^(13//3))) + (27*d*(c + d*x)^(4//3))/(130*(b*c - a*d)^2*(a + b*x)^(10//3)) - (81*d^2*(c + d*x)^(4//3))/(455*(b*c - a*d)^3*(a + b*x)^(7//3)) + (243*d^3*(c + d*x)^(4//3))/(1820*(b*c - a*d)^4*(a + b*x)^(4//3)), integration_var = x, mistery_val = 4),
# 
#     (integrand = (a + b*x)^(4//3)*(c + d*x)^(1//3), result = -((3*(b*c - a*d)^2*(a + b*x)^(1//3)*(c + d*x)^(1//3))/(20*b*d^2)) + (3*(b*c - a*d)*(a + b*x)^(4//3)*(c + d*x)^(1//3))/(40*b*d) + (3*(a + b*x)^(7//3)*(c + d*x)^(1//3))/(8*b) + (3^(3//4)*sqrt(2 + sqrt(3))*(b*c - a*d)^3*((a + b*x)*(c + d*x))^(2//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))*sqrt(((b*c - a*d)^(4//3) - 2^(2//3)*b^(1//3)*d^(1//3)*(b*c - a*d)^(2//3)*((a + b*x)*(c + d*x))^(1//3) + 2*2^(1//3)*b^(2//3)*d^(2//3)*((a + b*x)*(c + d*x))^(2//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*EllipticF(asin(((1 - sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))), -7 - 4*sqrt(3)))/(10*2^(2//3)*b^(4//3)*d^(7//3)*(a + b*x)^(2//3)*(c + d*x)^(2//3)*(b*c + a*d + 2*b*d*x)*sqrt(((b*c - a*d)^(2//3)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 6),
#     (integrand = (a + b*x)^(1//3)*(c + d*x)^(1//3), result = (3*(b*c - a*d)*(a + b*x)^(1//3)*(c + d*x)^(1//3))/(10*b*d) + (3*(a + b*x)^(4//3)*(c + d*x)^(1//3))/(5*b) - (3^(3//4)*sqrt(2 + sqrt(3))*(b*c - a*d)^2*((a + b*x)*(c + d*x))^(2//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))*sqrt(((b*c - a*d)^(4//3) - 2^(2//3)*b^(1//3)*d^(1//3)*(b*c - a*d)^(2//3)*((a + b*x)*(c + d*x))^(1//3) + 2*2^(1//3)*b^(2//3)*d^(2//3)*((a + b*x)*(c + d*x))^(2//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*EllipticF(asin(((1 - sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))), -7 - 4*sqrt(3)))/(5*2^(2//3)*b^(4//3)*d^(4//3)*(a + b*x)^(2//3)*(c + d*x)^(2//3)*(b*c + a*d + 2*b*d*x)*sqrt(((b*c - a*d)^(2//3)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 5),
#     (integrand = (c + d*x)^(1//3)/(a + b*x)^(2//3), result = (3*(a + b*x)^(1//3)*(c + d*x)^(1//3))/(2*b) + (3^(3//4)*sqrt(2 + sqrt(3))*(b*c - a*d)*((a + b*x)*(c + d*x))^(2//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))*sqrt(((b*c - a*d)^(4//3) - 2^(2//3)*b^(1//3)*d^(1//3)*(b*c - a*d)^(2//3)*((a + b*x)*(c + d*x))^(1//3) + 2*2^(1//3)*b^(2//3)*d^(2//3)*((a + b*x)*(c + d*x))^(2//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*EllipticF(asin(((1 - sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))), -7 - 4*sqrt(3)))/(2^(2//3)*b^(4//3)*d^(1//3)*(a + b*x)^(2//3)*(c + d*x)^(2//3)*(b*c + a*d + 2*b*d*x)*sqrt(((b*c - a*d)^(2//3)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 4),
#     (integrand = (c + d*x)^(1//3)/(a + b*x)^(5//3), result = -((3*(c + d*x)^(1//3))/(2*b*(a + b*x)^(2//3))) + (3^(3//4)*sqrt(2 + sqrt(3))*d^(2//3)*((a + b*x)*(c + d*x))^(2//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))*sqrt(((b*c - a*d)^(4//3) - 2^(2//3)*b^(1//3)*d^(1//3)*(b*c - a*d)^(2//3)*((a + b*x)*(c + d*x))^(1//3) + 2*2^(1//3)*b^(2//3)*d^(2//3)*((a + b*x)*(c + d*x))^(2//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*EllipticF(asin(((1 - sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))), -7 - 4*sqrt(3)))/(2^(2//3)*b^(4//3)*(a + b*x)^(2//3)*(c + d*x)^(2//3)*(b*c + a*d + 2*b*d*x)*sqrt(((b*c - a*d)^(2//3)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 4),
#     (integrand = (c + d*x)^(1//3)/(a + b*x)^(8//3), result = -((3*(c + d*x)^(1//3))/(5*b*(a + b*x)^(5//3))) - (3*d*(c + d*x)^(1//3))/(10*b*(b*c - a*d)*(a + b*x)^(2//3)) - (3^(3//4)*sqrt(2 + sqrt(3))*d^(5//3)*((a + b*x)*(c + d*x))^(2//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))*sqrt(((b*c - a*d)^(4//3) - 2^(2//3)*b^(1//3)*d^(1//3)*(b*c - a*d)^(2//3)*((a + b*x)*(c + d*x))^(1//3) + 2*2^(1//3)*b^(2//3)*d^(2//3)*((a + b*x)*(c + d*x))^(2//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*EllipticF(asin(((1 - sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))), -7 - 4*sqrt(3)))/(5*2^(2//3)*b^(4//3)*(b*c - a*d)*(a + b*x)^(2//3)*(c + d*x)^(2//3)*(b*c + a*d + 2*b*d*x)*sqrt(((b*c - a*d)^(2//3)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 5),
# 
# 
# # ::Subsubsection::Closed::
# # n<0
# 
# 
#     (integrand = (a + b*x)^(4//3)/(c + d*x)^(1//3), result = (-2*(b*c - a*d)*(a + b*x)^(1//3)*(c + d*x)^(2//3))/(3*d^2) + ((a + b*x)^(4//3)*(c + d*x)^(2//3))/(2*d) - (2*(b*c - a*d)^2*atan(1/sqrt(3) + (2*b^(1//3)*(c + d*x)^(1//3))/(sqrt(3)*d^(1//3)*(a + b*x)^(1//3))))/(3*sqrt(3)*b^(2//3)*d^(7//3)) - ((b*c - a*d)^2*log(a + b*x))/(9*b^(2//3)*d^(7//3)) - ((b*c - a*d)^2*log(-1 + (b^(1//3)*(c + d*x)^(1//3))/(d^(1//3)*(a + b*x)^(1//3))))/(3*b^(2//3)*d^(7//3)), integration_var = x, mistery_val = 3),
#     (integrand = (a + b*x)^(1//3)/(c + d*x)^(1//3), result = ((a + b*x)^(1//3)*(c + d*x)^(2//3))/d + ((b*c - a*d)*atan(1/sqrt(3) + (2*b^(1//3)*(c + d*x)^(1//3))/(sqrt(3)*d^(1//3)*(a + b*x)^(1//3))))/(sqrt(3)*b^(2//3)*d^(4//3)) + ((b*c - a*d)*log(a + b*x))/(6*b^(2//3)*d^(4//3)) + ((b*c - a*d)*log(-1 + (b^(1//3)*(c + d*x)^(1//3))/(d^(1//3)*(a + b*x)^(1//3))))/(2*b^(2//3)*d^(4//3)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((a + b*x)^(2//3)*(c + d*x)^(1//3)), result = -((sqrt(3)*atan(1/sqrt(3) + (2*b^(1//3)*(c + d*x)^(1//3))/(sqrt(3)*d^(1//3)*(a + b*x)^(1//3))))/(b^(2//3)*d^(1//3))) - log(a + b*x)/(2*b^(2//3)*d^(1//3)) - (3*log(-1 + (b^(1//3)*(c + d*x)^(1//3))/(d^(1//3)*(a + b*x)^(1//3))))/(2*b^(2//3)*d^(1//3)), integration_var = x, mistery_val = 1),
#     (integrand = 1/((a + b*x)^(5//3)*(c + d*x)^(1//3)), result = (-3*(c + d*x)^(2//3))/(2*(b*c - a*d)*(a + b*x)^(2//3)), integration_var = x, mistery_val = 1),
#     (integrand = 1/((a + b*x)^(8//3)*(c + d*x)^(1//3)), result = (-3*(c + d*x)^(2//3))/(5*(b*c - a*d)*(a + b*x)^(5//3)) + (9*d*(c + d*x)^(2//3))/(10*(b*c - a*d)^2*(a + b*x)^(2//3)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((a + b*x)^(11//3)*(c + d*x)^(1//3)), result = (-3*(c + d*x)^(2//3))/(8*(b*c - a*d)*(a + b*x)^(8//3)) + (9*d*(c + d*x)^(2//3))/(20*(b*c - a*d)^2*(a + b*x)^(5//3)) - (27*d^2*(c + d*x)^(2//3))/(40*(b*c - a*d)^3*(a + b*x)^(2//3)), integration_var = x, mistery_val = 3),
#     (integrand = 1/((a + b*x)^(14//3)*(c + d*x)^(1//3)), result = -((3*(c + d*x)^(2//3))/(11*(b*c - a*d)*(a + b*x)^(11//3))) + (27*d*(c + d*x)^(2//3))/(88*(b*c - a*d)^2*(a + b*x)^(8//3)) - (81*d^2*(c + d*x)^(2//3))/(220*(b*c - a*d)^3*(a + b*x)^(5//3)) + (243*d^3*(c + d*x)^(2//3))/(440*(b*c - a*d)^4*(a + b*x)^(2//3)), integration_var = x, mistery_val = 4),
# 
#     (integrand = (a + b*x)^(8//3)/(c + d*x)^(1//3), result = (3*(b*c - a*d)^2*(a + b*x)^(2//3)*(c + d*x)^(2//3))/(7*d^3) - (12*(b*c - a*d)*(a + b*x)^(5//3)*(c + d*x)^(2//3))/(35*d^2) + (3*(a + b*x)^(8//3)*(c + d*x)^(2//3))/(10*d) - (3*2^(2//3)*(b*c - a*d)^3*((a + b*x)*(c + d*x))^(1//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*sqrt((a*d + b*(c + 2*d*x))^2))/(7*b^(2//3)*d^(11//3)*(a + b*x)^(1//3)*(c + d*x)^(1//3)*(b*c + a*d + 2*b*d*x)*((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))) + (3*3^(1//4)*sqrt(2 - sqrt(3))*(b*c - a*d)^(11//3)*((a + b*x)*(c + d*x))^(1//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))*sqrt(((b*c - a*d)^(4//3) - 2^(2//3)*b^(1//3)*d^(1//3)*(b*c - a*d)^(2//3)*((a + b*x)*(c + d*x))^(1//3) + 2*2^(1//3)*b^(2//3)*d^(2//3)*((a + b*x)*(c + d*x))^(2//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*EllipticE(asin(((1 - sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))), -7 - 4*sqrt(3)))/(7*2^(1//3)*b^(2//3)*d^(11//3)*(a + b*x)^(1//3)*(c + d*x)^(1//3)*(b*c + a*d + 2*b*d*x)*sqrt(((b*c - a*d)^(2//3)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*sqrt((a*d + b*(c + 2*d*x))^2)) - (2*2^(1//6)*3^(3//4)*(b*c - a*d)^(11//3)*((a + b*x)*(c + d*x))^(1//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))*sqrt(((b*c - a*d)^(4//3) - 2^(2//3)*b^(1//3)*d^(1//3)*(b*c - a*d)^(2//3)*((a + b*x)*(c + d*x))^(1//3) + 2*2^(1//3)*b^(2//3)*d^(2//3)*((a + b*x)*(c + d*x))^(2//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*EllipticF(asin(((1 - sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))), -7 - 4*sqrt(3)))/(7*b^(2//3)*d^(11//3)*(a + b*x)^(1//3)*(c + d*x)^(1//3)*(b*c + a*d + 2*b*d*x)*sqrt(((b*c - a*d)^(2//3)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 8),
#     (integrand = (a + b*x)^(5//3)/(c + d*x)^(1//3), result = -((15*(b*c - a*d)*(a + b*x)^(2//3)*(c + d*x)^(2//3))/(28*d^2)) + (3*(a + b*x)^(5//3)*(c + d*x)^(2//3))/(7*d) + (15*(b*c - a*d)^2*((a + b*x)*(c + d*x))^(1//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*sqrt((a*d + b*(c + 2*d*x))^2))/(14*2^(1//3)*b^(2//3)*d^(8//3)*(a + b*x)^(1//3)*(c + d*x)^(1//3)*(b*c + a*d + 2*b*d*x)*((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))) - (15*3^(1//4)*sqrt(2 - sqrt(3))*(b*c - a*d)^(8//3)*((a + b*x)*(c + d*x))^(1//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))*sqrt(((b*c - a*d)^(4//3) - 2^(2//3)*b^(1//3)*d^(1//3)*(b*c - a*d)^(2//3)*((a + b*x)*(c + d*x))^(1//3) + 2*2^(1//3)*b^(2//3)*d^(2//3)*((a + b*x)*(c + d*x))^(2//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*EllipticE(asin(((1 - sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))), -7 - 4*sqrt(3)))/(28*2^(1//3)*b^(2//3)*d^(8//3)*(a + b*x)^(1//3)*(c + d*x)^(1//3)*(b*c + a*d + 2*b*d*x)*sqrt(((b*c - a*d)^(2//3)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*sqrt((a*d + b*(c + 2*d*x))^2)) + (5*3^(3//4)*(b*c - a*d)^(8//3)*((a + b*x)*(c + d*x))^(1//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))*sqrt(((b*c - a*d)^(4//3) - 2^(2//3)*b^(1//3)*d^(1//3)*(b*c - a*d)^(2//3)*((a + b*x)*(c + d*x))^(1//3) + 2*2^(1//3)*b^(2//3)*d^(2//3)*((a + b*x)*(c + d*x))^(2//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*EllipticF(asin(((1 - sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))), -7 - 4*sqrt(3)))/(7*2^(5//6)*b^(2//3)*d^(8//3)*(a + b*x)^(1//3)*(c + d*x)^(1//3)*(b*c + a*d + 2*b*d*x)*sqrt(((b*c - a*d)^(2//3)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 7),
#     (integrand = (a + b*x)^(2//3)/(c + d*x)^(1//3), result = (3*(a + b*x)^(2//3)*(c + d*x)^(2//3))/(4*d) - (3*(b*c - a*d)*((a + b*x)*(c + d*x))^(1//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*sqrt((a*d + b*(c + 2*d*x))^2))/(2*2^(1//3)*b^(2//3)*d^(5//3)*(a + b*x)^(1//3)*(c + d*x)^(1//3)*(b*c + a*d + 2*b*d*x)*((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))) + (3*3^(1//4)*sqrt(2 - sqrt(3))*(b*c - a*d)^(5//3)*((a + b*x)*(c + d*x))^(1//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))*sqrt(((b*c - a*d)^(4//3) - 2^(2//3)*b^(1//3)*d^(1//3)*(b*c - a*d)^(2//3)*((a + b*x)*(c + d*x))^(1//3) + 2*2^(1//3)*b^(2//3)*d^(2//3)*((a + b*x)*(c + d*x))^(2//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*EllipticE(asin(((1 - sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))), -7 - 4*sqrt(3)))/(4*2^(1//3)*b^(2//3)*d^(5//3)*(a + b*x)^(1//3)*(c + d*x)^(1//3)*(b*c + a*d + 2*b*d*x)*sqrt(((b*c - a*d)^(2//3)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*sqrt((a*d + b*(c + 2*d*x))^2)) - (3^(3//4)*(b*c - a*d)^(5//3)*((a + b*x)*(c + d*x))^(1//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))*sqrt(((b*c - a*d)^(4//3) - 2^(2//3)*b^(1//3)*d^(1//3)*(b*c - a*d)^(2//3)*((a + b*x)*(c + d*x))^(1//3) + 2*2^(1//3)*b^(2//3)*d^(2//3)*((a + b*x)*(c + d*x))^(2//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*EllipticF(asin(((1 - sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))), -7 - 4*sqrt(3)))/(2^(5//6)*b^(2//3)*d^(5//3)*(a + b*x)^(1//3)*(c + d*x)^(1//3)*(b*c + a*d + 2*b*d*x)*sqrt(((b*c - a*d)^(2//3)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 6),
#     (integrand = 1/((a + b*x)^(1//3)*(c + d*x)^(1//3)), result = (3*((a + b*x)*(c + d*x))^(1//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*sqrt((a*d + b*(c + 2*d*x))^2))/(2^(1//3)*b^(2//3)*d^(2//3)*(a + b*x)^(1//3)*(c + d*x)^(1//3)*(b*c + a*d + 2*b*d*x)*((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))) - (3*3^(1//4)*sqrt(2 - sqrt(3))*(b*c - a*d)^(2//3)*((a + b*x)*(c + d*x))^(1//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))*sqrt(((b*c - a*d)^(4//3) - 2^(2//3)*b^(1//3)*d^(1//3)*(b*c - a*d)^(2//3)*((a + b*x)*(c + d*x))^(1//3) + 2*2^(1//3)*b^(2//3)*d^(2//3)*((a + b*x)*(c + d*x))^(2//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*EllipticE(asin(((1 - sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))), -7 - 4*sqrt(3)))/(2*2^(1//3)*b^(2//3)*d^(2//3)*(a + b*x)^(1//3)*(c + d*x)^(1//3)*(b*c + a*d + 2*b*d*x)*sqrt(((b*c - a*d)^(2//3)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*sqrt((a*d + b*(c + 2*d*x))^2)) + (2^(1//6)*3^(3//4)*(b*c - a*d)^(2//3)*((a + b*x)*(c + d*x))^(1//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))*sqrt(((b*c - a*d)^(4//3) - 2^(2//3)*b^(1//3)*d^(1//3)*(b*c - a*d)^(2//3)*((a + b*x)*(c + d*x))^(1//3) + 2*2^(1//3)*b^(2//3)*d^(2//3)*((a + b*x)*(c + d*x))^(2//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*EllipticF(asin(((1 - sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))), -7 - 4*sqrt(3)))/(b^(2//3)*d^(2//3)*(a + b*x)^(1//3)*(c + d*x)^(1//3)*(b*c + a*d + 2*b*d*x)*sqrt(((b*c - a*d)^(2//3)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 5),
#     (integrand = 1/((a + b*x)^(4//3)*(c + d*x)^(1//3)), result = -((3*(c + d*x)^(2//3))/((b*c - a*d)*(a + b*x)^(1//3))) + (3*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*sqrt((a*d + b*(c + 2*d*x))^2))/(2^(1//3)*b^(2//3)*(b*c - a*d)*(a + b*x)^(1//3)*(c + d*x)^(1//3)*(b*c + a*d + 2*b*d*x)*((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))) - (3*3^(1//4)*sqrt(2 - sqrt(3))*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))*sqrt(((b*c - a*d)^(4//3) - 2^(2//3)*b^(1//3)*d^(1//3)*(b*c - a*d)^(2//3)*((a + b*x)*(c + d*x))^(1//3) + 2*2^(1//3)*b^(2//3)*d^(2//3)*((a + b*x)*(c + d*x))^(2//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*EllipticE(asin(((1 - sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))), -7 - 4*sqrt(3)))/(2*2^(1//3)*b^(2//3)*(b*c - a*d)^(1//3)*(a + b*x)^(1//3)*(c + d*x)^(1//3)*(b*c + a*d + 2*b*d*x)*sqrt(((b*c - a*d)^(2//3)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*sqrt((a*d + b*(c + 2*d*x))^2)) + (2^(1//6)*3^(3//4)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))*sqrt(((b*c - a*d)^(4//3) - 2^(2//3)*b^(1//3)*d^(1//3)*(b*c - a*d)^(2//3)*((a + b*x)*(c + d*x))^(1//3) + 2*2^(1//3)*b^(2//3)*d^(2//3)*((a + b*x)*(c + d*x))^(2//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*EllipticF(asin(((1 - sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))), -7 - 4*sqrt(3)))/(b^(2//3)*(b*c - a*d)^(1//3)*(a + b*x)^(1//3)*(c + d*x)^(1//3)*(b*c + a*d + 2*b*d*x)*sqrt(((b*c - a*d)^(2//3)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 6),
#     (integrand = 1/((a + b*x)^(7//3)*(c + d*x)^(1//3)), result = -((3*(c + d*x)^(2//3))/(4*(b*c - a*d)*(a + b*x)^(4//3))) + (3*d*(c + d*x)^(2//3))/(2*(b*c - a*d)^2*(a + b*x)^(1//3)) - (3*d^(4//3)*((a + b*x)*(c + d*x))^(1//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*sqrt((a*d + b*(c + 2*d*x))^2))/(2*2^(1//3)*b^(2//3)*(b*c - a*d)^2*(a + b*x)^(1//3)*(c + d*x)^(1//3)*(b*c + a*d + 2*b*d*x)*((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))) + (3*3^(1//4)*sqrt(2 - sqrt(3))*d^(4//3)*((a + b*x)*(c + d*x))^(1//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))*sqrt(((b*c - a*d)^(4//3) - 2^(2//3)*b^(1//3)*d^(1//3)*(b*c - a*d)^(2//3)*((a + b*x)*(c + d*x))^(1//3) + 2*2^(1//3)*b^(2//3)*d^(2//3)*((a + b*x)*(c + d*x))^(2//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*EllipticE(asin(((1 - sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))), -7 - 4*sqrt(3)))/(4*2^(1//3)*b^(2//3)*(b*c - a*d)^(4//3)*(a + b*x)^(1//3)*(c + d*x)^(1//3)*(b*c + a*d + 2*b*d*x)*sqrt(((b*c - a*d)^(2//3)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*sqrt((a*d + b*(c + 2*d*x))^2)) - (3^(3//4)*d^(4//3)*((a + b*x)*(c + d*x))^(1//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))*sqrt(((b*c - a*d)^(4//3) - 2^(2//3)*b^(1//3)*d^(1//3)*(b*c - a*d)^(2//3)*((a + b*x)*(c + d*x))^(1//3) + 2*2^(1//3)*b^(2//3)*d^(2//3)*((a + b*x)*(c + d*x))^(2//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*EllipticF(asin(((1 - sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))), -7 - 4*sqrt(3)))/(2^(5//6)*b^(2//3)*(b*c - a*d)^(4//3)*(a + b*x)^(1//3)*(c + d*x)^(1//3)*(b*c + a*d + 2*b*d*x)*sqrt(((b*c - a*d)^(2//3)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 7),
#     (integrand = 1/((a + b*x)^(10//3)*(c + d*x)^(1//3)), result = -((3*(c + d*x)^(2//3))/(7*(b*c - a*d)*(a + b*x)^(7//3))) + (15*d*(c + d*x)^(2//3))/(28*(b*c - a*d)^2*(a + b*x)^(4//3)) - (15*d^2*(c + d*x)^(2//3))/(14*(b*c - a*d)^3*(a + b*x)^(1//3)) + (15*d^(7//3)*((a + b*x)*(c + d*x))^(1//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*sqrt((a*d + b*(c + 2*d*x))^2))/(14*2^(1//3)*b^(2//3)*(b*c - a*d)^3*(a + b*x)^(1//3)*(c + d*x)^(1//3)*(b*c + a*d + 2*b*d*x)*((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))) - (15*3^(1//4)*sqrt(2 - sqrt(3))*d^(7//3)*((a + b*x)*(c + d*x))^(1//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))*sqrt(((b*c - a*d)^(4//3) - 2^(2//3)*b^(1//3)*d^(1//3)*(b*c - a*d)^(2//3)*((a + b*x)*(c + d*x))^(1//3) + 2*2^(1//3)*b^(2//3)*d^(2//3)*((a + b*x)*(c + d*x))^(2//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*EllipticE(asin(((1 - sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))), -7 - 4*sqrt(3)))/(28*2^(1//3)*b^(2//3)*(b*c - a*d)^(7//3)*(a + b*x)^(1//3)*(c + d*x)^(1//3)*(b*c + a*d + 2*b*d*x)*sqrt(((b*c - a*d)^(2//3)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*sqrt((a*d + b*(c + 2*d*x))^2)) + (5*3^(3//4)*d^(7//3)*((a + b*x)*(c + d*x))^(1//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))*sqrt(((b*c - a*d)^(4//3) - 2^(2//3)*b^(1//3)*d^(1//3)*(b*c - a*d)^(2//3)*((a + b*x)*(c + d*x))^(1//3) + 2*2^(1//3)*b^(2//3)*d^(2//3)*((a + b*x)*(c + d*x))^(2//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*EllipticF(asin(((1 - sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))), -7 - 4*sqrt(3)))/(7*2^(5//6)*b^(2//3)*(b*c - a*d)^(7//3)*(a + b*x)^(1//3)*(c + d*x)^(1//3)*(b*c + a*d + 2*b*d*x)*sqrt(((b*c - a*d)^(2//3)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 8),
# 
# 
#     (integrand = (a + b*x)^(5//3)/(c + d*x)^(2//3), result = (-5*(b*c - a*d)*(a + b*x)^(2//3)*(c + d*x)^(1//3))/(6*d^2) + ((a + b*x)^(5//3)*(c + d*x)^(1//3))/(2*d) - (5*(b*c - a*d)^2*atan(1/sqrt(3) + (2*d^(1//3)*(a + b*x)^(1//3))/(sqrt(3)*b^(1//3)*(c + d*x)^(1//3))))/(3*sqrt(3)*b^(1//3)*d^(8//3)) - (5*(b*c - a*d)^2*log(c + d*x))/(18*b^(1//3)*d^(8//3)) - (5*(b*c - a*d)^2*log(-1 + (d^(1//3)*(a + b*x)^(1//3))/(b^(1//3)*(c + d*x)^(1//3))))/(6*b^(1//3)*d^(8//3)), integration_var = x, mistery_val = 3),
#     (integrand = (a + b*x)^(2//3)/(c + d*x)^(2//3), result = ((a + b*x)^(2//3)*(c + d*x)^(1//3))/d + (2*(b*c - a*d)*atan(1/sqrt(3) + (2*d^(1//3)*(a + b*x)^(1//3))/(sqrt(3)*b^(1//3)*(c + d*x)^(1//3))))/(sqrt(3)*b^(1//3)*d^(5//3)) + ((b*c - a*d)*log(c + d*x))/(3*b^(1//3)*d^(5//3)) + ((b*c - a*d)*log(-1 + (d^(1//3)*(a + b*x)^(1//3))/(b^(1//3)*(c + d*x)^(1//3))))/(b^(1//3)*d^(5//3)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((a + b*x)^(1//3)*(c + d*x)^(2//3)), result = -((sqrt(3)*atan(1/sqrt(3) + (2*d^(1//3)*(a + b*x)^(1//3))/(sqrt(3)*b^(1//3)*(c + d*x)^(1//3))))/(b^(1//3)*d^(2//3))) - log(c + d*x)/(2*b^(1//3)*d^(2//3)) - (3*log(-1 + (d^(1//3)*(a + b*x)^(1//3))/(b^(1//3)*(c + d*x)^(1//3))))/(2*b^(1//3)*d^(2//3)), integration_var = x, mistery_val = 1),
#     (integrand = 1/((a + b*x)^(4//3)*(c + d*x)^(2//3)), result = (-3*(c + d*x)^(1//3))/((b*c - a*d)*(a + b*x)^(1//3)), integration_var = x, mistery_val = 1),
#     (integrand = 1/((a + b*x)^(7//3)*(c + d*x)^(2//3)), result = (-3*(c + d*x)^(1//3))/(4*(b*c - a*d)*(a + b*x)^(4//3)) + (9*d*(c + d*x)^(1//3))/(4*(b*c - a*d)^2*(a + b*x)^(1//3)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((a + b*x)^(10//3)*(c + d*x)^(2//3)), result = (-3*(c + d*x)^(1//3))/(7*(b*c - a*d)*(a + b*x)^(7//3)) + (9*d*(c + d*x)^(1//3))/(14*(b*c - a*d)^2*(a + b*x)^(4//3)) - (27*d^2*(c + d*x)^(1//3))/(14*(b*c - a*d)^3*(a + b*x)^(1//3)), integration_var = x, mistery_val = 3),
#     (integrand = 1/((a + b*x)^(13//3)*(c + d*x)^(2//3)), result = -((3*(c + d*x)^(1//3))/(10*(b*c - a*d)*(a + b*x)^(10//3))) + (27*d*(c + d*x)^(1//3))/(70*(b*c - a*d)^2*(a + b*x)^(7//3)) - (81*d^2*(c + d*x)^(1//3))/(140*(b*c - a*d)^3*(a + b*x)^(4//3)) + (243*d^3*(c + d*x)^(1//3))/(140*(b*c - a*d)^4*(a + b*x)^(1//3)), integration_var = x, mistery_val = 4),
# 
#     (integrand = (a + b*x)^(7//3)/(c + d*x)^(2//3), result = (21*(b*c - a*d)^2*(a + b*x)^(1//3)*(c + d*x)^(1//3))/(20*d^3) - (21*(b*c - a*d)*(a + b*x)^(4//3)*(c + d*x)^(1//3))/(40*d^2) + (3*(a + b*x)^(7//3)*(c + d*x)^(1//3))/(8*d) - (7*3^(3//4)*sqrt(2 + sqrt(3))*(b*c - a*d)^3*((a + b*x)*(c + d*x))^(2//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))*sqrt(((b*c - a*d)^(4//3) - 2^(2//3)*b^(1//3)*d^(1//3)*(b*c - a*d)^(2//3)*((a + b*x)*(c + d*x))^(1//3) + 2*2^(1//3)*b^(2//3)*d^(2//3)*((a + b*x)*(c + d*x))^(2//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*EllipticF(asin(((1 - sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))), -7 - 4*sqrt(3)))/(10*2^(2//3)*b^(1//3)*d^(10//3)*(a + b*x)^(2//3)*(c + d*x)^(2//3)*(b*c + a*d + 2*b*d*x)*sqrt(((b*c - a*d)^(2//3)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 6),
#     (integrand = (a + b*x)^(4//3)/(c + d*x)^(2//3), result = -((6*(b*c - a*d)*(a + b*x)^(1//3)*(c + d*x)^(1//3))/(5*d^2)) + (3*(a + b*x)^(4//3)*(c + d*x)^(1//3))/(5*d) + (2*2^(1//3)*3^(3//4)*sqrt(2 + sqrt(3))*(b*c - a*d)^2*((a + b*x)*(c + d*x))^(2//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))*sqrt(((b*c - a*d)^(4//3) - 2^(2//3)*b^(1//3)*d^(1//3)*(b*c - a*d)^(2//3)*((a + b*x)*(c + d*x))^(1//3) + 2*2^(1//3)*b^(2//3)*d^(2//3)*((a + b*x)*(c + d*x))^(2//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*EllipticF(asin(((1 - sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))), -7 - 4*sqrt(3)))/(5*b^(1//3)*d^(7//3)*(a + b*x)^(2//3)*(c + d*x)^(2//3)*(b*c + a*d + 2*b*d*x)*sqrt(((b*c - a*d)^(2//3)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 5),
#     (integrand = (a + b*x)^(1//3)/(c + d*x)^(2//3), result = (3*(a + b*x)^(1//3)*(c + d*x)^(1//3))/(2*d) - (3^(3//4)*sqrt(2 + sqrt(3))*(b*c - a*d)*((a + b*x)*(c + d*x))^(2//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))*sqrt(((b*c - a*d)^(4//3) - 2^(2//3)*b^(1//3)*d^(1//3)*(b*c - a*d)^(2//3)*((a + b*x)*(c + d*x))^(1//3) + 2*2^(1//3)*b^(2//3)*d^(2//3)*((a + b*x)*(c + d*x))^(2//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*EllipticF(asin(((1 - sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))), -7 - 4*sqrt(3)))/(2^(2//3)*b^(1//3)*d^(4//3)*(a + b*x)^(2//3)*(c + d*x)^(2//3)*(b*c + a*d + 2*b*d*x)*sqrt(((b*c - a*d)^(2//3)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 4),
#     (integrand = 1/((a + b*x)^(2//3)*(c + d*x)^(2//3)), result = (2^(1//3)*3^(3//4)*sqrt(2 + sqrt(3))*((a + b*x)*(c + d*x))^(2//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))*sqrt(((b*c - a*d)^(4//3) - 2^(2//3)*b^(1//3)*d^(1//3)*(b*c - a*d)^(2//3)*((a + b*x)*(c + d*x))^(1//3) + 2*2^(1//3)*b^(2//3)*d^(2//3)*((a + b*x)*(c + d*x))^(2//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*EllipticF(asin(((1 - sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))), -7 - 4*sqrt(3)))/(b^(1//3)*d^(1//3)*(a + b*x)^(2//3)*(c + d*x)^(2//3)*(b*c + a*d + 2*b*d*x)*sqrt(((b*c - a*d)^(2//3)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 3),
#     (integrand = 1/((a + b*x)^(5//3)*(c + d*x)^(2//3)), result = -((3*(c + d*x)^(1//3))/(2*(b*c - a*d)*(a + b*x)^(2//3))) - (3^(3//4)*sqrt(2 + sqrt(3))*d^(2//3)*((a + b*x)*(c + d*x))^(2//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))*sqrt(((b*c - a*d)^(4//3) - 2^(2//3)*b^(1//3)*d^(1//3)*(b*c - a*d)^(2//3)*((a + b*x)*(c + d*x))^(1//3) + 2*2^(1//3)*b^(2//3)*d^(2//3)*((a + b*x)*(c + d*x))^(2//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*EllipticF(asin(((1 - sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))), -7 - 4*sqrt(3)))/(2^(2//3)*b^(1//3)*(b*c - a*d)*(a + b*x)^(2//3)*(c + d*x)^(2//3)*(b*c + a*d + 2*b*d*x)*sqrt(((b*c - a*d)^(2//3)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 4),
#     (integrand = 1/((a + b*x)^(8//3)*(c + d*x)^(2//3)), result = -((3*(c + d*x)^(1//3))/(5*(b*c - a*d)*(a + b*x)^(5//3))) + (6*d*(c + d*x)^(1//3))/(5*(b*c - a*d)^2*(a + b*x)^(2//3)) + (2*2^(1//3)*3^(3//4)*sqrt(2 + sqrt(3))*d^(5//3)*((a + b*x)*(c + d*x))^(2//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))*sqrt(((b*c - a*d)^(4//3) - 2^(2//3)*b^(1//3)*d^(1//3)*(b*c - a*d)^(2//3)*((a + b*x)*(c + d*x))^(1//3) + 2*2^(1//3)*b^(2//3)*d^(2//3)*((a + b*x)*(c + d*x))^(2//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*EllipticF(asin(((1 - sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))), -7 - 4*sqrt(3)))/(5*b^(1//3)*(b*c - a*d)^2*(a + b*x)^(2//3)*(c + d*x)^(2//3)*(b*c + a*d + 2*b*d*x)*sqrt(((b*c - a*d)^(2//3)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 5),
#     (integrand = 1/((a + b*x)^(11//3)*(c + d*x)^(2//3)), result = -((3*(c + d*x)^(1//3))/(8*(b*c - a*d)*(a + b*x)^(8//3))) + (21*d*(c + d*x)^(1//3))/(40*(b*c - a*d)^2*(a + b*x)^(5//3)) - (21*d^2*(c + d*x)^(1//3))/(20*(b*c - a*d)^3*(a + b*x)^(2//3)) - (7*3^(3//4)*sqrt(2 + sqrt(3))*d^(8//3)*((a + b*x)*(c + d*x))^(2//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))*sqrt(((b*c - a*d)^(4//3) - 2^(2//3)*b^(1//3)*d^(1//3)*(b*c - a*d)^(2//3)*((a + b*x)*(c + d*x))^(1//3) + 2*2^(1//3)*b^(2//3)*d^(2//3)*((a + b*x)*(c + d*x))^(2//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*EllipticF(asin(((1 - sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))), -7 - 4*sqrt(3)))/(10*2^(2//3)*b^(1//3)*(b*c - a*d)^3*(a + b*x)^(2//3)*(c + d*x)^(2//3)*(b*c + a*d + 2*b*d*x)*sqrt(((b*c - a*d)^(2//3)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 6),
# 
# 
#     (integrand = (a + b*x)^(7//3)/(c + d*x)^(4//3), result = (-3*(a + b*x)^(7//3))/(d*(c + d*x)^(1//3)) - (14*b*(b*c - a*d)*(a + b*x)^(1//3)*(c + d*x)^(2//3))/(3*d^3) + (7*b*(a + b*x)^(4//3)*(c + d*x)^(2//3))/(2*d^2) - (14*b^(1//3)*(b*c - a*d)^2*atan(1/sqrt(3) + (2*b^(1//3)*(c + d*x)^(1//3))/(sqrt(3)*d^(1//3)*(a + b*x)^(1//3))))/(3*sqrt(3)*d^(10//3)) - (7*b^(1//3)*(b*c - a*d)^2*log(a + b*x))/(9*d^(10//3)) - (7*b^(1//3)*(b*c - a*d)^2*log(-1 + (b^(1//3)*(c + d*x)^(1//3))/(d^(1//3)*(a + b*x)^(1//3))))/(3*d^(10//3)), integration_var = x, mistery_val = 4),
#     (integrand = (a + b*x)^(4//3)/(c + d*x)^(4//3), result = (-3*(a + b*x)^(4//3))/(d*(c + d*x)^(1//3)) + (4*b*(a + b*x)^(1//3)*(c + d*x)^(2//3))/d^2 + (4*b^(1//3)*(b*c - a*d)*atan(1/sqrt(3) + (2*b^(1//3)*(c + d*x)^(1//3))/(sqrt(3)*d^(1//3)*(a + b*x)^(1//3))))/(sqrt(3)*d^(7//3)) + (2*b^(1//3)*(b*c - a*d)*log(a + b*x))/(3*d^(7//3)) + (2*b^(1//3)*(b*c - a*d)*log(-1 + (b^(1//3)*(c + d*x)^(1//3))/(d^(1//3)*(a + b*x)^(1//3))))/d^(7//3), integration_var = x, mistery_val = 3),
#     (integrand = (a + b*x)^(1//3)/(c + d*x)^(4//3), result = (-3*(a + b*x)^(1//3))/(d*(c + d*x)^(1//3)) - (sqrt(3)*b^(1//3)*atan(1/sqrt(3) + (2*b^(1//3)*(c + d*x)^(1//3))/(sqrt(3)*d^(1//3)*(a + b*x)^(1//3))))/d^(4//3) - (b^(1//3)*log(a + b*x))/(2*d^(4//3)) - (3*b^(1//3)*log(-1 + (b^(1//3)*(c + d*x)^(1//3))/(d^(1//3)*(a + b*x)^(1//3))))/(2*d^(4//3)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((a + b*x)^(2//3)*(c + d*x)^(4//3)), result = (3*(a + b*x)^(1//3))/((b*c - a*d)*(c + d*x)^(1//3)), integration_var = x, mistery_val = 1),
#     (integrand = 1/((a + b*x)^(5//3)*(c + d*x)^(4//3)), result = -3/(2*(b*c - a*d)*(a + b*x)^(2//3)*(c + d*x)^(1//3)) - (9*d*(a + b*x)^(1//3))/(2*(b*c - a*d)^2*(c + d*x)^(1//3)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((a + b*x)^(8//3)*(c + d*x)^(4//3)), result = -3/(5*(b*c - a*d)*(a + b*x)^(5//3)*(c + d*x)^(1//3)) + (9*d)/(5*(b*c - a*d)^2*(a + b*x)^(2//3)*(c + d*x)^(1//3)) + (27*d^2*(a + b*x)^(1//3))/(5*(b*c - a*d)^3*(c + d*x)^(1//3)), integration_var = x, mistery_val = 3),
#     (integrand = 1/((a + b*x)^(11//3)*(c + d*x)^(4//3)), result = -3/(8*(b*c - a*d)*(a + b*x)^(8//3)*(c + d*x)^(1//3)) + (27*d)/(40*(b*c - a*d)^2*(a + b*x)^(5//3)*(c + d*x)^(1//3)) - (81*d^2)/(40*(b*c - a*d)^3*(a + b*x)^(2//3)*(c + d*x)^(1//3)) - (243*d^3*(a + b*x)^(1//3))/(40*(b*c - a*d)^4*(c + d*x)^(1//3)), integration_var = x, mistery_val = 4),
# 
#     (integrand = (a + b*x)^(8//3)/(c + d*x)^(4//3), result = -((3*(a + b*x)^(8//3))/(d*(c + d*x)^(1//3))) - (30*b*(b*c - a*d)*(a + b*x)^(2//3)*(c + d*x)^(2//3))/(7*d^3) + (24*b*(a + b*x)^(5//3)*(c + d*x)^(2//3))/(7*d^2) + (30*2^(2//3)*b^(1//3)*(b*c - a*d)^2*((a + b*x)*(c + d*x))^(1//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*sqrt((a*d + b*(c + 2*d*x))^2))/(7*d^(11//3)*(a + b*x)^(1//3)*(c + d*x)^(1//3)*(b*c + a*d + 2*b*d*x)*((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))) - (15*2^(2//3)*3^(1//4)*sqrt(2 - sqrt(3))*b^(1//3)*(b*c - a*d)^(8//3)*((a + b*x)*(c + d*x))^(1//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))*sqrt(((b*c - a*d)^(4//3) - 2^(2//3)*b^(1//3)*d^(1//3)*(b*c - a*d)^(2//3)*((a + b*x)*(c + d*x))^(1//3) + 2*2^(1//3)*b^(2//3)*d^(2//3)*((a + b*x)*(c + d*x))^(2//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*EllipticE(asin(((1 - sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))), -7 - 4*sqrt(3)))/(7*d^(11//3)*(a + b*x)^(1//3)*(c + d*x)^(1//3)*(b*c + a*d + 2*b*d*x)*sqrt(((b*c - a*d)^(2//3)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*sqrt((a*d + b*(c + 2*d*x))^2)) + (20*2^(1//6)*3^(3//4)*b^(1//3)*(b*c - a*d)^(8//3)*((a + b*x)*(c + d*x))^(1//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))*sqrt(((b*c - a*d)^(4//3) - 2^(2//3)*b^(1//3)*d^(1//3)*(b*c - a*d)^(2//3)*((a + b*x)*(c + d*x))^(1//3) + 2*2^(1//3)*b^(2//3)*d^(2//3)*((a + b*x)*(c + d*x))^(2//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*EllipticF(asin(((1 - sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))), -7 - 4*sqrt(3)))/(7*d^(11//3)*(a + b*x)^(1//3)*(c + d*x)^(1//3)*(b*c + a*d + 2*b*d*x)*sqrt(((b*c - a*d)^(2//3)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 8),
#     (integrand = (a + b*x)^(5//3)/(c + d*x)^(4//3), result = -((3*(a + b*x)^(5//3))/(d*(c + d*x)^(1//3))) + (15*b*(a + b*x)^(2//3)*(c + d*x)^(2//3))/(4*d^2) - (15*b^(1//3)*(b*c - a*d)*((a + b*x)*(c + d*x))^(1//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*sqrt((a*d + b*(c + 2*d*x))^2))/(2*2^(1//3)*d^(8//3)*(a + b*x)^(1//3)*(c + d*x)^(1//3)*(b*c + a*d + 2*b*d*x)*((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))) + (15*3^(1//4)*sqrt(2 - sqrt(3))*b^(1//3)*(b*c - a*d)^(5//3)*((a + b*x)*(c + d*x))^(1//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))*sqrt(((b*c - a*d)^(4//3) - 2^(2//3)*b^(1//3)*d^(1//3)*(b*c - a*d)^(2//3)*((a + b*x)*(c + d*x))^(1//3) + 2*2^(1//3)*b^(2//3)*d^(2//3)*((a + b*x)*(c + d*x))^(2//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*EllipticE(asin(((1 - sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))), -7 - 4*sqrt(3)))/(4*2^(1//3)*d^(8//3)*(a + b*x)^(1//3)*(c + d*x)^(1//3)*(b*c + a*d + 2*b*d*x)*sqrt(((b*c - a*d)^(2//3)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*sqrt((a*d + b*(c + 2*d*x))^2)) - (5*3^(3//4)*b^(1//3)*(b*c - a*d)^(5//3)*((a + b*x)*(c + d*x))^(1//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))*sqrt(((b*c - a*d)^(4//3) - 2^(2//3)*b^(1//3)*d^(1//3)*(b*c - a*d)^(2//3)*((a + b*x)*(c + d*x))^(1//3) + 2*2^(1//3)*b^(2//3)*d^(2//3)*((a + b*x)*(c + d*x))^(2//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*EllipticF(asin(((1 - sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))), -7 - 4*sqrt(3)))/(2^(5//6)*d^(8//3)*(a + b*x)^(1//3)*(c + d*x)^(1//3)*(b*c + a*d + 2*b*d*x)*sqrt(((b*c - a*d)^(2//3)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 7),
#     (integrand = (a + b*x)^(2//3)/(c + d*x)^(4//3), result = -((3*(a + b*x)^(2//3))/(d*(c + d*x)^(1//3))) + (3*2^(2//3)*b^(1//3)*((a + b*x)*(c + d*x))^(1//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*sqrt((a*d + b*(c + 2*d*x))^2))/(d^(5//3)*(a + b*x)^(1//3)*(c + d*x)^(1//3)*(b*c + a*d + 2*b*d*x)*((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))) - (3*3^(1//4)*sqrt(2 - sqrt(3))*b^(1//3)*(b*c - a*d)^(2//3)*((a + b*x)*(c + d*x))^(1//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))*sqrt(((b*c - a*d)^(4//3) - 2^(2//3)*b^(1//3)*d^(1//3)*(b*c - a*d)^(2//3)*((a + b*x)*(c + d*x))^(1//3) + 2*2^(1//3)*b^(2//3)*d^(2//3)*((a + b*x)*(c + d*x))^(2//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*EllipticE(asin(((1 - sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))), -7 - 4*sqrt(3)))/(2^(1//3)*d^(5//3)*(a + b*x)^(1//3)*(c + d*x)^(1//3)*(b*c + a*d + 2*b*d*x)*sqrt(((b*c - a*d)^(2//3)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*sqrt((a*d + b*(c + 2*d*x))^2)) + (2*2^(1//6)*3^(3//4)*b^(1//3)*(b*c - a*d)^(2//3)*((a + b*x)*(c + d*x))^(1//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))*sqrt(((b*c - a*d)^(4//3) - 2^(2//3)*b^(1//3)*d^(1//3)*(b*c - a*d)^(2//3)*((a + b*x)*(c + d*x))^(1//3) + 2*2^(1//3)*b^(2//3)*d^(2//3)*((a + b*x)*(c + d*x))^(2//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*EllipticF(asin(((1 - sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))), -7 - 4*sqrt(3)))/(d^(5//3)*(a + b*x)^(1//3)*(c + d*x)^(1//3)*(b*c + a*d + 2*b*d*x)*sqrt(((b*c - a*d)^(2//3)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 6),
#     (integrand = 1/((a + b*x)^(1//3)*(c + d*x)^(4//3)), result = (3*(a + b*x)^(2//3))/((b*c - a*d)*(c + d*x)^(1//3)) - (3*b^(1//3)*((a + b*x)*(c + d*x))^(1//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*sqrt((a*d + b*(c + 2*d*x))^2))/(2^(1//3)*d^(2//3)*(b*c - a*d)*(a + b*x)^(1//3)*(c + d*x)^(1//3)*(b*c + a*d + 2*b*d*x)*((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))) + (3*3^(1//4)*sqrt(2 - sqrt(3))*b^(1//3)*((a + b*x)*(c + d*x))^(1//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))*sqrt(((b*c - a*d)^(4//3) - 2^(2//3)*b^(1//3)*d^(1//3)*(b*c - a*d)^(2//3)*((a + b*x)*(c + d*x))^(1//3) + 2*2^(1//3)*b^(2//3)*d^(2//3)*((a + b*x)*(c + d*x))^(2//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*EllipticE(asin(((1 - sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))), -7 - 4*sqrt(3)))/(2*2^(1//3)*d^(2//3)*(b*c - a*d)^(1//3)*(a + b*x)^(1//3)*(c + d*x)^(1//3)*(b*c + a*d + 2*b*d*x)*sqrt(((b*c - a*d)^(2//3)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*sqrt((a*d + b*(c + 2*d*x))^2)) - (2^(1//6)*3^(3//4)*b^(1//3)*((a + b*x)*(c + d*x))^(1//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))*sqrt(((b*c - a*d)^(4//3) - 2^(2//3)*b^(1//3)*d^(1//3)*(b*c - a*d)^(2//3)*((a + b*x)*(c + d*x))^(1//3) + 2*2^(1//3)*b^(2//3)*d^(2//3)*((a + b*x)*(c + d*x))^(2//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*EllipticF(asin(((1 - sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))), -7 - 4*sqrt(3)))/(d^(2//3)*(b*c - a*d)^(1//3)*(a + b*x)^(1//3)*(c + d*x)^(1//3)*(b*c + a*d + 2*b*d*x)*sqrt(((b*c - a*d)^(2//3)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 6),
#     (integrand = 1/((a + b*x)^(4//3)*(c + d*x)^(4//3)), result = -(3/((b*c - a*d)*(a + b*x)^(1//3)*(c + d*x)^(1//3))) - (6*d*(a + b*x)^(2//3))/((b*c - a*d)^2*(c + d*x)^(1//3)) + (3*2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*sqrt((a*d + b*(c + 2*d*x))^2))/((b*c - a*d)^2*(a + b*x)^(1//3)*(c + d*x)^(1//3)*(b*c + a*d + 2*b*d*x)*((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))) - (3*3^(1//4)*sqrt(2 - sqrt(3))*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))*sqrt(((b*c - a*d)^(4//3) - 2^(2//3)*b^(1//3)*d^(1//3)*(b*c - a*d)^(2//3)*((a + b*x)*(c + d*x))^(1//3) + 2*2^(1//3)*b^(2//3)*d^(2//3)*((a + b*x)*(c + d*x))^(2//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*EllipticE(asin(((1 - sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))), -7 - 4*sqrt(3)))/(2^(1//3)*(b*c - a*d)^(4//3)*(a + b*x)^(1//3)*(c + d*x)^(1//3)*(b*c + a*d + 2*b*d*x)*sqrt(((b*c - a*d)^(2//3)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*sqrt((a*d + b*(c + 2*d*x))^2)) + (2*2^(1//6)*3^(3//4)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))*sqrt(((b*c - a*d)^(4//3) - 2^(2//3)*b^(1//3)*d^(1//3)*(b*c - a*d)^(2//3)*((a + b*x)*(c + d*x))^(1//3) + 2*2^(1//3)*b^(2//3)*d^(2//3)*((a + b*x)*(c + d*x))^(2//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*EllipticF(asin(((1 - sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))), -7 - 4*sqrt(3)))/((b*c - a*d)^(4//3)*(a + b*x)^(1//3)*(c + d*x)^(1//3)*(b*c + a*d + 2*b*d*x)*sqrt(((b*c - a*d)^(2//3)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 7),
#     (integrand = 1/((a + b*x)^(7//3)*(c + d*x)^(4//3)), result = -(3/(4*(b*c - a*d)*(a + b*x)^(4//3)*(c + d*x)^(1//3))) + (15*d)/(4*(b*c - a*d)^2*(a + b*x)^(1//3)*(c + d*x)^(1//3)) + (15*d^2*(a + b*x)^(2//3))/(2*(b*c - a*d)^3*(c + d*x)^(1//3)) - (15*b^(1//3)*d^(4//3)*((a + b*x)*(c + d*x))^(1//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*sqrt((a*d + b*(c + 2*d*x))^2))/(2*2^(1//3)*(b*c - a*d)^3*(a + b*x)^(1//3)*(c + d*x)^(1//3)*(b*c + a*d + 2*b*d*x)*((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))) + (15*3^(1//4)*sqrt(2 - sqrt(3))*b^(1//3)*d^(4//3)*((a + b*x)*(c + d*x))^(1//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))*sqrt(((b*c - a*d)^(4//3) - 2^(2//3)*b^(1//3)*d^(1//3)*(b*c - a*d)^(2//3)*((a + b*x)*(c + d*x))^(1//3) + 2*2^(1//3)*b^(2//3)*d^(2//3)*((a + b*x)*(c + d*x))^(2//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*EllipticE(asin(((1 - sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))), -7 - 4*sqrt(3)))/(4*2^(1//3)*(b*c - a*d)^(7//3)*(a + b*x)^(1//3)*(c + d*x)^(1//3)*(b*c + a*d + 2*b*d*x)*sqrt(((b*c - a*d)^(2//3)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*sqrt((a*d + b*(c + 2*d*x))^2)) - (5*3^(3//4)*b^(1//3)*d^(4//3)*((a + b*x)*(c + d*x))^(1//3)*sqrt((b*c + a*d + 2*b*d*x)^2)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))*sqrt(((b*c - a*d)^(4//3) - 2^(2//3)*b^(1//3)*d^(1//3)*(b*c - a*d)^(2//3)*((a + b*x)*(c + d*x))^(1//3) + 2*2^(1//3)*b^(2//3)*d^(2//3)*((a + b*x)*(c + d*x))^(2//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*EllipticF(asin(((1 - sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))), -7 - 4*sqrt(3)))/(2^(5//6)*(b*c - a*d)^(7//3)*(a + b*x)^(1//3)*(c + d*x)^(1//3)*(b*c + a*d + 2*b*d*x)*sqrt(((b*c - a*d)^(2//3)*((b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3)))/((1 + sqrt(3))*(b*c - a*d)^(2//3) + 2^(2//3)*b^(1//3)*d^(1//3)*((a + b*x)*(c + d*x))^(1//3))^2)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 8),
# 
# 
#     (integrand = (-1 + x)^(1//3)/(1 + x)^(1//3), result = (-1 + x)^(1//3)*(1 + x)^(2//3) + (2*atan(1/sqrt(3) + (2*(1 + x)^(1//3))/(sqrt(3)*(-1 + x)^(1//3))))/sqrt(3) + (1//3)*log(-1 + x) + log(-1 + (1 + x)^(1//3)/(-1 + x)^(1//3)), integration_var = x, mistery_val = 2),
# 
# 
# # ::Subsection::Closed::
# # Integrands of the form (a+b x)^(m/2) (c+d x)^(n/4)
# 
# 
# # ::Subsubsection::Closed::
# # n>0
# 
# 
#     (integrand = (a + b*x)^(3//2)*(c + d*x)^(1//4), result = (-8*(b*c - a*d)^2*sqrt(a + b*x)*(c + d*x)^(1//4))/(77*b*d^2) + (4*(b*c - a*d)*(a + b*x)^(3//2)*(c + d*x)^(1//4))/(77*b*d) + (4*(a + b*x)^(5//2)*(c + d*x)^(1//4))/(11*b) + (16*(b*c - a*d)^(13//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(77*b^(5//4)*d^3*sqrt(a + b*x)), integration_var = x, mistery_val = 6),
#     (integrand = (a + b*x)^(1//2)*(c + d*x)^(1//4), result = (4*(b*c - a*d)*sqrt(a + b*x)*(c + d*x)^(1//4))/(21*b*d) + (4*(a + b*x)^(3//2)*(c + d*x)^(1//4))/(7*b) - (8*(b*c - a*d)^(9//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(21*b^(5//4)*d^2*sqrt(a + b*x)), integration_var = x, mistery_val = 5),
#     (integrand = (c + d*x)^(1//4)/(a + b*x)^(1//2), result = (4*sqrt(a + b*x)*(c + d*x)^(1//4))/(3*b) + (4*(b*c - a*d)^(5//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(3*b^(5//4)*d*sqrt(a + b*x)), integration_var = x, mistery_val = 4),
#     (integrand = (c + d*x)^(1//4)/(a + b*x)^(3//2), result = (-2*(c + d*x)^(1//4))/(b*sqrt(a + b*x)) + (2*(b*c - a*d)^(1//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(b^(5//4)*sqrt(a + b*x)), integration_var = x, mistery_val = 4),
#     (integrand = (c + d*x)^(1//4)/(a + b*x)^(5//2), result = (-2*(c + d*x)^(1//4))/(3*b*(a + b*x)^(3//2)) - (d*(c + d*x)^(1//4))/(3*b*(b*c - a*d)*sqrt(a + b*x)) - (d*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(3*b^(5//4)*(b*c - a*d)^(3//4)*sqrt(a + b*x)), integration_var = x, mistery_val = 5),
#     (integrand = (c + d*x)^(1//4)/(a + b*x)^(7//2), result = (-2*(c + d*x)^(1//4))/(5*b*(a + b*x)^(5//2)) - (d*(c + d*x)^(1//4))/(15*b*(b*c - a*d)*(a + b*x)^(3//2)) + (d^2*(c + d*x)^(1//4))/(6*b*(b*c - a*d)^2*sqrt(a + b*x)) + (d^2*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(6*b^(5//4)*(b*c - a*d)^(7//4)*sqrt(a + b*x)), integration_var = x, mistery_val = 6),
# 
# 
#     (integrand = (a + b*x)^(3//2)*(c + d*x)^(3//4), result = (-8*(b*c - a*d)^2*sqrt(a + b*x)*(c + d*x)^(3//4))/(65*b*d^2) + (4*(b*c - a*d)*(a + b*x)^(3//2)*(c + d*x)^(3//4))/(39*b*d) + (4*(a + b*x)^(5//2)*(c + d*x)^(3//4))/(13*b) + (16*(b*c - a*d)^(15//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticE(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(65*b^(7//4)*d^3*sqrt(a + b*x)) - (16*(b*c - a*d)^(15//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(65*b^(7//4)*d^3*sqrt(a + b*x)), integration_var = x, mistery_val = 10),
#     (integrand = (a + b*x)^(1//2)*(c + d*x)^(3//4), result = (4*(b*c - a*d)*sqrt(a + b*x)*(c + d*x)^(3//4))/(15*b*d) + (4*(a + b*x)^(3//2)*(c + d*x)^(3//4))/(9*b) - (8*(b*c - a*d)^(11//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticE(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(15*b^(7//4)*d^2*sqrt(a + b*x)) + (8*(b*c - a*d)^(11//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(15*b^(7//4)*d^2*sqrt(a + b*x)), integration_var = x, mistery_val = 9),
#     (integrand = (c + d*x)^(3//4)/(a + b*x)^(1//2), result = (4*sqrt(a + b*x)*(c + d*x)^(3//4))/(5*b) + (12*(b*c - a*d)^(7//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticE(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(5*b^(7//4)*d*sqrt(a + b*x)) - (12*(b*c - a*d)^(7//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(5*b^(7//4)*d*sqrt(a + b*x)), integration_var = x, mistery_val = 8),
#     (integrand = (c + d*x)^(3//4)/(a + b*x)^(3//2), result = (-2*(c + d*x)^(3//4))/(b*sqrt(a + b*x)) + (6*(b*c - a*d)^(3//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticE(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(b^(7//4)*sqrt(a + b*x)) - (6*(b*c - a*d)^(3//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(b^(7//4)*sqrt(a + b*x)), integration_var = x, mistery_val = 8),
#     (integrand = (c + d*x)^(3//4)/(a + b*x)^(5//2), result = (-2*(c + d*x)^(3//4))/(3*b*(a + b*x)^(3//2)) - (d*(c + d*x)^(3//4))/(b*(b*c - a*d)*sqrt(a + b*x)) + (d*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticE(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(b^(7//4)*(b*c - a*d)^(1//4)*sqrt(a + b*x)) - (d*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(b^(7//4)*(b*c - a*d)^(1//4)*sqrt(a + b*x)), integration_var = x, mistery_val = 9),
#     (integrand = (c + d*x)^(3//4)/(a + b*x)^(7//2), result = (-2*(c + d*x)^(3//4))/(5*b*(a + b*x)^(5//2)) - (d*(c + d*x)^(3//4))/(5*b*(b*c - a*d)*(a + b*x)^(3//2)) + (3*d^2*(c + d*x)^(3//4))/(10*b*(b*c - a*d)^2*sqrt(a + b*x)) - (3*d^2*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticE(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(10*b^(7//4)*(b*c - a*d)^(5//4)*sqrt(a + b*x)) + (3*d^2*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(10*b^(7//4)*(b*c - a*d)^(5//4)*sqrt(a + b*x)), integration_var = x, mistery_val = 10),
# 
# 
#     (integrand = (a + b*x)^(3//2)*(c + d*x)^(5//4), result = (-8*(b*c - a*d)^3*sqrt(a + b*x)*(c + d*x)^(1//4))/(231*b^2*d^2) + (4*(b*c - a*d)^2*(a + b*x)^(3//2)*(c + d*x)^(1//4))/(231*b^2*d) + (4*(b*c - a*d)*(a + b*x)^(5//2)*(c + d*x)^(1//4))/(33*b^2) + (4*(a + b*x)^(5//2)*(c + d*x)^(5//4))/(15*b) + (16*(b*c - a*d)^(17//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(231*b^(9//4)*d^3*sqrt(a + b*x)), integration_var = x, mistery_val = 7),
#     (integrand = (a + b*x)^(1//2)*(c + d*x)^(5//4), result = (20*(b*c - a*d)^2*sqrt(a + b*x)*(c + d*x)^(1//4))/(231*b^2*d) + (20*(b*c - a*d)*(a + b*x)^(3//2)*(c + d*x)^(1//4))/(77*b^2) + (4*(a + b*x)^(3//2)*(c + d*x)^(5//4))/(11*b) - (40*(b*c - a*d)^(13//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(231*b^(9//4)*d^2*sqrt(a + b*x)), integration_var = x, mistery_val = 6),
#     (integrand = (c + d*x)^(5//4)/(a + b*x)^(1//2), result = (20*(b*c - a*d)*sqrt(a + b*x)*(c + d*x)^(1//4))/(21*b^2) + (4*sqrt(a + b*x)*(c + d*x)^(5//4))/(7*b) + (20*(b*c - a*d)^(9//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(21*b^(9//4)*d*sqrt(a + b*x)), integration_var = x, mistery_val = 5),
#     (integrand = (c + d*x)^(5//4)/(a + b*x)^(3//2), result = (10*d*sqrt(a + b*x)*(c + d*x)^(1//4))/(3*b^2) - (2*(c + d*x)^(5//4))/(b*sqrt(a + b*x)) + (10*(b*c - a*d)^(5//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(3*b^(9//4)*sqrt(a + b*x)), integration_var = x, mistery_val = 5),
#     (integrand = (c + d*x)^(5//4)/(a + b*x)^(5//2), result = (-5*d*(c + d*x)^(1//4))/(3*b^2*sqrt(a + b*x)) - (2*(c + d*x)^(5//4))/(3*b*(a + b*x)^(3//2)) + (5*d*(b*c - a*d)^(1//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(3*b^(9//4)*sqrt(a + b*x)), integration_var = x, mistery_val = 5),
#     (integrand = (c + d*x)^(5//4)/(a + b*x)^(7//2), result = -(d*(c + d*x)^(1//4))/(3*b^2*(a + b*x)^(3//2)) - (d^2*(c + d*x)^(1//4))/(6*b^2*(b*c - a*d)*sqrt(a + b*x)) - (2*(c + d*x)^(5//4))/(5*b*(a + b*x)^(5//2)) - (d^2*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(6*b^(9//4)*(b*c - a*d)^(3//4)*sqrt(a + b*x)), integration_var = x, mistery_val = 6),
#     (integrand = (c + d*x)^(5//4)/(a + b*x)^(9//2), result = -(d*(c + d*x)^(1//4))/(7*b^2*(a + b*x)^(5//2)) - (d^2*(c + d*x)^(1//4))/(42*b^2*(b*c - a*d)*(a + b*x)^(3//2)) + (5*d^3*(c + d*x)^(1//4))/(84*b^2*(b*c - a*d)^2*sqrt(a + b*x)) - (2*(c + d*x)^(5//4))/(7*b*(a + b*x)^(7//2)) + (5*d^3*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(84*b^(9//4)*(b*c - a*d)^(7//4)*sqrt(a + b*x)), integration_var = x, mistery_val = 7),
# 
# 
# # ::Subsubsection::Closed::
# # n<0
# 
# 
#     (integrand = (a + b*x)^(5//2)/(c + d*x)^(1//4), result = (16*(b*c - a*d)^2*sqrt(a + b*x)*(c + d*x)^(3//4))/(39*d^3) - (40*(b*c - a*d)*(a + b*x)^(3//2)*(c + d*x)^(3//4))/(117*d^2) + (4*(a + b*x)^(5//2)*(c + d*x)^(3//4))/(13*d) - (32*(b*c - a*d)^(15//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticE(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(39*b^(3//4)*d^4*sqrt(a + b*x)) + (32*(b*c - a*d)^(15//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(39*b^(3//4)*d^4*sqrt(a + b*x)), integration_var = x, mistery_val = 10),
#     (integrand = (a + b*x)^(3//2)/(c + d*x)^(1//4), result = (-8*(b*c - a*d)*sqrt(a + b*x)*(c + d*x)^(3//4))/(15*d^2) + (4*(a + b*x)^(3//2)*(c + d*x)^(3//4))/(9*d) + (16*(b*c - a*d)^(11//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticE(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(15*b^(3//4)*d^3*sqrt(a + b*x)) - (16*(b*c - a*d)^(11//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(15*b^(3//4)*d^3*sqrt(a + b*x)), integration_var = x, mistery_val = 9),
#     (integrand = (a + b*x)^(1//2)/(c + d*x)^(1//4), result = (4*sqrt(a + b*x)*(c + d*x)^(3//4))/(5*d) - (8*(b*c - a*d)^(7//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticE(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(5*b^(3//4)*d^2*sqrt(a + b*x)) + (8*(b*c - a*d)^(7//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(5*b^(3//4)*d^2*sqrt(a + b*x)), integration_var = x, mistery_val = 8),
#     (integrand = 1/((a + b*x)^(1//2)*(c + d*x)^(1//4)), result = (4*(b*c - a*d)^(3//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticE(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(b^(3//4)*d*sqrt(a + b*x)) - (4*(b*c - a*d)^(3//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(b^(3//4)*d*sqrt(a + b*x)), integration_var = x, mistery_val = 7),
#     (integrand = 1/((a + b*x)^(3//2)*(c + d*x)^(1//4)), result = (-2*(c + d*x)^(3//4))/((b*c - a*d)*sqrt(a + b*x)) + (2*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticE(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(b^(3//4)*(b*c - a*d)^(1//4)*sqrt(a + b*x)) - (2*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(b^(3//4)*(b*c - a*d)^(1//4)*sqrt(a + b*x)), integration_var = x, mistery_val = 8),
#     (integrand = 1/((a + b*x)^(5//2)*(c + d*x)^(1//4)), result = (-2*(c + d*x)^(3//4))/(3*(b*c - a*d)*(a + b*x)^(3//2)) + (d*(c + d*x)^(3//4))/((b*c - a*d)^2*sqrt(a + b*x)) - (d*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticE(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(b^(3//4)*(b*c - a*d)^(5//4)*sqrt(a + b*x)) + (d*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(b^(3//4)*(b*c - a*d)^(5//4)*sqrt(a + b*x)), integration_var = x, mistery_val = 9),
# 
# 
#     (integrand = (a + b*x)^(3//2)/(c + d*x)^(3//4), result = (-8*(b*c - a*d)*sqrt(a + b*x)*(c + d*x)^(1//4))/(7*d^2) + (4*(a + b*x)^(3//2)*(c + d*x)^(1//4))/(7*d) + (16*(b*c - a*d)^(9//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(7*b^(1//4)*d^3*sqrt(a + b*x)), integration_var = x, mistery_val = 5),
#     (integrand = (a + b*x)^(1//2)/(c + d*x)^(3//4), result = (4*sqrt(a + b*x)*(c + d*x)^(1//4))/(3*d) - (8*(b*c - a*d)^(5//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(3*b^(1//4)*d^2*sqrt(a + b*x)), integration_var = x, mistery_val = 4),
#     (integrand = 1/((a + b*x)^(1//2)*(c + d*x)^(3//4)), result = (4*(b*c - a*d)^(1//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(b^(1//4)*d*sqrt(a + b*x)), integration_var = x, mistery_val = 3),
#     (integrand = 1/((a + b*x)^(3//2)*(c + d*x)^(3//4)), result = (-2*(c + d*x)^(1//4))/((b*c - a*d)*sqrt(a + b*x)) - (2*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(b^(1//4)*(b*c - a*d)^(3//4)*sqrt(a + b*x)), integration_var = x, mistery_val = 4),
#     (integrand = 1/((a + b*x)^(5//2)*(c + d*x)^(3//4)), result = (-2*(c + d*x)^(1//4))/(3*(b*c - a*d)*(a + b*x)^(3//2)) + (5*d*(c + d*x)^(1//4))/(3*(b*c - a*d)^2*sqrt(a + b*x)) + (5*d*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(3*b^(1//4)*(b*c - a*d)^(7//4)*sqrt(a + b*x)), integration_var = x, mistery_val = 5),
# 
# 
#     (integrand = (a + b*x)^(5//2)/(c + d*x)^(5//4), result = (-4*(a + b*x)^(5//2))/(d*(c + d*x)^(1//4)) - (16*b*(b*c - a*d)*sqrt(a + b*x)*(c + d*x)^(3//4))/(3*d^3) + (40*b*(a + b*x)^(3//2)*(c + d*x)^(3//4))/(9*d^2) + (32*b^(1//4)*(b*c - a*d)^(11//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticE(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(3*d^4*sqrt(a + b*x)) - (32*b^(1//4)*(b*c - a*d)^(11//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(3*d^4*sqrt(a + b*x)), integration_var = x, mistery_val = 10),
#     (integrand = (a + b*x)^(3//2)/(c + d*x)^(5//4), result = (-4*(a + b*x)^(3//2))/(d*(c + d*x)^(1//4)) + (24*b*sqrt(a + b*x)*(c + d*x)^(3//4))/(5*d^2) - (48*b^(1//4)*(b*c - a*d)^(7//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticE(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(5*d^3*sqrt(a + b*x)) + (48*b^(1//4)*(b*c - a*d)^(7//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(5*d^3*sqrt(a + b*x)), integration_var = x, mistery_val = 9),
#     (integrand = (a + b*x)^(1//2)/(c + d*x)^(5//4), result = (-4*sqrt(a + b*x))/(d*(c + d*x)^(1//4)) + (8*b^(1//4)*(b*c - a*d)^(3//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticE(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(d^2*sqrt(a + b*x)) - (8*b^(1//4)*(b*c - a*d)^(3//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(d^2*sqrt(a + b*x)), integration_var = x, mistery_val = 8),
#     (integrand = 1/((a + b*x)^(1//2)*(c + d*x)^(5//4)), result = (4*sqrt(a + b*x))/((b*c - a*d)*(c + d*x)^(1//4)) - (4*b^(1//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticE(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(d*(b*c - a*d)^(1//4)*sqrt(a + b*x)) + (4*b^(1//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(d*(b*c - a*d)^(1//4)*sqrt(a + b*x)), integration_var = x, mistery_val = 8),
#     (integrand = 1/((a + b*x)^(3//2)*(c + d*x)^(5//4)), result = -2/((b*c - a*d)*sqrt(a + b*x)*(c + d*x)^(1//4)) - (6*d*sqrt(a + b*x))/((b*c - a*d)^2*(c + d*x)^(1//4)) + (6*b^(1//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticE(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/((b*c - a*d)^(5//4)*sqrt(a + b*x)) - (6*b^(1//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/((b*c - a*d)^(5//4)*sqrt(a + b*x)), integration_var = x, mistery_val = 9),
#     (integrand = 1/((a + b*x)^(5//2)*(c + d*x)^(5//4)), result = -2/(3*(b*c - a*d)*(a + b*x)^(3//2)*(c + d*x)^(1//4)) + (7*d)/(3*(b*c - a*d)^2*sqrt(a + b*x)*(c + d*x)^(1//4)) + (7*d^2*sqrt(a + b*x))/((b*c - a*d)^3*(c + d*x)^(1//4)) - (7*b^(1//4)*d*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticE(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/((b*c - a*d)^(9//4)*sqrt(a + b*x)) + (7*b^(1//4)*d*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/((b*c - a*d)^(9//4)*sqrt(a + b*x)), integration_var = x, mistery_val = 10),
# 
# 
#     (integrand = (a + b*x)^(7//2)/(c + d*x)^(7//4), result = (-4*(a + b*x)^(7//2))/(3*d*(c + d*x)^(3//4)) + (160*b*(b*c - a*d)^2*sqrt(a + b*x)*(c + d*x)^(1//4))/(33*d^4) - (80*b*(b*c - a*d)*(a + b*x)^(3//2)*(c + d*x)^(1//4))/(33*d^3) + (56*b*(a + b*x)^(5//2)*(c + d*x)^(1//4))/(33*d^2) - (320*b^(3//4)*(b*c - a*d)^(13//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(33*d^5*sqrt(a + b*x)), integration_var = x, mistery_val = 7),
#     (integrand = (a + b*x)^(3//2)/(c + d*x)^(7//4), result = (-4*(a + b*x)^(3//2))/(3*d*(c + d*x)^(3//4)) + (8*b*sqrt(a + b*x)*(c + d*x)^(1//4))/(3*d^2) - (16*b^(3//4)*(b*c - a*d)^(5//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(3*d^3*sqrt(a + b*x)), integration_var = x, mistery_val = 5),
#     (integrand = (a + b*x)^(1//2)/(c + d*x)^(7//4), result = (-4*sqrt(a + b*x))/(3*d*(c + d*x)^(3//4)) + (8*b^(3//4)*(b*c - a*d)^(1//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(3*d^2*sqrt(a + b*x)), integration_var = x, mistery_val = 4),
#     (integrand = 1/((a + b*x)^(1//2)*(c + d*x)^(7//4)), result = (4*sqrt(a + b*x))/(3*(b*c - a*d)*(c + d*x)^(3//4)) + (4*b^(3//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(3*d*(b*c - a*d)^(3//4)*sqrt(a + b*x)), integration_var = x, mistery_val = 4),
#     (integrand = 1/((a + b*x)^(3//2)*(c + d*x)^(7//4)), result = -2/((b*c - a*d)*sqrt(a + b*x)*(c + d*x)^(3//4)) - (10*d*sqrt(a + b*x))/(3*(b*c - a*d)^2*(c + d*x)^(3//4)) - (10*b^(3//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(3*(b*c - a*d)^(7//4)*sqrt(a + b*x)), integration_var = x, mistery_val = 5),
#     (integrand = 1/((a + b*x)^(5//2)*(c + d*x)^(7//4)), result = -2/(3*(b*c - a*d)*(a + b*x)^(3//2)*(c + d*x)^(3//4)) + (3*d)/((b*c - a*d)^2*sqrt(a + b*x)*(c + d*x)^(3//4)) + (5*d^2*sqrt(a + b*x))/((b*c - a*d)^3*(c + d*x)^(3//4)) + (5*b^(3//4)*d*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/((b*c - a*d)^(11//4)*sqrt(a + b*x)), integration_var = x, mistery_val = 6),
# 
# 
#     (integrand = (a + b*x)^(7//2)/(c + d*x)^(9//4), result = (-4*(a + b*x)^(7//2))/(5*d*(c + d*x)^(5//4)) - (56*b*(a + b*x)^(5//2))/(5*d^2*(c + d*x)^(1//4)) - (224*b^2*(b*c - a*d)*sqrt(a + b*x)*(c + d*x)^(3//4))/(15*d^4) + (112*b^2*(a + b*x)^(3//2)*(c + d*x)^(3//4))/(9*d^3) + (448*b^(5//4)*(b*c - a*d)^(11//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticE(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(15*d^5*sqrt(a + b*x)) - (448*b^(5//4)*(b*c - a*d)^(11//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(15*d^5*sqrt(a + b*x)), integration_var = x, mistery_val = 11),
#     (integrand = (a + b*x)^(5//2)/(c + d*x)^(9//4), result = (-4*(a + b*x)^(5//2))/(5*d*(c + d*x)^(5//4)) - (8*b*(a + b*x)^(3//2))/(d^2*(c + d*x)^(1//4)) + (48*b^2*sqrt(a + b*x)*(c + d*x)^(3//4))/(5*d^3) - (96*b^(5//4)*(b*c - a*d)^(7//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticE(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(5*d^4*sqrt(a + b*x)) + (96*b^(5//4)*(b*c - a*d)^(7//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(5*d^4*sqrt(a + b*x)), integration_var = x, mistery_val = 10),
#     (integrand = (a + b*x)^(3//2)/(c + d*x)^(9//4), result = (-4*(a + b*x)^(3//2))/(5*d*(c + d*x)^(5//4)) - (24*b*sqrt(a + b*x))/(5*d^2*(c + d*x)^(1//4)) + (48*b^(5//4)*(b*c - a*d)^(3//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticE(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(5*d^3*sqrt(a + b*x)) - (48*b^(5//4)*(b*c - a*d)^(3//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(5*d^3*sqrt(a + b*x)), integration_var = x, mistery_val = 9),
#     (integrand = (a + b*x)^(1//2)/(c + d*x)^(9//4), result = (-4*sqrt(a + b*x))/(5*d*(c + d*x)^(5//4)) + (8*b*sqrt(a + b*x))/(5*d*(b*c - a*d)*(c + d*x)^(1//4)) - (8*b^(5//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticE(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(5*d^2*(b*c - a*d)^(1//4)*sqrt(a + b*x)) + (8*b^(5//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(5*d^2*(b*c - a*d)^(1//4)*sqrt(a + b*x)), integration_var = x, mistery_val = 9),
#     (integrand = 1/((a + b*x)^(1//2)*(c + d*x)^(9//4)), result = (4*sqrt(a + b*x))/(5*(b*c - a*d)*(c + d*x)^(5//4)) + (12*b*sqrt(a + b*x))/(5*(b*c - a*d)^2*(c + d*x)^(1//4)) - (12*b^(5//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticE(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(5*d*(b*c - a*d)^(5//4)*sqrt(a + b*x)) + (12*b^(5//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(5*d*(b*c - a*d)^(5//4)*sqrt(a + b*x)), integration_var = x, mistery_val = 9),
#     (integrand = 1/((a + b*x)^(3//2)*(c + d*x)^(9//4)), result = -2/((b*c - a*d)*sqrt(a + b*x)*(c + d*x)^(5//4)) - (14*d*sqrt(a + b*x))/(5*(b*c - a*d)^2*(c + d*x)^(5//4)) - (42*b*d*sqrt(a + b*x))/(5*(b*c - a*d)^3*(c + d*x)^(1//4)) + (42*b^(5//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticE(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(5*(b*c - a*d)^(9//4)*sqrt(a + b*x)) - (42*b^(5//4)*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(5*(b*c - a*d)^(9//4)*sqrt(a + b*x)), integration_var = x, mistery_val = 10),
#     (integrand = 1/((a + b*x)^(5//2)*(c + d*x)^(9//4)), result = -2/(3*(b*c - a*d)*(a + b*x)^(3//2)*(c + d*x)^(5//4)) + (11*d)/(3*(b*c - a*d)^2*sqrt(a + b*x)*(c + d*x)^(5//4)) + (77*d^2*sqrt(a + b*x))/(15*(b*c - a*d)^3*(c + d*x)^(5//4)) + (77*b*d^2*sqrt(a + b*x))/(5*(b*c - a*d)^4*(c + d*x)^(1//4)) - (77*b^(5//4)*d*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticE(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(5*(b*c - a*d)^(13//4)*sqrt(a + b*x)) + (77*b^(5//4)*d*sqrt(-((d*(a + b*x))/(b*c - a*d)))*EllipticF(asin((b^(1//4)*(c + d*x)^(1//4))/(b*c - a*d)^(1//4)), -1))/(5*(b*c - a*d)^(13//4)*sqrt(a + b*x)), integration_var = x, mistery_val = 11),
# 
# 
# # ::Subsection::Closed::
# # Integrands of the form (a+b x)^(m/4) (c+d x)^(n/4)
# 
# 
# # ::Subsubsection::Closed::
# # n>0
# 
# 
#     (integrand = (a + b*x)^(3//4)*(c + d*x)^(5//4), result = (5*(b*c - a*d)^2*(a + b*x)^(3//4)*(c + d*x)^(1//4))/(96*b^2*d) + (5*(b*c - a*d)*(a + b*x)^(7//4)*(c + d*x)^(1//4))/(24*b^2) + ((a + b*x)^(7//4)*(c + d*x)^(5//4))/(3*b) + (5*(b*c - a*d)^3*atan((d^(1//4)*(a + b*x)^(1//4))/(b^(1//4)*(c + d*x)^(1//4))))/(64*b^(9//4)*d^(7//4)) - (5*(b*c - a*d)^3*atanh((d^(1//4)*(a + b*x)^(1//4))/(b^(1//4)*(c + d*x)^(1//4))))/(64*b^(9//4)*d^(7//4)), integration_var = x, mistery_val = 8),
#     (integrand = (c + d*x)^(5//4)/(a + b*x)^(1//4), result = (5*(b*c - a*d)*(a + b*x)^(3//4)*(c + d*x)^(1//4))/(8*b^2) + ((a + b*x)^(3//4)*(c + d*x)^(5//4))/(2*b) - (5*(b*c - a*d)^2*atan((d^(1//4)*(a + b*x)^(1//4))/(b^(1//4)*(c + d*x)^(1//4))))/(16*b^(9//4)*d^(3//4)) + (5*(b*c - a*d)^2*atanh((d^(1//4)*(a + b*x)^(1//4))/(b^(1//4)*(c + d*x)^(1//4))))/(16*b^(9//4)*d^(3//4)), integration_var = x, mistery_val = 7),
#     (integrand = (c + d*x)^(5//4)/(a + b*x)^(5//4), result = (5*d*(a + b*x)^(3//4)*(c + d*x)^(1//4))/b^2 - (4*(c + d*x)^(5//4))/(b*(a + b*x)^(1//4)) - (5*d^(1//4)*(b*c - a*d)*atan((d^(1//4)*(a + b*x)^(1//4))/(b^(1//4)*(c + d*x)^(1//4))))/(2*b^(9//4)) + (5*d^(1//4)*(b*c - a*d)*atanh((d^(1//4)*(a + b*x)^(1//4))/(b^(1//4)*(c + d*x)^(1//4))))/(2*b^(9//4)), integration_var = x, mistery_val = 7),
#     (integrand = (c + d*x)^(5//4)/(a + b*x)^(9//4), result = (-4*d*(c + d*x)^(1//4))/(b^2*(a + b*x)^(1//4)) - (4*(c + d*x)^(5//4))/(5*b*(a + b*x)^(5//4)) - (2*d^(5//4)*atan((d^(1//4)*(a + b*x)^(1//4))/(b^(1//4)*(c + d*x)^(1//4))))/b^(9//4) + (2*d^(5//4)*atanh((d^(1//4)*(a + b*x)^(1//4))/(b^(1//4)*(c + d*x)^(1//4))))/b^(9//4), integration_var = x, mistery_val = 7),
#     (integrand = (c + d*x)^(5//4)/(a + b*x)^(13//4), result = (-4*(c + d*x)^(9//4))/(9*(b*c - a*d)*(a + b*x)^(9//4)), integration_var = x, mistery_val = 1),
#     (integrand = (c + d*x)^(5//4)/(a + b*x)^(17//4), result = (-4*(c + d*x)^(9//4))/(13*(b*c - a*d)*(a + b*x)^(13//4)) + (16*d*(c + d*x)^(9//4))/(117*(b*c - a*d)^2*(a + b*x)^(9//4)), integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^(5//4)/(a + b*x)^(21//4), result = (-4*(c + d*x)^(9//4))/(17*(b*c - a*d)*(a + b*x)^(17//4)) + (32*d*(c + d*x)^(9//4))/(221*(b*c - a*d)^2*(a + b*x)^(13//4)) - (128*d^2*(c + d*x)^(9//4))/(1989*(b*c - a*d)^3*(a + b*x)^(9//4)), integration_var = x, mistery_val = 3),
#     (integrand = (c + d*x)^(5//4)/(a + b*x)^(25//4), result = (-4*(c + d*x)^(9//4))/(21*(b*c - a*d)*(a + b*x)^(21//4)) + (16*d*(c + d*x)^(9//4))/(119*(b*c - a*d)^2*(a + b*x)^(17//4)) - (128*d^2*(c + d*x)^(9//4))/(1547*(b*c - a*d)^3*(a + b*x)^(13//4)) + (512*d^3*(c + d*x)^(9//4))/(13923*(b*c - a*d)^4*(a + b*x)^(9//4)), integration_var = x, mistery_val = 4),
# 
#     (integrand = (a + b*x)^(5//4)*(c + d*x)^(5//4), result = -((5*(b*c - a*d)^3*(a + b*x)^(1//4)*(c + d*x)^(1//4))/(84*b^2*d^2)) + ((b*c - a*d)^2*(a + b*x)^(5//4)*(c + d*x)^(1//4))/(42*b^2*d) + ((b*c - a*d)*(a + b*x)^(9//4)*(c + d*x)^(1//4))/(7*b^2) + (2*(a + b*x)^(9//4)*(c + d*x)^(5//4))/(7*b) + (5*(b*c - a*d)^(9//2)*((a + b*x)*(c + d*x))^(3//4)*sqrt((b*c + a*d + 2*b*d*x)^2)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))*sqrt((a*d + b*(c + 2*d*x))^2/((b*c - a*d)^2*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))^2))*EllipticF(2*atan((sqrt(2)*b^(1//4)*d^(1//4)*((a + b*x)*(c + d*x))^(1//4))/sqrt(b*c - a*d)), 1//2))/(168*sqrt(2)*b^(9//4)*d^(9//4)*(a + b*x)^(3//4)*(c + d*x)^(3//4)*(b*c + a*d + 2*b*d*x)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 7),
#     (integrand = (a + b*x)^(1//4)*(c + d*x)^(5//4), result = ((b*c - a*d)^2*(a + b*x)^(1//4)*(c + d*x)^(1//4))/(6*b^2*d) + ((b*c - a*d)*(a + b*x)^(5//4)*(c + d*x)^(1//4))/(3*b^2) + (2*(a + b*x)^(5//4)*(c + d*x)^(5//4))/(5*b) - ((b*c - a*d)^(7//2)*((a + b*x)*(c + d*x))^(3//4)*sqrt((b*c + a*d + 2*b*d*x)^2)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))*sqrt((a*d + b*(c + 2*d*x))^2/((b*c - a*d)^2*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))^2))*EllipticF(2*atan((sqrt(2)*b^(1//4)*d^(1//4)*((a + b*x)*(c + d*x))^(1//4))/sqrt(b*c - a*d)), 1//2))/(12*sqrt(2)*b^(9//4)*d^(5//4)*(a + b*x)^(3//4)*(c + d*x)^(3//4)*(b*c + a*d + 2*b*d*x)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 6),
#     (integrand = (c + d*x)^(5//4)/(a + b*x)^(3//4), result = (5*(b*c - a*d)*(a + b*x)^(1//4)*(c + d*x)^(1//4))/(3*b^2) + (2*(a + b*x)^(1//4)*(c + d*x)^(5//4))/(3*b) + (5*(b*c - a*d)^(5//2)*((a + b*x)*(c + d*x))^(3//4)*sqrt((b*c + a*d + 2*b*d*x)^2)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))*sqrt((a*d + b*(c + 2*d*x))^2/((b*c - a*d)^2*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))^2))*EllipticF(2*atan((sqrt(2)*b^(1//4)*d^(1//4)*((a + b*x)*(c + d*x))^(1//4))/sqrt(b*c - a*d)), 1//2))/(6*sqrt(2)*b^(9//4)*d^(1//4)*(a + b*x)^(3//4)*(c + d*x)^(3//4)*(b*c + a*d + 2*b*d*x)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 5),
#     (integrand = (c + d*x)^(5//4)/(a + b*x)^(7//4), result = (10*d*(a + b*x)^(1//4)*(c + d*x)^(1//4))/(3*b^2) - (4*(c + d*x)^(5//4))/(3*b*(a + b*x)^(3//4)) + (5*d^(3//4)*(b*c - a*d)^(3//2)*((a + b*x)*(c + d*x))^(3//4)*sqrt((b*c + a*d + 2*b*d*x)^2)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))*sqrt((a*d + b*(c + 2*d*x))^2/((b*c - a*d)^2*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))^2))*EllipticF(2*atan((sqrt(2)*b^(1//4)*d^(1//4)*((a + b*x)*(c + d*x))^(1//4))/sqrt(b*c - a*d)), 1//2))/(3*sqrt(2)*b^(9//4)*(a + b*x)^(3//4)*(c + d*x)^(3//4)*(b*c + a*d + 2*b*d*x)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 5),
#     (integrand = (c + d*x)^(5//4)/(a + b*x)^(11//4), result = -((20*d*(c + d*x)^(1//4))/(21*b^2*(a + b*x)^(3//4))) - (4*(c + d*x)^(5//4))/(7*b*(a + b*x)^(7//4)) + (5*sqrt(2)*d^(7//4)*sqrt(b*c - a*d)*((a + b*x)*(c + d*x))^(3//4)*sqrt((b*c + a*d + 2*b*d*x)^2)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))*sqrt((a*d + b*(c + 2*d*x))^2/((b*c - a*d)^2*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))^2))*EllipticF(2*atan((sqrt(2)*b^(1//4)*d^(1//4)*((a + b*x)*(c + d*x))^(1//4))/sqrt(b*c - a*d)), 1//2))/(21*b^(9//4)*(a + b*x)^(3//4)*(c + d*x)^(3//4)*(b*c + a*d + 2*b*d*x)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 5),
#     (integrand = (c + d*x)^(5//4)/(a + b*x)^(15//4), result = -((20*d*(c + d*x)^(1//4))/(77*b^2*(a + b*x)^(7//4))) - (20*d^2*(c + d*x)^(1//4))/(231*b^2*(b*c - a*d)*(a + b*x)^(3//4)) - (4*(c + d*x)^(5//4))/(11*b*(a + b*x)^(11//4)) - (10*sqrt(2)*d^(11//4)*((a + b*x)*(c + d*x))^(3//4)*sqrt((b*c + a*d + 2*b*d*x)^2)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))*sqrt((a*d + b*(c + 2*d*x))^2/((b*c - a*d)^2*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))^2))*EllipticF(2*atan((sqrt(2)*b^(1//4)*d^(1//4)*((a + b*x)*(c + d*x))^(1//4))/sqrt(b*c - a*d)), 1//2))/(231*b^(9//4)*sqrt(b*c - a*d)*(a + b*x)^(3//4)*(c + d*x)^(3//4)*(b*c + a*d + 2*b*d*x)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 6),
#     (integrand = (c + d*x)^(5//4)/(a + b*x)^(19//4), result = -((4*d*(c + d*x)^(1//4))/(33*b^2*(a + b*x)^(11//4))) - (4*d^2*(c + d*x)^(1//4))/(231*b^2*(b*c - a*d)*(a + b*x)^(7//4)) + (8*d^3*(c + d*x)^(1//4))/(231*b^2*(b*c - a*d)^2*(a + b*x)^(3//4)) - (4*(c + d*x)^(5//4))/(15*b*(a + b*x)^(15//4)) + (4*sqrt(2)*d^(15//4)*((a + b*x)*(c + d*x))^(3//4)*sqrt((b*c + a*d + 2*b*d*x)^2)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))*sqrt((a*d + b*(c + 2*d*x))^2/((b*c - a*d)^2*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))^2))*EllipticF(2*atan((sqrt(2)*b^(1//4)*d^(1//4)*((a + b*x)*(c + d*x))^(1//4))/sqrt(b*c - a*d)), 1//2))/(231*b^(9//4)*(b*c - a*d)^(3//2)*(a + b*x)^(3//4)*(c + d*x)^(3//4)*(b*c + a*d + 2*b*d*x)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 7),
# 
# 
# # ::Subsubsection::Closed::
# # n<0
# 
# 
#     (integrand = (a + b*x)^(5//4)/(c + d*x)^(1//4), result = (-5*(b*c - a*d)*(a + b*x)^(1//4)*(c + d*x)^(3//4))/(8*d^2) + ((a + b*x)^(5//4)*(c + d*x)^(3//4))/(2*d) + (5*(b*c - a*d)^2*atan((d^(1//4)*(a + b*x)^(1//4))/(b^(1//4)*(c + d*x)^(1//4))))/(16*b^(3//4)*d^(9//4)) + (5*(b*c - a*d)^2*atanh((d^(1//4)*(a + b*x)^(1//4))/(b^(1//4)*(c + d*x)^(1//4))))/(16*b^(3//4)*d^(9//4)), integration_var = x, mistery_val = 7),
#     (integrand = (a + b*x)^(1//4)/(c + d*x)^(1//4), result = ((a + b*x)^(1//4)*(c + d*x)^(3//4))/d - ((b*c - a*d)*atan((d^(1//4)*(a + b*x)^(1//4))/(b^(1//4)*(c + d*x)^(1//4))))/(2*b^(3//4)*d^(5//4)) - ((b*c - a*d)*atanh((d^(1//4)*(a + b*x)^(1//4))/(b^(1//4)*(c + d*x)^(1//4))))/(2*b^(3//4)*d^(5//4)), integration_var = x, mistery_val = 6),
#     (integrand = 1/((a + b*x)^(3//4)*(c + d*x)^(1//4)), result = (2*atan((d^(1//4)*(a + b*x)^(1//4))/(b^(1//4)*(c + d*x)^(1//4))))/(b^(3//4)*d^(1//4)) + (2*atanh((d^(1//4)*(a + b*x)^(1//4))/(b^(1//4)*(c + d*x)^(1//4))))/(b^(3//4)*d^(1//4)), integration_var = x, mistery_val = 5),
#     (integrand = 1/((a + b*x)^(7//4)*(c + d*x)^(1//4)), result = (-4*(c + d*x)^(3//4))/(3*(b*c - a*d)*(a + b*x)^(3//4)), integration_var = x, mistery_val = 1),
#     (integrand = 1/((a + b*x)^(11//4)*(c + d*x)^(1//4)), result = (-4*(c + d*x)^(3//4))/(7*(b*c - a*d)*(a + b*x)^(7//4)) + (16*d*(c + d*x)^(3//4))/(21*(b*c - a*d)^2*(a + b*x)^(3//4)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((a + b*x)^(15//4)*(c + d*x)^(1//4)), result = (-4*(c + d*x)^(3//4))/(11*(b*c - a*d)*(a + b*x)^(11//4)) + (32*d*(c + d*x)^(3//4))/(77*(b*c - a*d)^2*(a + b*x)^(7//4)) - (128*d^2*(c + d*x)^(3//4))/(231*(b*c - a*d)^3*(a + b*x)^(3//4)), integration_var = x, mistery_val = 3),
#     (integrand = 1/((a + b*x)^(19//4)*(c + d*x)^(1//4)), result = (-4*(c + d*x)^(3//4))/(15*(b*c - a*d)*(a + b*x)^(15//4)) + (16*d*(c + d*x)^(3//4))/(55*(b*c - a*d)^2*(a + b*x)^(11//4)) - (128*d^2*(c + d*x)^(3//4))/(385*(b*c - a*d)^3*(a + b*x)^(7//4)) + (512*d^3*(c + d*x)^(3//4))/(1155*(b*c - a*d)^4*(a + b*x)^(3//4)), integration_var = x, mistery_val = 4),
# 
#     (integrand = (a + b*x)^(7//4)/(c + d*x)^(1//4), result = -((7*(b*c - a*d)*(a + b*x)^(3//4)*(c + d*x)^(3//4))/(15*d^2)) + (2*(a + b*x)^(7//4)*(c + d*x)^(3//4))/(5*d) + (7*(b*c - a*d)*sqrt((a + b*x)*(c + d*x))*sqrt((b*c + a*d + 2*b*d*x)^2)*sqrt((a*d + b*(c + 2*d*x))^2))/(10*sqrt(b)*d^(5//2)*(a + b*x)^(1//4)*(c + d*x)^(1//4)*(b*c + a*d + 2*b*d*x)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))) - (7*(b*c - a*d)^(7//2)*((a + b*x)*(c + d*x))^(1//4)*sqrt((b*c + a*d + 2*b*d*x)^2)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))*sqrt((a*d + b*(c + 2*d*x))^2/((b*c - a*d)^2*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))^2))*EllipticE(2*atan((sqrt(2)*b^(1//4)*d^(1//4)*((a + b*x)*(c + d*x))^(1//4))/sqrt(b*c - a*d)), 1//2))/(10*sqrt(2)*b^(3//4)*d^(11//4)*(a + b*x)^(1//4)*(c + d*x)^(1//4)*(b*c + a*d + 2*b*d*x)*sqrt((a*d + b*(c + 2*d*x))^2)) + (7*(b*c - a*d)^(7//2)*((a + b*x)*(c + d*x))^(1//4)*sqrt((b*c + a*d + 2*b*d*x)^2)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))*sqrt((a*d + b*(c + 2*d*x))^2/((b*c - a*d)^2*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))^2))*EllipticF(2*atan((sqrt(2)*b^(1//4)*d^(1//4)*((a + b*x)*(c + d*x))^(1//4))/sqrt(b*c - a*d)), 1//2))/(20*sqrt(2)*b^(3//4)*d^(11//4)*(a + b*x)^(1//4)*(c + d*x)^(1//4)*(b*c + a*d + 2*b*d*x)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 7),
#     (integrand = (a + b*x)^(3//4)/(c + d*x)^(1//4), result = (2*(a + b*x)^(3//4)*(c + d*x)^(3//4))/(3*d) - (sqrt((a + b*x)*(c + d*x))*sqrt((b*c + a*d + 2*b*d*x)^2)*sqrt((a*d + b*(c + 2*d*x))^2))/(sqrt(b)*d^(3//2)*(a + b*x)^(1//4)*(c + d*x)^(1//4)*(b*c + a*d + 2*b*d*x)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))) + ((b*c - a*d)^(5//2)*((a + b*x)*(c + d*x))^(1//4)*sqrt((b*c + a*d + 2*b*d*x)^2)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))*sqrt((a*d + b*(c + 2*d*x))^2/((b*c - a*d)^2*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))^2))*EllipticE(2*atan((sqrt(2)*b^(1//4)*d^(1//4)*((a + b*x)*(c + d*x))^(1//4))/sqrt(b*c - a*d)), 1//2))/(sqrt(2)*b^(3//4)*d^(7//4)*(a + b*x)^(1//4)*(c + d*x)^(1//4)*(b*c + a*d + 2*b*d*x)*sqrt((a*d + b*(c + 2*d*x))^2)) - ((b*c - a*d)^(5//2)*((a + b*x)*(c + d*x))^(1//4)*sqrt((b*c + a*d + 2*b*d*x)^2)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))*sqrt((a*d + b*(c + 2*d*x))^2/((b*c - a*d)^2*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))^2))*EllipticF(2*atan((sqrt(2)*b^(1//4)*d^(1//4)*((a + b*x)*(c + d*x))^(1//4))/sqrt(b*c - a*d)), 1//2))/(2*sqrt(2)*b^(3//4)*d^(7//4)*(a + b*x)^(1//4)*(c + d*x)^(1//4)*(b*c + a*d + 2*b*d*x)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 6),
#     (integrand = 1/((a + b*x)^(1//4)*(c + d*x)^(1//4)), result = (2*sqrt((a + b*x)*(c + d*x))*sqrt((b*c + a*d + 2*b*d*x)^2)*sqrt((a*d + b*(c + 2*d*x))^2))/(sqrt(b)*sqrt(d)*(b*c - a*d)*(a + b*x)^(1//4)*(c + d*x)^(1//4)*(b*c + a*d + 2*b*d*x)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))) - (sqrt(2)*(b*c - a*d)^(3//2)*((a + b*x)*(c + d*x))^(1//4)*sqrt((b*c + a*d + 2*b*d*x)^2)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))*sqrt((a*d + b*(c + 2*d*x))^2/((b*c - a*d)^2*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))^2))*EllipticE(2*atan((sqrt(2)*b^(1//4)*d^(1//4)*((a + b*x)*(c + d*x))^(1//4))/sqrt(b*c - a*d)), 1//2))/(b^(3//4)*d^(3//4)*(a + b*x)^(1//4)*(c + d*x)^(1//4)*(b*c + a*d + 2*b*d*x)*sqrt((a*d + b*(c + 2*d*x))^2)) + ((b*c - a*d)^(3//2)*((a + b*x)*(c + d*x))^(1//4)*sqrt((b*c + a*d + 2*b*d*x)^2)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))*sqrt((a*d + b*(c + 2*d*x))^2/((b*c - a*d)^2*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))^2))*EllipticF(2*atan((sqrt(2)*b^(1//4)*d^(1//4)*((a + b*x)*(c + d*x))^(1//4))/sqrt(b*c - a*d)), 1//2))/(sqrt(2)*b^(3//4)*d^(3//4)*(a + b*x)^(1//4)*(c + d*x)^(1//4)*(b*c + a*d + 2*b*d*x)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 5),
#     (integrand = 1/((a + b*x)^(5//4)*(c + d*x)^(1//4)), result = -((4*(c + d*x)^(3//4))/((b*c - a*d)*(a + b*x)^(1//4))) + (4*sqrt(d)*sqrt((a + b*x)*(c + d*x))*sqrt((b*c + a*d + 2*b*d*x)^2)*sqrt((a*d + b*(c + 2*d*x))^2))/(sqrt(b)*(b*c - a*d)^2*(a + b*x)^(1//4)*(c + d*x)^(1//4)*(b*c + a*d + 2*b*d*x)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))) - (2*sqrt(2)*d^(1//4)*sqrt(b*c - a*d)*((a + b*x)*(c + d*x))^(1//4)*sqrt((b*c + a*d + 2*b*d*x)^2)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))*sqrt((a*d + b*(c + 2*d*x))^2/((b*c - a*d)^2*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))^2))*EllipticE(2*atan((sqrt(2)*b^(1//4)*d^(1//4)*((a + b*x)*(c + d*x))^(1//4))/sqrt(b*c - a*d)), 1//2))/(b^(3//4)*(a + b*x)^(1//4)*(c + d*x)^(1//4)*(b*c + a*d + 2*b*d*x)*sqrt((a*d + b*(c + 2*d*x))^2)) + (sqrt(2)*d^(1//4)*sqrt(b*c - a*d)*((a + b*x)*(c + d*x))^(1//4)*sqrt((b*c + a*d + 2*b*d*x)^2)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))*sqrt((a*d + b*(c + 2*d*x))^2/((b*c - a*d)^2*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))^2))*EllipticF(2*atan((sqrt(2)*b^(1//4)*d^(1//4)*((a + b*x)*(c + d*x))^(1//4))/sqrt(b*c - a*d)), 1//2))/(b^(3//4)*(a + b*x)^(1//4)*(c + d*x)^(1//4)*(b*c + a*d + 2*b*d*x)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 6),
#     (integrand = 1/((a + b*x)^(9//4)*(c + d*x)^(1//4)), result = -((4*(c + d*x)^(3//4))/(5*(b*c - a*d)*(a + b*x)^(5//4))) + (8*d*(c + d*x)^(3//4))/(5*(b*c - a*d)^2*(a + b*x)^(1//4)) - (8*d^(3//2)*sqrt((a + b*x)*(c + d*x))*sqrt((b*c + a*d + 2*b*d*x)^2)*sqrt((a*d + b*(c + 2*d*x))^2))/(5*sqrt(b)*(b*c - a*d)^3*(a + b*x)^(1//4)*(c + d*x)^(1//4)*(b*c + a*d + 2*b*d*x)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))) + (4*sqrt(2)*d^(5//4)*((a + b*x)*(c + d*x))^(1//4)*sqrt((b*c + a*d + 2*b*d*x)^2)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))*sqrt((a*d + b*(c + 2*d*x))^2/((b*c - a*d)^2*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))^2))*EllipticE(2*atan((sqrt(2)*b^(1//4)*d^(1//4)*((a + b*x)*(c + d*x))^(1//4))/sqrt(b*c - a*d)), 1//2))/(5*b^(3//4)*sqrt(b*c - a*d)*(a + b*x)^(1//4)*(c + d*x)^(1//4)*(b*c + a*d + 2*b*d*x)*sqrt((a*d + b*(c + 2*d*x))^2)) - (2*sqrt(2)*d^(5//4)*((a + b*x)*(c + d*x))^(1//4)*sqrt((b*c + a*d + 2*b*d*x)^2)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))*sqrt((a*d + b*(c + 2*d*x))^2/((b*c - a*d)^2*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))^2))*EllipticF(2*atan((sqrt(2)*b^(1//4)*d^(1//4)*((a + b*x)*(c + d*x))^(1//4))/sqrt(b*c - a*d)), 1//2))/(5*b^(3//4)*sqrt(b*c - a*d)*(a + b*x)^(1//4)*(c + d*x)^(1//4)*(b*c + a*d + 2*b*d*x)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 7),
# 
# 
#     (integrand = (a + b*x)^(7//4)/(c + d*x)^(3//4), result = (-7*(b*c - a*d)*(a + b*x)^(3//4)*(c + d*x)^(1//4))/(8*d^2) + ((a + b*x)^(7//4)*(c + d*x)^(1//4))/(2*d) - (21*(b*c - a*d)^2*atan((d^(1//4)*(a + b*x)^(1//4))/(b^(1//4)*(c + d*x)^(1//4))))/(16*b^(1//4)*d^(11//4)) + (21*(b*c - a*d)^2*atanh((d^(1//4)*(a + b*x)^(1//4))/(b^(1//4)*(c + d*x)^(1//4))))/(16*b^(1//4)*d^(11//4)), integration_var = x, mistery_val = 7),
#     (integrand = (a + b*x)^(3//4)/(c + d*x)^(3//4), result = ((a + b*x)^(3//4)*(c + d*x)^(1//4))/d + (3*(b*c - a*d)*atan((d^(1//4)*(a + b*x)^(1//4))/(b^(1//4)*(c + d*x)^(1//4))))/(2*b^(1//4)*d^(7//4)) - (3*(b*c - a*d)*atanh((d^(1//4)*(a + b*x)^(1//4))/(b^(1//4)*(c + d*x)^(1//4))))/(2*b^(1//4)*d^(7//4)), integration_var = x, mistery_val = 6),
#     (integrand = 1/((a + b*x)^(1//4)*(c + d*x)^(3//4)), result = (-2*atan((d^(1//4)*(a + b*x)^(1//4))/(b^(1//4)*(c + d*x)^(1//4))))/(b^(1//4)*d^(3//4)) + (2*atanh((d^(1//4)*(a + b*x)^(1//4))/(b^(1//4)*(c + d*x)^(1//4))))/(b^(1//4)*d^(3//4)), integration_var = x, mistery_val = 5),
#     (integrand = 1/((a + b*x)^(5//4)*(c + d*x)^(3//4)), result = (-4*(c + d*x)^(1//4))/((b*c - a*d)*(a + b*x)^(1//4)), integration_var = x, mistery_val = 1),
#     (integrand = 1/((a + b*x)^(9//4)*(c + d*x)^(3//4)), result = (-4*(c + d*x)^(1//4))/(5*(b*c - a*d)*(a + b*x)^(5//4)) + (16*d*(c + d*x)^(1//4))/(5*(b*c - a*d)^2*(a + b*x)^(1//4)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((a + b*x)^(13//4)*(c + d*x)^(3//4)), result = (-4*(c + d*x)^(1//4))/(9*(b*c - a*d)*(a + b*x)^(9//4)) + (32*d*(c + d*x)^(1//4))/(45*(b*c - a*d)^2*(a + b*x)^(5//4)) - (128*d^2*(c + d*x)^(1//4))/(45*(b*c - a*d)^3*(a + b*x)^(1//4)), integration_var = x, mistery_val = 3),
#     (integrand = 1/((a + b*x)^(17//4)*(c + d*x)^(3//4)), result = (-4*(c + d*x)^(1//4))/(13*(b*c - a*d)*(a + b*x)^(13//4)) + (16*d*(c + d*x)^(1//4))/(39*(b*c - a*d)^2*(a + b*x)^(9//4)) - (128*d^2*(c + d*x)^(1//4))/(195*(b*c - a*d)^3*(a + b*x)^(5//4)) + (512*d^3*(c + d*x)^(1//4))/(195*(b*c - a*d)^4*(a + b*x)^(1//4)), integration_var = x, mistery_val = 4),
# 
#     (integrand = (a + b*x)^(5//4)/(c + d*x)^(3//4), result = -((5*(b*c - a*d)*(a + b*x)^(1//4)*(c + d*x)^(1//4))/(3*d^2)) + (2*(a + b*x)^(5//4)*(c + d*x)^(1//4))/(3*d) + (5*(b*c - a*d)^(5//2)*((a + b*x)*(c + d*x))^(3//4)*sqrt((b*c + a*d + 2*b*d*x)^2)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))*sqrt((a*d + b*(c + 2*d*x))^2/((b*c - a*d)^2*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))^2))*EllipticF(2*atan((sqrt(2)*b^(1//4)*d^(1//4)*((a + b*x)*(c + d*x))^(1//4))/sqrt(b*c - a*d)), 1//2))/(6*sqrt(2)*b^(1//4)*d^(9//4)*(a + b*x)^(3//4)*(c + d*x)^(3//4)*(b*c + a*d + 2*b*d*x)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 5),
#     (integrand = (a + b*x)^(1//4)/(c + d*x)^(3//4), result = (2*(a + b*x)^(1//4)*(c + d*x)^(1//4))/d - ((b*c - a*d)^(3//2)*((a + b*x)*(c + d*x))^(3//4)*sqrt((b*c + a*d + 2*b*d*x)^2)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))*sqrt((a*d + b*(c + 2*d*x))^2/((b*c - a*d)^2*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))^2))*EllipticF(2*atan((sqrt(2)*b^(1//4)*d^(1//4)*((a + b*x)*(c + d*x))^(1//4))/sqrt(b*c - a*d)), 1//2))/(sqrt(2)*b^(1//4)*d^(5//4)*(a + b*x)^(3//4)*(c + d*x)^(3//4)*(b*c + a*d + 2*b*d*x)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 4),
#     (integrand = 1/((a + b*x)^(3//4)*(c + d*x)^(3//4)), result = (sqrt(2)*sqrt(b*c - a*d)*((a + b*x)*(c + d*x))^(3//4)*sqrt((b*c + a*d + 2*b*d*x)^2)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))*sqrt((a*d + b*(c + 2*d*x))^2/((b*c - a*d)^2*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))^2))*EllipticF(2*atan((sqrt(2)*b^(1//4)*d^(1//4)*((a + b*x)*(c + d*x))^(1//4))/sqrt(b*c - a*d)), 1//2))/(b^(1//4)*d^(1//4)*(a + b*x)^(3//4)*(c + d*x)^(3//4)*(b*c + a*d + 2*b*d*x)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 3),
#     (integrand = 1/((a + b*x)^(7//4)*(c + d*x)^(3//4)), result = -((4*(c + d*x)^(1//4))/(3*(b*c - a*d)*(a + b*x)^(3//4))) - (2*sqrt(2)*d^(3//4)*((a + b*x)*(c + d*x))^(3//4)*sqrt((b*c + a*d + 2*b*d*x)^2)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))*sqrt((a*d + b*(c + 2*d*x))^2/((b*c - a*d)^2*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))^2))*EllipticF(2*atan((sqrt(2)*b^(1//4)*d^(1//4)*((a + b*x)*(c + d*x))^(1//4))/sqrt(b*c - a*d)), 1//2))/(3*b^(1//4)*sqrt(b*c - a*d)*(a + b*x)^(3//4)*(c + d*x)^(3//4)*(b*c + a*d + 2*b*d*x)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 4),
#     (integrand = 1/((a + b*x)^(11//4)*(c + d*x)^(3//4)), result = -((4*(c + d*x)^(1//4))/(7*(b*c - a*d)*(a + b*x)^(7//4))) + (8*d*(c + d*x)^(1//4))/(7*(b*c - a*d)^2*(a + b*x)^(3//4)) + (4*sqrt(2)*d^(7//4)*((a + b*x)*(c + d*x))^(3//4)*sqrt((b*c + a*d + 2*b*d*x)^2)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))*sqrt((a*d + b*(c + 2*d*x))^2/((b*c - a*d)^2*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))^2))*EllipticF(2*atan((sqrt(2)*b^(1//4)*d^(1//4)*((a + b*x)*(c + d*x))^(1//4))/sqrt(b*c - a*d)), 1//2))/(7*b^(1//4)*(b*c - a*d)^(3//2)*(a + b*x)^(3//4)*(c + d*x)^(3//4)*(b*c + a*d + 2*b*d*x)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 5),
# 
# 
#     (integrand = (a + b*x)^(5//4)/(c + d*x)^(5//4), result = (-4*(a + b*x)^(5//4))/(d*(c + d*x)^(1//4)) + (5*b*(a + b*x)^(1//4)*(c + d*x)^(3//4))/d^2 - (5*b^(1//4)*(b*c - a*d)*atan((d^(1//4)*(a + b*x)^(1//4))/(b^(1//4)*(c + d*x)^(1//4))))/(2*d^(9//4)) - (5*b^(1//4)*(b*c - a*d)*atanh((d^(1//4)*(a + b*x)^(1//4))/(b^(1//4)*(c + d*x)^(1//4))))/(2*d^(9//4)), integration_var = x, mistery_val = 7),
#     (integrand = (a + b*x)^(1//4)/(c + d*x)^(5//4), result = (-4*(a + b*x)^(1//4))/(d*(c + d*x)^(1//4)) + (2*b^(1//4)*atan((d^(1//4)*(a + b*x)^(1//4))/(b^(1//4)*(c + d*x)^(1//4))))/d^(5//4) + (2*b^(1//4)*atanh((d^(1//4)*(a + b*x)^(1//4))/(b^(1//4)*(c + d*x)^(1//4))))/d^(5//4), integration_var = x, mistery_val = 6),
#     (integrand = 1/((a + b*x)^(3//4)*(c + d*x)^(5//4)), result = (4*(a + b*x)^(1//4))/((b*c - a*d)*(c + d*x)^(1//4)), integration_var = x, mistery_val = 1),
#     (integrand = 1/((a + b*x)^(7//4)*(c + d*x)^(5//4)), result = -4/(3*(b*c - a*d)*(a + b*x)^(3//4)*(c + d*x)^(1//4)) - (16*d*(a + b*x)^(1//4))/(3*(b*c - a*d)^2*(c + d*x)^(1//4)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((a + b*x)^(11//4)*(c + d*x)^(5//4)), result = -4/(7*(b*c - a*d)*(a + b*x)^(7//4)*(c + d*x)^(1//4)) + (32*d)/(21*(b*c - a*d)^2*(a + b*x)^(3//4)*(c + d*x)^(1//4)) + (128*d^2*(a + b*x)^(1//4))/(21*(b*c - a*d)^3*(c + d*x)^(1//4)), integration_var = x, mistery_val = 3),
#     (integrand = 1/((a + b*x)^(15//4)*(c + d*x)^(5//4)), result = -4/(11*(b*c - a*d)*(a + b*x)^(11//4)*(c + d*x)^(1//4)) + (48*d)/(77*(b*c - a*d)^2*(a + b*x)^(7//4)*(c + d*x)^(1//4)) - (128*d^2)/(77*(b*c - a*d)^3*(a + b*x)^(3//4)*(c + d*x)^(1//4)) - (512*d^3*(a + b*x)^(1//4))/(77*(b*c - a*d)^4*(c + d*x)^(1//4)), integration_var = x, mistery_val = 4),
# 
#     (integrand = (a + b*x)^(11//4)/(c + d*x)^(5//4), result = -((4*(a + b*x)^(11//4))/(d*(c + d*x)^(1//4))) - (77*b*(b*c - a*d)*(a + b*x)^(3//4)*(c + d*x)^(3//4))/(15*d^3) + (22*b*(a + b*x)^(7//4)*(c + d*x)^(3//4))/(5*d^2) + (77*sqrt(b)*(b*c - a*d)*sqrt((a + b*x)*(c + d*x))*sqrt((b*c + a*d + 2*b*d*x)^2)*sqrt((a*d + b*(c + 2*d*x))^2))/(10*d^(7//2)*(a + b*x)^(1//4)*(c + d*x)^(1//4)*(b*c + a*d + 2*b*d*x)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))) - (77*b^(1//4)*(b*c - a*d)^(7//2)*((a + b*x)*(c + d*x))^(1//4)*sqrt((b*c + a*d + 2*b*d*x)^2)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))*sqrt((a*d + b*(c + 2*d*x))^2/((b*c - a*d)^2*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))^2))*EllipticE(2*atan((sqrt(2)*b^(1//4)*d^(1//4)*((a + b*x)*(c + d*x))^(1//4))/sqrt(b*c - a*d)), 1//2))/(10*sqrt(2)*d^(15//4)*(a + b*x)^(1//4)*(c + d*x)^(1//4)*(b*c + a*d + 2*b*d*x)*sqrt((a*d + b*(c + 2*d*x))^2)) + (77*b^(1//4)*(b*c - a*d)^(7//2)*((a + b*x)*(c + d*x))^(1//4)*sqrt((b*c + a*d + 2*b*d*x)^2)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))*sqrt((a*d + b*(c + 2*d*x))^2/((b*c - a*d)^2*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))^2))*EllipticF(2*atan((sqrt(2)*b^(1//4)*d^(1//4)*((a + b*x)*(c + d*x))^(1//4))/sqrt(b*c - a*d)), 1//2))/(20*sqrt(2)*d^(15//4)*(a + b*x)^(1//4)*(c + d*x)^(1//4)*(b*c + a*d + 2*b*d*x)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 8),
#     (integrand = (a + b*x)^(7//4)/(c + d*x)^(5//4), result = -((4*(a + b*x)^(7//4))/(d*(c + d*x)^(1//4))) + (14*b*(a + b*x)^(3//4)*(c + d*x)^(3//4))/(3*d^2) - (7*sqrt(b)*sqrt((a + b*x)*(c + d*x))*sqrt((b*c + a*d + 2*b*d*x)^2)*sqrt((a*d + b*(c + 2*d*x))^2))/(d^(5//2)*(a + b*x)^(1//4)*(c + d*x)^(1//4)*(b*c + a*d + 2*b*d*x)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))) + (7*b^(1//4)*(b*c - a*d)^(5//2)*((a + b*x)*(c + d*x))^(1//4)*sqrt((b*c + a*d + 2*b*d*x)^2)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))*sqrt((a*d + b*(c + 2*d*x))^2/((b*c - a*d)^2*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))^2))*EllipticE(2*atan((sqrt(2)*b^(1//4)*d^(1//4)*((a + b*x)*(c + d*x))^(1//4))/sqrt(b*c - a*d)), 1//2))/(sqrt(2)*d^(11//4)*(a + b*x)^(1//4)*(c + d*x)^(1//4)*(b*c + a*d + 2*b*d*x)*sqrt((a*d + b*(c + 2*d*x))^2)) - (7*b^(1//4)*(b*c - a*d)^(5//2)*((a + b*x)*(c + d*x))^(1//4)*sqrt((b*c + a*d + 2*b*d*x)^2)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))*sqrt((a*d + b*(c + 2*d*x))^2/((b*c - a*d)^2*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))^2))*EllipticF(2*atan((sqrt(2)*b^(1//4)*d^(1//4)*((a + b*x)*(c + d*x))^(1//4))/sqrt(b*c - a*d)), 1//2))/(2*sqrt(2)*d^(11//4)*(a + b*x)^(1//4)*(c + d*x)^(1//4)*(b*c + a*d + 2*b*d*x)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 7),
#     (integrand = (a + b*x)^(3//4)/(c + d*x)^(5//4), result = -((4*(a + b*x)^(3//4))/(d*(c + d*x)^(1//4))) + (6*sqrt(b)*sqrt((a + b*x)*(c + d*x))*sqrt((b*c + a*d + 2*b*d*x)^2)*sqrt((a*d + b*(c + 2*d*x))^2))/(d^(3//2)*(b*c - a*d)*(a + b*x)^(1//4)*(c + d*x)^(1//4)*(b*c + a*d + 2*b*d*x)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))) - (3*sqrt(2)*b^(1//4)*(b*c - a*d)^(3//2)*((a + b*x)*(c + d*x))^(1//4)*sqrt((b*c + a*d + 2*b*d*x)^2)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))*sqrt((a*d + b*(c + 2*d*x))^2/((b*c - a*d)^2*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))^2))*EllipticE(2*atan((sqrt(2)*b^(1//4)*d^(1//4)*((a + b*x)*(c + d*x))^(1//4))/sqrt(b*c - a*d)), 1//2))/(d^(7//4)*(a + b*x)^(1//4)*(c + d*x)^(1//4)*(b*c + a*d + 2*b*d*x)*sqrt((a*d + b*(c + 2*d*x))^2)) + (3*b^(1//4)*(b*c - a*d)^(3//2)*((a + b*x)*(c + d*x))^(1//4)*sqrt((b*c + a*d + 2*b*d*x)^2)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))*sqrt((a*d + b*(c + 2*d*x))^2/((b*c - a*d)^2*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))^2))*EllipticF(2*atan((sqrt(2)*b^(1//4)*d^(1//4)*((a + b*x)*(c + d*x))^(1//4))/sqrt(b*c - a*d)), 1//2))/(sqrt(2)*d^(7//4)*(a + b*x)^(1//4)*(c + d*x)^(1//4)*(b*c + a*d + 2*b*d*x)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 6),
#     (integrand = 1/((a + b*x)^(1//4)*(c + d*x)^(5//4)), result = (4*(a + b*x)^(3//4))/((b*c - a*d)*(c + d*x)^(1//4)) - (4*sqrt(b)*sqrt((a + b*x)*(c + d*x))*sqrt((b*c + a*d + 2*b*d*x)^2)*sqrt((a*d + b*(c + 2*d*x))^2))/(sqrt(d)*(b*c - a*d)^2*(a + b*x)^(1//4)*(c + d*x)^(1//4)*(b*c + a*d + 2*b*d*x)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))) + (2*sqrt(2)*b^(1//4)*sqrt(b*c - a*d)*((a + b*x)*(c + d*x))^(1//4)*sqrt((b*c + a*d + 2*b*d*x)^2)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))*sqrt((a*d + b*(c + 2*d*x))^2/((b*c - a*d)^2*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))^2))*EllipticE(2*atan((sqrt(2)*b^(1//4)*d^(1//4)*((a + b*x)*(c + d*x))^(1//4))/sqrt(b*c - a*d)), 1//2))/(d^(3//4)*(a + b*x)^(1//4)*(c + d*x)^(1//4)*(b*c + a*d + 2*b*d*x)*sqrt((a*d + b*(c + 2*d*x))^2)) - (sqrt(2)*b^(1//4)*sqrt(b*c - a*d)*((a + b*x)*(c + d*x))^(1//4)*sqrt((b*c + a*d + 2*b*d*x)^2)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))*sqrt((a*d + b*(c + 2*d*x))^2/((b*c - a*d)^2*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))^2))*EllipticF(2*atan((sqrt(2)*b^(1//4)*d^(1//4)*((a + b*x)*(c + d*x))^(1//4))/sqrt(b*c - a*d)), 1//2))/(d^(3//4)*(a + b*x)^(1//4)*(c + d*x)^(1//4)*(b*c + a*d + 2*b*d*x)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 6),
#     (integrand = 1/((a + b*x)^(5//4)*(c + d*x)^(5//4)), result = -(4/((b*c - a*d)*(a + b*x)^(1//4)*(c + d*x)^(1//4))) - (8*d*(a + b*x)^(3//4))/((b*c - a*d)^2*(c + d*x)^(1//4)) + (8*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x))*sqrt((b*c + a*d + 2*b*d*x)^2)*sqrt((a*d + b*(c + 2*d*x))^2))/((b*c - a*d)^3*(a + b*x)^(1//4)*(c + d*x)^(1//4)*(b*c + a*d + 2*b*d*x)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))) - (4*sqrt(2)*b^(1//4)*d^(1//4)*((a + b*x)*(c + d*x))^(1//4)*sqrt((b*c + a*d + 2*b*d*x)^2)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))*sqrt((a*d + b*(c + 2*d*x))^2/((b*c - a*d)^2*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))^2))*EllipticE(2*atan((sqrt(2)*b^(1//4)*d^(1//4)*((a + b*x)*(c + d*x))^(1//4))/sqrt(b*c - a*d)), 1//2))/(sqrt(b*c - a*d)*(a + b*x)^(1//4)*(c + d*x)^(1//4)*(b*c + a*d + 2*b*d*x)*sqrt((a*d + b*(c + 2*d*x))^2)) + (2*sqrt(2)*b^(1//4)*d^(1//4)*((a + b*x)*(c + d*x))^(1//4)*sqrt((b*c + a*d + 2*b*d*x)^2)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))*sqrt((a*d + b*(c + 2*d*x))^2/((b*c - a*d)^2*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))^2))*EllipticF(2*atan((sqrt(2)*b^(1//4)*d^(1//4)*((a + b*x)*(c + d*x))^(1//4))/sqrt(b*c - a*d)), 1//2))/(sqrt(b*c - a*d)*(a + b*x)^(1//4)*(c + d*x)^(1//4)*(b*c + a*d + 2*b*d*x)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 7),
#     (integrand = 1/((a + b*x)^(9//4)*(c + d*x)^(5//4)), result = -(4/(5*(b*c - a*d)*(a + b*x)^(5//4)*(c + d*x)^(1//4))) + (24*d)/(5*(b*c - a*d)^2*(a + b*x)^(1//4)*(c + d*x)^(1//4)) + (48*d^2*(a + b*x)^(3//4))/(5*(b*c - a*d)^3*(c + d*x)^(1//4)) - (48*sqrt(b)*d^(3//2)*sqrt((a + b*x)*(c + d*x))*sqrt((b*c + a*d + 2*b*d*x)^2)*sqrt((a*d + b*(c + 2*d*x))^2))/(5*(b*c - a*d)^4*(a + b*x)^(1//4)*(c + d*x)^(1//4)*(b*c + a*d + 2*b*d*x)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))) + (24*sqrt(2)*b^(1//4)*d^(5//4)*((a + b*x)*(c + d*x))^(1//4)*sqrt((b*c + a*d + 2*b*d*x)^2)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))*sqrt((a*d + b*(c + 2*d*x))^2/((b*c - a*d)^2*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))^2))*EllipticE(2*atan((sqrt(2)*b^(1//4)*d^(1//4)*((a + b*x)*(c + d*x))^(1//4))/sqrt(b*c - a*d)), 1//2))/(5*(b*c - a*d)^(3//2)*(a + b*x)^(1//4)*(c + d*x)^(1//4)*(b*c + a*d + 2*b*d*x)*sqrt((a*d + b*(c + 2*d*x))^2)) - (12*sqrt(2)*b^(1//4)*d^(5//4)*((a + b*x)*(c + d*x))^(1//4)*sqrt((b*c + a*d + 2*b*d*x)^2)*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))*sqrt((a*d + b*(c + 2*d*x))^2/((b*c - a*d)^2*(1 + (2*sqrt(b)*sqrt(d)*sqrt((a + b*x)*(c + d*x)))/(b*c - a*d))^2))*EllipticF(2*atan((sqrt(2)*b^(1//4)*d^(1//4)*((a + b*x)*(c + d*x))^(1//4))/sqrt(b*c - a*d)), 1//2))/(5*(b*c - a*d)^(3//2)*(a + b*x)^(1//4)*(c + d*x)^(1//4)*(b*c + a*d + 2*b*d*x)*sqrt((a*d + b*(c + 2*d*x))^2)), integration_var = x, mistery_val = 8),
# 
# 
#     (integrand = 1/((1 - a*x)^(1//4)*(1 + b*x)^(3//4)), result = (sqrt(2)*atan(1 - (sqrt(2)*b^(1//4)*(1 - a*x)^(1//4))/(a^(1//4)*(1 + b*x)^(1//4))))/(a^(1//4)*b^(3//4)) - (sqrt(2)*atan(1 + (sqrt(2)*b^(1//4)*(1 - a*x)^(1//4))/(a^(1//4)*(1 + b*x)^(1//4))))/(a^(1//4)*b^(3//4)) - log(sqrt(a) + (sqrt(b)*sqrt(1 - a*x))/sqrt(1 + b*x) - (sqrt(2)*a^(1//4)*b^(1//4)*(1 - a*x)^(1//4))/(1 + b*x)^(1//4))/(sqrt(2)*a^(1//4)*b^(3//4)) + log(sqrt(a) + (sqrt(b)*sqrt(1 - a*x))/sqrt(1 + b*x) + (sqrt(2)*a^(1//4)*b^(1//4)*(1 - a*x)^(1//4))/(1 + b*x)^(1//4))/(sqrt(2)*a^(1//4)*b^(3//4)), integration_var = x, mistery_val = 11),
#     (integrand = 1/((1 - a*x)^(1//4)*(1 + a*x)^(3//4)), result = (sqrt(2)*atan(1 - (sqrt(2)*(1 - a*x)^(1//4))/(1 + a*x)^(1//4)))/a - (sqrt(2)*atan(1 + (sqrt(2)*(1 - a*x)^(1//4))/(1 + a*x)^(1//4)))/a - log(1 + sqrt(1 - a*x)/sqrt(1 + a*x) - (sqrt(2)*(1 - a*x)^(1//4))/(1 + a*x)^(1//4))/(sqrt(2)*a) + log(1 + sqrt(1 - a*x)/sqrt(1 + a*x) + (sqrt(2)*(1 - a*x)^(1//4))/(1 + a*x)^(1//4))/(sqrt(2)*a), integration_var = x, mistery_val = 11),
# 
# 
# # ::Subsection::Closed::
# # Integrands of the form (a+b x)^(m/2) (c+d x)^(n/5)
# 
# 
#     (integrand = (a + b*x)^(3//2)/(c + d*x)^(1//5), result = (2*(a + b*x)^(5//2)*((b*(c + d*x))/(b*c - a*d))^(1//5)*Hypergeometric2F1(1//5, 5//2, 7//2, -((d*(a + b*x))/(b*c - a*d))))/(5*b*(c + d*x)^(1//5)), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^(1//2)/(c + d*x)^(1//5), result = (2*(a + b*x)^(3//2)*((b*(c + d*x))/(b*c - a*d))^(1//5)*Hypergeometric2F1(1//5, 3//2, 5//2, -((d*(a + b*x))/(b*c - a*d))))/(3*b*(c + d*x)^(1//5)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((a + b*x)^(1//2)*(c + d*x)^(1//5)), result = (2*sqrt(a + b*x)*((b*(c + d*x))/(b*c - a*d))^(1//5)*Hypergeometric2F1(1//5, 1//2, 3//2, -((d*(a + b*x))/(b*c - a*d))))/(b*(c + d*x)^(1//5)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((a + b*x)^(3//2)*(c + d*x)^(1//5)), result = -((2*((b*(c + d*x))/(b*c - a*d))^(1//5)*Hypergeometric2F1(-(1//2), 1//5, 1//2, -((d*(a + b*x))/(b*c - a*d))))/(b*sqrt(a + b*x)*(c + d*x)^(1//5))), integration_var = x, mistery_val = 2),
#     (integrand = 1/((a + b*x)^(5//2)*(c + d*x)^(1//5)), result = -((2*((b*(c + d*x))/(b*c - a*d))^(1//5)*Hypergeometric2F1(-(3//2), 1//5, -(1//2), -((d*(a + b*x))/(b*c - a*d))))/(3*b*(a + b*x)^(3//2)*(c + d*x)^(1//5))), integration_var = x, mistery_val = 2),
# 
# 
# # ::Subsection::Closed::
# # Integrands of the form (a+b x)^(m/2) (c+d x)^(n/6)
# 
# 
# # ::Subsubsection::Closed::
# # n>0
# 
# 
#     (integrand = (a + b*x)^(5//2)*(c + d*x)^(1//6), result = (81*(b*c - a*d)^3*sqrt(a + b*x)*(c + d*x)^(1//6))/(1408*b*d^3) - (9*(b*c - a*d)^2*(a + b*x)^(3//2)*(c + d*x)^(1//6))/(352*b*d^2) + (3*(b*c - a*d)*(a + b*x)^(5//2)*(c + d*x)^(1//6))/(176*b*d) + (3*(a + b*x)^(7//2)*(c + d*x)^(1//6))/(11*b) - (81*3^(3//4)*(b*c - a*d)^(11//3)*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(2816*b*d^4*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 6),
#     (integrand = (a + b*x)^(3//2)*(c + d*x)^(1//6), result = -((27*(b*c - a*d)^2*sqrt(a + b*x)*(c + d*x)^(1//6))/(320*b*d^2)) + (3*(b*c - a*d)*(a + b*x)^(3//2)*(c + d*x)^(1//6))/(80*b*d) + (3*(a + b*x)^(5//2)*(c + d*x)^(1//6))/(8*b) + (27*3^(3//4)*(b*c - a*d)^(8//3)*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(640*b*d^3*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 5),
#     (integrand = (a + b*x)^(1//2)*(c + d*x)^(1//6), result = (3*(b*c - a*d)*sqrt(a + b*x)*(c + d*x)^(1//6))/(20*b*d) + (3*(a + b*x)^(3//2)*(c + d*x)^(1//6))/(5*b) - (3*3^(3//4)*(b*c - a*d)^(5//3)*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(40*b*d^2*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 4),
#     (integrand = (c + d*x)^(1//6)/(a + b*x)^(1//2), result = (3*sqrt(a + b*x)*(c + d*x)^(1//6))/(2*b) + (3^(3//4)*(b*c - a*d)^(2//3)*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(4*b*d*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 3),
#     (integrand = (c + d*x)^(1//6)/(a + b*x)^(3//2), result = -((2*(c + d*x)^(1//6))/(b*sqrt(a + b*x))) + ((c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(3^(1//4)*b*(b*c - a*d)^(1//3)*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 3),
#     (integrand = (c + d*x)^(1//6)/(a + b*x)^(5//2), result = -((2*(c + d*x)^(1//6))/(3*b*(a + b*x)^(3//2))) - (2*d*(c + d*x)^(1//6))/(9*b*(b*c - a*d)*sqrt(a + b*x)) - (2*d*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(9*3^(1//4)*b*(b*c - a*d)^(4//3)*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 4),
# 
# 
#     (integrand = (a + b*x)^(3//2)*(c + d*x)^(5//6), result = -((27*(b*c - a*d)^2*sqrt(a + b*x)*(c + d*x)^(5//6))/(224*b*d^2)) + (3*(b*c - a*d)*(a + b*x)^(3//2)*(c + d*x)^(5//6))/(28*b*d) + (3*(a + b*x)^(5//2)*(c + d*x)^(5//6))/(10*b) - (81*(1 + sqrt(3))*(b*c - a*d)^3*sqrt(a + b*x)*(c + d*x)^(1//6))/(448*b^(5//3)*d^2*((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))) - (81*3^(1//4)*(b*c - a*d)^(10//3)*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticE(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(448*b^(5//3)*d^3*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))) - (27*3^(3//4)*(1 - sqrt(3))*(b*c - a*d)^(10//3)*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(896*b^(5//3)*d^3*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 7),
#     (integrand = (a + b*x)^(1//2)*(c + d*x)^(5//6), result = (15*(b*c - a*d)*sqrt(a + b*x)*(c + d*x)^(5//6))/(56*b*d) + (3*(a + b*x)^(3//2)*(c + d*x)^(5//6))/(7*b) + (45*(1 + sqrt(3))*(b*c - a*d)^2*sqrt(a + b*x)*(c + d*x)^(1//6))/(112*b^(5//3)*d*((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))) + (45*3^(1//4)*(b*c - a*d)^(7//3)*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticE(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(112*b^(5//3)*d^2*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))) + (15*3^(3//4)*(1 - sqrt(3))*(b*c - a*d)^(7//3)*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(224*b^(5//3)*d^2*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 6),
#     (integrand = (c + d*x)^(5//6)/(a + b*x)^(1//2), result = (3*sqrt(a + b*x)*(c + d*x)^(5//6))/(4*b) - (15*(1 + sqrt(3))*(b*c - a*d)*sqrt(a + b*x)*(c + d*x)^(1//6))/(8*b^(5//3)*((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))) - (15*3^(1//4)*(b*c - a*d)^(4//3)*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticE(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(8*b^(5//3)*d*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))) - (5*3^(3//4)*(1 - sqrt(3))*(b*c - a*d)^(4//3)*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(16*b^(5//3)*d*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 5),
#     (integrand = (c + d*x)^(5//6)/(a + b*x)^(3//2), result = -((2*(c + d*x)^(5//6))/(b*sqrt(a + b*x))) - (5*(1 + sqrt(3))*d*sqrt(a + b*x)*(c + d*x)^(1//6))/(b^(5//3)*((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))) - (5*3^(1//4)*(b*c - a*d)^(1//3)*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticE(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(b^(5//3)*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))) - (5*(1 - sqrt(3))*(b*c - a*d)^(1//3)*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(2*3^(1//4)*b^(5//3)*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 5),
#     (integrand = (c + d*x)^(5//6)/(a + b*x)^(5//2), result = -((2*(c + d*x)^(5//6))/(3*b*(a + b*x)^(3//2))) - (10*d*(c + d*x)^(5//6))/(9*b*(b*c - a*d)*sqrt(a + b*x)) - (10*(1 + sqrt(3))*d^2*sqrt(a + b*x)*(c + d*x)^(1//6))/(9*b^(5//3)*(b*c - a*d)*((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))) - (10*d*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticE(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(3*3^(3//4)*b^(5//3)*(b*c - a*d)^(2//3)*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))) - (5*(1 - sqrt(3))*d*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(9*3^(1//4)*b^(5//3)*(b*c - a*d)^(2//3)*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 6),
#     (integrand = (c + d*x)^(5//6)/(a + b*x)^(7//2), result = -((2*(c + d*x)^(5//6))/(5*b*(a + b*x)^(5//2))) - (2*d*(c + d*x)^(5//6))/(9*b*(b*c - a*d)*(a + b*x)^(3//2)) + (8*d^2*(c + d*x)^(5//6))/(27*b*(b*c - a*d)^2*sqrt(a + b*x)) + (8*(1 + sqrt(3))*d^3*sqrt(a + b*x)*(c + d*x)^(1//6))/(27*b^(5//3)*(b*c - a*d)^2*((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))) + (8*d^2*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticE(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(9*3^(3//4)*b^(5//3)*(b*c - a*d)^(5//3)*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))) + (4*(1 - sqrt(3))*d^2*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(27*3^(1//4)*b^(5//3)*(b*c - a*d)^(5//3)*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 7),
# 
# 
# # ::Subsubsection::Closed::
# # n<0
# 
# 
#     (integrand = (a + b*x)^(5//2)/(c + d*x)^(1//6), result = (81*(b*c - a*d)^2*sqrt(a + b*x)*(c + d*x)^(5//6))/(224*d^3) - (9*(b*c - a*d)*(a + b*x)^(3//2)*(c + d*x)^(5//6))/(28*d^2) + (3*(a + b*x)^(5//2)*(c + d*x)^(5//6))/(10*d) + (243*(1 + sqrt(3))*(b*c - a*d)^3*sqrt(a + b*x)*(c + d*x)^(1//6))/(448*b^(2//3)*d^3*((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))) + (243*3^(1//4)*(b*c - a*d)^(10//3)*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticE(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(448*b^(2//3)*d^4*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))) + (81*3^(3//4)*(1 - sqrt(3))*(b*c - a*d)^(10//3)*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(896*b^(2//3)*d^4*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 7),
#     (integrand = (a + b*x)^(3//2)/(c + d*x)^(1//6), result = -((27*(b*c - a*d)*sqrt(a + b*x)*(c + d*x)^(5//6))/(56*d^2)) + (3*(a + b*x)^(3//2)*(c + d*x)^(5//6))/(7*d) - (81*(1 + sqrt(3))*(b*c - a*d)^2*sqrt(a + b*x)*(c + d*x)^(1//6))/(112*b^(2//3)*d^2*((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))) - (81*3^(1//4)*(b*c - a*d)^(7//3)*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticE(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(112*b^(2//3)*d^3*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))) - (27*3^(3//4)*(1 - sqrt(3))*(b*c - a*d)^(7//3)*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(224*b^(2//3)*d^3*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 6),
#     (integrand = (a + b*x)^(1//2)/(c + d*x)^(1//6), result = (3*sqrt(a + b*x)*(c + d*x)^(5//6))/(4*d) + (9*(1 + sqrt(3))*(b*c - a*d)*sqrt(a + b*x)*(c + d*x)^(1//6))/(8*b^(2//3)*d*((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))) + (9*3^(1//4)*(b*c - a*d)^(4//3)*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticE(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(8*b^(2//3)*d^2*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))) + (3*3^(3//4)*(1 - sqrt(3))*(b*c - a*d)^(4//3)*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(16*b^(2//3)*d^2*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 5),
#     (integrand = 1/((a + b*x)^(1//2)*(c + d*x)^(1//6)), result = -((3*(1 + sqrt(3))*sqrt(a + b*x)*(c + d*x)^(1//6))/(b^(2//3)*((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3)))) - (3*3^(1//4)*(b*c - a*d)^(1//3)*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticE(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(b^(2//3)*d*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))) - (3^(3//4)*(1 - sqrt(3))*(b*c - a*d)^(1//3)*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(2*b^(2//3)*d*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 4),
#     (integrand = 1/((a + b*x)^(3//2)*(c + d*x)^(1//6)), result = -((2*(c + d*x)^(5//6))/((b*c - a*d)*sqrt(a + b*x))) - (2*(1 + sqrt(3))*d*sqrt(a + b*x)*(c + d*x)^(1//6))/(b^(2//3)*(b*c - a*d)*((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))) - (2*3^(1//4)*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticE(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(b^(2//3)*(b*c - a*d)^(2//3)*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))) - ((1 - sqrt(3))*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(3^(1//4)*b^(2//3)*(b*c - a*d)^(2//3)*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 5),
#     (integrand = 1/((a + b*x)^(5//2)*(c + d*x)^(1//6)), result = -((2*(c + d*x)^(5//6))/(3*(b*c - a*d)*(a + b*x)^(3//2))) + (8*d*(c + d*x)^(5//6))/(9*(b*c - a*d)^2*sqrt(a + b*x)) + (8*(1 + sqrt(3))*d^2*sqrt(a + b*x)*(c + d*x)^(1//6))/(9*b^(2//3)*(b*c - a*d)^2*((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))) + (8*d*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticE(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(3*3^(3//4)*b^(2//3)*(b*c - a*d)^(5//3)*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))) + (4*(1 - sqrt(3))*d*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(9*3^(1//4)*b^(2//3)*(b*c - a*d)^(5//3)*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 6),
# 
# 
#     (integrand = (a + b*x)^(5//2)/(c + d*x)^(5//6), result = (81*(b*c - a*d)^2*sqrt(a + b*x)*(c + d*x)^(1//6))/(64*d^3) - (9*(b*c - a*d)*(a + b*x)^(3//2)*(c + d*x)^(1//6))/(16*d^2) + (3*(a + b*x)^(5//2)*(c + d*x)^(1//6))/(8*d) - (81*3^(3//4)*(b*c - a*d)^(8//3)*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(128*d^4*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 5),
#     (integrand = (a + b*x)^(3//2)/(c + d*x)^(5//6), result = -((27*(b*c - a*d)*sqrt(a + b*x)*(c + d*x)^(1//6))/(20*d^2)) + (3*(a + b*x)^(3//2)*(c + d*x)^(1//6))/(5*d) + (27*3^(3//4)*(b*c - a*d)^(5//3)*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(40*d^3*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 4),
#     (integrand = (a + b*x)^(1//2)/(c + d*x)^(5//6), result = (3*sqrt(a + b*x)*(c + d*x)^(1//6))/(2*d) - (3*3^(3//4)*(b*c - a*d)^(2//3)*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(4*d^2*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 3),
#     (integrand = 1/((a + b*x)^(1//2)*(c + d*x)^(5//6)), result = (3^(3//4)*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(d*(b*c - a*d)^(1//3)*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 2),
#     (integrand = 1/((a + b*x)^(3//2)*(c + d*x)^(5//6)), result = -((2*(c + d*x)^(1//6))/((b*c - a*d)*sqrt(a + b*x))) - (2*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(3^(1//4)*(b*c - a*d)^(4//3)*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 3),
#     (integrand = 1/((a + b*x)^(5//2)*(c + d*x)^(5//6)), result = -((2*(c + d*x)^(1//6))/(3*(b*c - a*d)*(a + b*x)^(3//2))) + (16*d*(c + d*x)^(1//6))/(9*(b*c - a*d)^2*sqrt(a + b*x)) + (16*d*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(9*3^(1//4)*(b*c - a*d)^(7//3)*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 4),
# 
# 
#     (integrand = (a + b*x)^(5//2)/(c + d*x)^(7//6), result = -((6*(a + b*x)^(5//2))/(d*(c + d*x)^(1//6))) - (405*b*(b*c - a*d)*sqrt(a + b*x)*(c + d*x)^(5//6))/(56*d^3) + (45*b*(a + b*x)^(3//2)*(c + d*x)^(5//6))/(7*d^2) - (1215*(1 + sqrt(3))*b^(1//3)*(b*c - a*d)^2*sqrt(a + b*x)*(c + d*x)^(1//6))/(112*d^3*((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))) - (1215*3^(1//4)*b^(1//3)*(b*c - a*d)^(7//3)*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticE(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(112*d^4*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))) - (405*3^(3//4)*(1 - sqrt(3))*b^(1//3)*(b*c - a*d)^(7//3)*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(224*d^4*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 7),
#     (integrand = (a + b*x)^(3//2)/(c + d*x)^(7//6), result = -((6*(a + b*x)^(3//2))/(d*(c + d*x)^(1//6))) + (27*b*sqrt(a + b*x)*(c + d*x)^(5//6))/(4*d^2) + (81*(1 + sqrt(3))*b^(1//3)*(b*c - a*d)*sqrt(a + b*x)*(c + d*x)^(1//6))/(8*d^2*((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))) + (81*3^(1//4)*b^(1//3)*(b*c - a*d)^(4//3)*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticE(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(8*d^3*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))) + (27*3^(3//4)*(1 - sqrt(3))*b^(1//3)*(b*c - a*d)^(4//3)*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(16*d^3*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 6),
#     (integrand = (a + b*x)^(1//2)/(c + d*x)^(7//6), result = -((6*sqrt(a + b*x))/(d*(c + d*x)^(1//6))) - (9*(1 + sqrt(3))*b^(1//3)*sqrt(a + b*x)*(c + d*x)^(1//6))/(d*((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))) - (9*3^(1//4)*b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticE(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(d^2*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))) - (3*3^(3//4)*(1 - sqrt(3))*b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(2*d^2*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 5),
#     (integrand = 1/((a + b*x)^(1//2)*(c + d*x)^(7//6)), result = (6*sqrt(a + b*x))/((b*c - a*d)*(c + d*x)^(1//6)) + (6*(1 + sqrt(3))*b^(1//3)*sqrt(a + b*x)*(c + d*x)^(1//6))/((b*c - a*d)*((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))) + (6*3^(1//4)*b^(1//3)*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticE(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(d*(b*c - a*d)^(2//3)*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))) + (3^(3//4)*(1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(d*(b*c - a*d)^(2//3)*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 5),
#     (integrand = 1/((a + b*x)^(3//2)*(c + d*x)^(7//6)), result = -(2/((b*c - a*d)*sqrt(a + b*x)*(c + d*x)^(1//6))) - (8*d*sqrt(a + b*x))/((b*c - a*d)^2*(c + d*x)^(1//6)) - (8*(1 + sqrt(3))*b^(1//3)*d*sqrt(a + b*x)*(c + d*x)^(1//6))/((b*c - a*d)^2*((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))) - (8*3^(1//4)*b^(1//3)*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticE(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/((b*c - a*d)^(5//3)*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))) - (4*(1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(3^(1//4)*(b*c - a*d)^(5//3)*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 6),
#     (integrand = 1/((a + b*x)^(5//2)*(c + d*x)^(7//6)), result = -(2/(3*(b*c - a*d)*(a + b*x)^(3//2)*(c + d*x)^(1//6))) + (20*d)/(9*(b*c - a*d)^2*sqrt(a + b*x)*(c + d*x)^(1//6)) + (80*d^2*sqrt(a + b*x))/(9*(b*c - a*d)^3*(c + d*x)^(1//6)) + (80*(1 + sqrt(3))*b^(1//3)*d^2*sqrt(a + b*x)*(c + d*x)^(1//6))/(9*(b*c - a*d)^3*((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))) + (80*b^(1//3)*d*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticE(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(3*3^(3//4)*(b*c - a*d)^(8//3)*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))) + (40*(1 - sqrt(3))*b^(1//3)*d*(c + d*x)^(1//6)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3))*sqrt(((b*c - a*d)^(2//3) + b^(1//3)*(b*c - a*d)^(1//3)*(c + d*x)^(1//3) + b^(2//3)*(c + d*x)^(2//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2)*EllipticF(acos(((b*c - a*d)^(1//3) - (1 - sqrt(3))*b^(1//3)*(c + d*x)^(1//3))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))), (1//4)*(2 + sqrt(3))))/(9*3^(1//4)*(b*c - a*d)^(8//3)*sqrt(a + b*x)*sqrt(-((b^(1//3)*(c + d*x)^(1//3)*((b*c - a*d)^(1//3) - b^(1//3)*(c + d*x)^(1//3)))/((b*c - a*d)^(1//3) - (1 + sqrt(3))*b^(1//3)*(c + d*x)^(1//3))^2))), integration_var = x, mistery_val = 7),
# 
# 
# # ::Subsection::Closed::
# # Integrands of the form (a+b x)^(m/6) (c+d x)^(n/6)
# 
# 
# # ::Subsubsection::Closed::
# # m>0
# 
# 
#     (integrand = (a + b*x)^(1//6)*(c + d*x)^(13//6), result = (6*(b*c - a*d)^2*(a + b*x)^(7//6)*(c + d*x)^(1//6)*Hypergeometric2F1(-13//6, 7//6, 13//6, -((d*(a + b*x))/(b*c - a*d))))/(7*b^3*((b*(c + d*x))/(b*c - a*d))^(1//6)), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^(1//6)*(c + d*x)^(7//6), result = (6*(b*c - a*d)*(a + b*x)^(7//6)*(c + d*x)^(1//6)*Hypergeometric2F1(-7//6, 7//6, 13//6, -((d*(a + b*x))/(b*c - a*d))))/(7*b^2*((b*(c + d*x))/(b*c - a*d))^(1//6)), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^(1//6)*(c + d*x)^(1//6), result = (6*(a + b*x)^(7//6)*(c + d*x)^(1//6)*Hypergeometric2F1(-1//6, 7//6, 13//6, -((d*(a + b*x))/(b*c - a*d))))/(7*b*((b*(c + d*x))/(b*c - a*d))^(1//6)), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^(1//6)/(c + d*x)^(5//6), result = (6*(a + b*x)^(7//6)*((b*(c + d*x))/(b*c - a*d))^(5//6)*Hypergeometric2F1(5//6, 7//6, 13//6, -((d*(a + b*x))/(b*c - a*d))))/(7*b*(c + d*x)^(5//6)), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^(1//6)/(c + d*x)^(11//6), result = (6*(a + b*x)^(7//6)*((b*(c + d*x))/(b*c - a*d))^(5//6)*Hypergeometric2F1(7//6, 11//6, 13//6, -((d*(a + b*x))/(b*c - a*d))))/(7*(b*c - a*d)*(c + d*x)^(5//6)), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^(1//6)/(c + d*x)^(17//6), result = (6*b*(a + b*x)^(7//6)*((b*(c + d*x))/(b*c - a*d))^(5//6)*Hypergeometric2F1(7//6, 17//6, 13//6, -((d*(a + b*x))/(b*c - a*d))))/(7*(b*c - a*d)^2*(c + d*x)^(5//6)), integration_var = x, mistery_val = 2),
# 
#     (integrand = (a + b*x)^(1//6)*(c + d*x)^(5//6), result = (5*(b*c - a*d)*(a + b*x)^(1//6)*(c + d*x)^(5//6))/(12*b*d) + ((a + b*x)^(7//6)*(c + d*x)^(5//6))/(2*b) + (5*(b*c - a*d)^2*atan(1/sqrt(3) - (2*d^(1//6)*(a + b*x)^(1//6))/(sqrt(3)*b^(1//6)*(c + d*x)^(1//6))))/(24*sqrt(3)*b^(11//6)*d^(7//6)) - (5*(b*c - a*d)^2*atan(1/sqrt(3) + (2*d^(1//6)*(a + b*x)^(1//6))/(sqrt(3)*b^(1//6)*(c + d*x)^(1//6))))/(24*sqrt(3)*b^(11//6)*d^(7//6)) - (5*(b*c - a*d)^2*atanh((d^(1//6)*(a + b*x)^(1//6))/(b^(1//6)*(c + d*x)^(1//6))))/(36*b^(11//6)*d^(7//6)) + (5*(b*c - a*d)^2*log(b^(1//3) + (d^(1//3)*(a + b*x)^(1//3))/(c + d*x)^(1//3) - (b^(1//6)*d^(1//6)*(a + b*x)^(1//6))/(c + d*x)^(1//6)))/(144*b^(11//6)*d^(7//6)) - (5*(b*c - a*d)^2*log(b^(1//3) + (d^(1//3)*(a + b*x)^(1//3))/(c + d*x)^(1//3) + (b^(1//6)*d^(1//6)*(a + b*x)^(1//6))/(c + d*x)^(1//6)))/(144*b^(11//6)*d^(7//6)), integration_var = x, mistery_val = 14),
#     (integrand = (a + b*x)^(1//6)/(c + d*x)^(1//6), result = ((a + b*x)^(1//6)*(c + d*x)^(5//6))/d + ((b*c - a*d)*atan(1/sqrt(3) - (2*d^(1//6)*(a + b*x)^(1//6))/(sqrt(3)*b^(1//6)*(c + d*x)^(1//6))))/(2*sqrt(3)*b^(5//6)*d^(7//6)) - ((b*c - a*d)*atan(1/sqrt(3) + (2*d^(1//6)*(a + b*x)^(1//6))/(sqrt(3)*b^(1//6)*(c + d*x)^(1//6))))/(2*sqrt(3)*b^(5//6)*d^(7//6)) - ((b*c - a*d)*atanh((d^(1//6)*(a + b*x)^(1//6))/(b^(1//6)*(c + d*x)^(1//6))))/(3*b^(5//6)*d^(7//6)) + ((b*c - a*d)*log(b^(1//3) + (d^(1//3)*(a + b*x)^(1//3))/(c + d*x)^(1//3) - (b^(1//6)*d^(1//6)*(a + b*x)^(1//6))/(c + d*x)^(1//6)))/(12*b^(5//6)*d^(7//6)) - ((b*c - a*d)*log(b^(1//3) + (d^(1//3)*(a + b*x)^(1//3))/(c + d*x)^(1//3) + (b^(1//6)*d^(1//6)*(a + b*x)^(1//6))/(c + d*x)^(1//6)))/(12*b^(5//6)*d^(7//6)), integration_var = x, mistery_val = 13),
#     (integrand = (a + b*x)^(1//6)/(c + d*x)^(7//6), result = -((6*(a + b*x)^(1//6))/(d*(c + d*x)^(1//6))) - (sqrt(3)*b^(1//6)*atan(1/sqrt(3) - (2*d^(1//6)*(a + b*x)^(1//6))/(sqrt(3)*b^(1//6)*(c + d*x)^(1//6))))/d^(7//6) + (sqrt(3)*b^(1//6)*atan(1/sqrt(3) + (2*d^(1//6)*(a + b*x)^(1//6))/(sqrt(3)*b^(1//6)*(c + d*x)^(1//6))))/d^(7//6) + (2*b^(1//6)*atanh((d^(1//6)*(a + b*x)^(1//6))/(b^(1//6)*(c + d*x)^(1//6))))/d^(7//6) - (b^(1//6)*log(b^(1//3) + (d^(1//3)*(a + b*x)^(1//3))/(c + d*x)^(1//3) - (b^(1//6)*d^(1//6)*(a + b*x)^(1//6))/(c + d*x)^(1//6)))/(2*d^(7//6)) + (b^(1//6)*log(b^(1//3) + (d^(1//3)*(a + b*x)^(1//3))/(c + d*x)^(1//3) + (b^(1//6)*d^(1//6)*(a + b*x)^(1//6))/(c + d*x)^(1//6)))/(2*d^(7//6)), integration_var = x, mistery_val = 13),
#     (integrand = (a + b*x)^(1//6)/(c + d*x)^(13//6), result = (6*(a + b*x)^(7//6))/(7*(b*c - a*d)*(c + d*x)^(7//6)), integration_var = x, mistery_val = 1),
#     (integrand = (a + b*x)^(1//6)/(c + d*x)^(19//6), result = (6*(a + b*x)^(7//6))/(13*(b*c - a*d)*(c + d*x)^(13//6)) + (36*b*(a + b*x)^(7//6))/(91*(b*c - a*d)^2*(c + d*x)^(7//6)), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^(1//6)/(c + d*x)^(25//6), result = (6*(a + b*x)^(7//6))/(19*(b*c - a*d)*(c + d*x)^(19//6)) + (72*b*(a + b*x)^(7//6))/(247*(b*c - a*d)^2*(c + d*x)^(13//6)) + (432*b^2*(a + b*x)^(7//6))/(1729*(b*c - a*d)^3*(c + d*x)^(7//6)), integration_var = x, mistery_val = 3),
#     (integrand = (a + b*x)^(1//6)/(c + d*x)^(31//6), result = (6*(a + b*x)^(7//6))/(25*(b*c - a*d)*(c + d*x)^(25//6)) + (108*b*(a + b*x)^(7//6))/(475*(b*c - a*d)^2*(c + d*x)^(19//6)) + (1296*b^2*(a + b*x)^(7//6))/(6175*(b*c - a*d)^3*(c + d*x)^(13//6)) + (7776*b^3*(a + b*x)^(7//6))/(43225*(b*c - a*d)^4*(c + d*x)^(7//6)), integration_var = x, mistery_val = 4),
# 
# 
#     (integrand = (a + b*x)^(5//6)*(c + d*x)^(1//6), result = ((b*c - a*d)*(a + b*x)^(5//6)*(c + d*x)^(1//6))/(12*b*d) + ((a + b*x)^(11//6)*(c + d*x)^(1//6))/(2*b) - (5*(b*c - a*d)^2*atan(1/sqrt(3) - (2*d^(1//6)*(a + b*x)^(1//6))/(sqrt(3)*b^(1//6)*(c + d*x)^(1//6))))/(24*sqrt(3)*b^(7//6)*d^(11//6)) + (5*(b*c - a*d)^2*atan(1/sqrt(3) + (2*d^(1//6)*(a + b*x)^(1//6))/(sqrt(3)*b^(1//6)*(c + d*x)^(1//6))))/(24*sqrt(3)*b^(7//6)*d^(11//6)) - (5*(b*c - a*d)^2*atanh((d^(1//6)*(a + b*x)^(1//6))/(b^(1//6)*(c + d*x)^(1//6))))/(36*b^(7//6)*d^(11//6)) + (5*(b*c - a*d)^2*log(b^(1//3) + (d^(1//3)*(a + b*x)^(1//3))/(c + d*x)^(1//3) - (b^(1//6)*d^(1//6)*(a + b*x)^(1//6))/(c + d*x)^(1//6)))/(144*b^(7//6)*d^(11//6)) - (5*(b*c - a*d)^2*log(b^(1//3) + (d^(1//3)*(a + b*x)^(1//3))/(c + d*x)^(1//3) + (b^(1//6)*d^(1//6)*(a + b*x)^(1//6))/(c + d*x)^(1//6)))/(144*b^(7//6)*d^(11//6)), integration_var = x, mistery_val = 14),
#     (integrand = (a + b*x)^(5//6)/(c + d*x)^(5//6), result = ((a + b*x)^(5//6)*(c + d*x)^(1//6))/d - (5*(b*c - a*d)*atan(1/sqrt(3) - (2*d^(1//6)*(a + b*x)^(1//6))/(sqrt(3)*b^(1//6)*(c + d*x)^(1//6))))/(2*sqrt(3)*b^(1//6)*d^(11//6)) + (5*(b*c - a*d)*atan(1/sqrt(3) + (2*d^(1//6)*(a + b*x)^(1//6))/(sqrt(3)*b^(1//6)*(c + d*x)^(1//6))))/(2*sqrt(3)*b^(1//6)*d^(11//6)) - (5*(b*c - a*d)*atanh((d^(1//6)*(a + b*x)^(1//6))/(b^(1//6)*(c + d*x)^(1//6))))/(3*b^(1//6)*d^(11//6)) + (5*(b*c - a*d)*log(b^(1//3) + (d^(1//3)*(a + b*x)^(1//3))/(c + d*x)^(1//3) - (b^(1//6)*d^(1//6)*(a + b*x)^(1//6))/(c + d*x)^(1//6)))/(12*b^(1//6)*d^(11//6)) - (5*(b*c - a*d)*log(b^(1//3) + (d^(1//3)*(a + b*x)^(1//3))/(c + d*x)^(1//3) + (b^(1//6)*d^(1//6)*(a + b*x)^(1//6))/(c + d*x)^(1//6)))/(12*b^(1//6)*d^(11//6)), integration_var = x, mistery_val = 13),
#     (integrand = (a + b*x)^(5//6)/(c + d*x)^(11//6), result = -((6*(a + b*x)^(5//6))/(5*d*(c + d*x)^(5//6))) + (sqrt(3)*b^(5//6)*atan(1/sqrt(3) - (2*d^(1//6)*(a + b*x)^(1//6))/(sqrt(3)*b^(1//6)*(c + d*x)^(1//6))))/d^(11//6) - (sqrt(3)*b^(5//6)*atan(1/sqrt(3) + (2*d^(1//6)*(a + b*x)^(1//6))/(sqrt(3)*b^(1//6)*(c + d*x)^(1//6))))/d^(11//6) + (2*b^(5//6)*atanh((d^(1//6)*(a + b*x)^(1//6))/(b^(1//6)*(c + d*x)^(1//6))))/d^(11//6) - (b^(5//6)*log(b^(1//3) + (d^(1//3)*(a + b*x)^(1//3))/(c + d*x)^(1//3) - (b^(1//6)*d^(1//6)*(a + b*x)^(1//6))/(c + d*x)^(1//6)))/(2*d^(11//6)) + (b^(5//6)*log(b^(1//3) + (d^(1//3)*(a + b*x)^(1//3))/(c + d*x)^(1//3) + (b^(1//6)*d^(1//6)*(a + b*x)^(1//6))/(c + d*x)^(1//6)))/(2*d^(11//6)), integration_var = x, mistery_val = 13),
#     (integrand = (a + b*x)^(5//6)/(c + d*x)^(17//6), result = (6*(a + b*x)^(11//6))/(11*(b*c - a*d)*(c + d*x)^(11//6)), integration_var = x, mistery_val = 1),
#     (integrand = (a + b*x)^(5//6)/(c + d*x)^(23//6), result = (6*(a + b*x)^(11//6))/(17*(b*c - a*d)*(c + d*x)^(17//6)) + (36*b*(a + b*x)^(11//6))/(187*(b*c - a*d)^2*(c + d*x)^(11//6)), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^(5//6)/(c + d*x)^(29//6), result = (6*(a + b*x)^(11//6))/(23*(b*c - a*d)*(c + d*x)^(23//6)) + (72*b*(a + b*x)^(11//6))/(391*(b*c - a*d)^2*(c + d*x)^(17//6)) + (432*b^2*(a + b*x)^(11//6))/(4301*(b*c - a*d)^3*(c + d*x)^(11//6)), integration_var = x, mistery_val = 3),
#     (integrand = (a + b*x)^(5//6)/(c + d*x)^(35//6), result = (6*(a + b*x)^(11//6))/(29*(b*c - a*d)*(c + d*x)^(29//6)) + (108*b*(a + b*x)^(11//6))/(667*(b*c - a*d)^2*(c + d*x)^(23//6)) + (1296*b^2*(a + b*x)^(11//6))/(11339*(b*c - a*d)^3*(c + d*x)^(17//6)) + (7776*b^3*(a + b*x)^(11//6))/(124729*(b*c - a*d)^4*(c + d*x)^(11//6)), integration_var = x, mistery_val = 4),
# 
#     (integrand = (a + b*x)^(5//6)*(c + d*x)^(11//6), result = (6*(b*c - a*d)*(a + b*x)^(11//6)*(c + d*x)^(5//6)*Hypergeometric2F1(-11//6, 11//6, 17//6, -((d*(a + b*x))/(b*c - a*d))))/(11*b^2*((b*(c + d*x))/(b*c - a*d))^(5//6)), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^(5//6)*(c + d*x)^(5//6), result = (6*(a + b*x)^(11//6)*(c + d*x)^(5//6)*Hypergeometric2F1(-5//6, 11//6, 17//6, -((d*(a + b*x))/(b*c - a*d))))/(11*b*((b*(c + d*x))/(b*c - a*d))^(5//6)), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^(5//6)/(c + d*x)^(1//6), result = (6*(a + b*x)^(11//6)*((b*(c + d*x))/(b*c - a*d))^(1//6)*Hypergeometric2F1(1//6, 11//6, 17//6, -((d*(a + b*x))/(b*c - a*d))))/(11*b*(c + d*x)^(1//6)), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^(5//6)/(c + d*x)^(7//6), result = (6*(a + b*x)^(11//6)*((b*(c + d*x))/(b*c - a*d))^(1//6)*Hypergeometric2F1(7//6, 11//6, 17//6, -((d*(a + b*x))/(b*c - a*d))))/(11*(b*c - a*d)*(c + d*x)^(1//6)), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^(5//6)/(c + d*x)^(13//6), result = (6*b*(a + b*x)^(11//6)*((b*(c + d*x))/(b*c - a*d))^(1//6)*Hypergeometric2F1(11//6, 13//6, 17//6, -((d*(a + b*x))/(b*c - a*d))))/(11*(b*c - a*d)^2*(c + d*x)^(1//6)), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^(5//6)/(c + d*x)^(19//6), result = (6*b^2*(a + b*x)^(11//6)*((b*(c + d*x))/(b*c - a*d))^(1//6)*Hypergeometric2F1(11//6, 19//6, 17//6, -((d*(a + b*x))/(b*c - a*d))))/(11*(b*c - a*d)^3*(c + d*x)^(1//6)), integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = (a + b*x)^(7//6)*(c + d*x)^(13//6), result = (6*(b*c - a*d)^2*(a + b*x)^(13//6)*(c + d*x)^(1//6)*Hypergeometric2F1(-13//6, 13//6, 19//6, -((d*(a + b*x))/(b*c - a*d))))/(13*b^3*((b*(c + d*x))/(b*c - a*d))^(1//6)), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^(7//6)*(c + d*x)^(7//6), result = (6*(b*c - a*d)*(a + b*x)^(13//6)*(c + d*x)^(1//6)*Hypergeometric2F1(-7//6, 13//6, 19//6, -((d*(a + b*x))/(b*c - a*d))))/(13*b^2*((b*(c + d*x))/(b*c - a*d))^(1//6)), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^(7//6)*(c + d*x)^(1//6), result = (6*(a + b*x)^(13//6)*(c + d*x)^(1//6)*Hypergeometric2F1(-1//6, 13//6, 19//6, -((d*(a + b*x))/(b*c - a*d))))/(13*b*((b*(c + d*x))/(b*c - a*d))^(1//6)), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^(7//6)/(c + d*x)^(5//6), result = (6*(a + b*x)^(13//6)*((b*(c + d*x))/(b*c - a*d))^(5//6)*Hypergeometric2F1(5//6, 13//6, 19//6, -((d*(a + b*x))/(b*c - a*d))))/(13*b*(c + d*x)^(5//6)), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^(7//6)/(c + d*x)^(11//6), result = (6*(a + b*x)^(13//6)*((b*(c + d*x))/(b*c - a*d))^(5//6)*Hypergeometric2F1(11//6, 13//6, 19//6, -((d*(a + b*x))/(b*c - a*d))))/(13*(b*c - a*d)*(c + d*x)^(5//6)), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^(7//6)/(c + d*x)^(17//6), result = (6*b*(a + b*x)^(13//6)*((b*(c + d*x))/(b*c - a*d))^(5//6)*Hypergeometric2F1(13//6, 17//6, 19//6, -((d*(a + b*x))/(b*c - a*d))))/(13*(b*c - a*d)^2*(c + d*x)^(5//6)), integration_var = x, mistery_val = 2),
# 
#     (integrand = (a + b*x)^(7//6)/(c + d*x)^(1//6), result = -((7*(b*c - a*d)*(a + b*x)^(1//6)*(c + d*x)^(5//6))/(12*d^2)) + ((a + b*x)^(7//6)*(c + d*x)^(5//6))/(2*d) - (7*(b*c - a*d)^2*atan(1/sqrt(3) - (2*d^(1//6)*(a + b*x)^(1//6))/(sqrt(3)*b^(1//6)*(c + d*x)^(1//6))))/(24*sqrt(3)*b^(5//6)*d^(13//6)) + (7*(b*c - a*d)^2*atan(1/sqrt(3) + (2*d^(1//6)*(a + b*x)^(1//6))/(sqrt(3)*b^(1//6)*(c + d*x)^(1//6))))/(24*sqrt(3)*b^(5//6)*d^(13//6)) + (7*(b*c - a*d)^2*atanh((d^(1//6)*(a + b*x)^(1//6))/(b^(1//6)*(c + d*x)^(1//6))))/(36*b^(5//6)*d^(13//6)) - (7*(b*c - a*d)^2*log(b^(1//3) + (d^(1//3)*(a + b*x)^(1//3))/(c + d*x)^(1//3) - (b^(1//6)*d^(1//6)*(a + b*x)^(1//6))/(c + d*x)^(1//6)))/(144*b^(5//6)*d^(13//6)) + (7*(b*c - a*d)^2*log(b^(1//3) + (d^(1//3)*(a + b*x)^(1//3))/(c + d*x)^(1//3) + (b^(1//6)*d^(1//6)*(a + b*x)^(1//6))/(c + d*x)^(1//6)))/(144*b^(5//6)*d^(13//6)), integration_var = x, mistery_val = 14),
#     (integrand = (a + b*x)^(7//6)/(c + d*x)^(7//6), result = -((6*(a + b*x)^(7//6))/(d*(c + d*x)^(1//6))) + (7*b*(a + b*x)^(1//6)*(c + d*x)^(5//6))/d^2 + (7*b^(1//6)*(b*c - a*d)*atan(1/sqrt(3) - (2*d^(1//6)*(a + b*x)^(1//6))/(sqrt(3)*b^(1//6)*(c + d*x)^(1//6))))/(2*sqrt(3)*d^(13//6)) - (7*b^(1//6)*(b*c - a*d)*atan(1/sqrt(3) + (2*d^(1//6)*(a + b*x)^(1//6))/(sqrt(3)*b^(1//6)*(c + d*x)^(1//6))))/(2*sqrt(3)*d^(13//6)) - (7*b^(1//6)*(b*c - a*d)*atanh((d^(1//6)*(a + b*x)^(1//6))/(b^(1//6)*(c + d*x)^(1//6))))/(3*d^(13//6)) + (7*b^(1//6)*(b*c - a*d)*log(b^(1//3) + (d^(1//3)*(a + b*x)^(1//3))/(c + d*x)^(1//3) - (b^(1//6)*d^(1//6)*(a + b*x)^(1//6))/(c + d*x)^(1//6)))/(12*d^(13//6)) - (7*b^(1//6)*(b*c - a*d)*log(b^(1//3) + (d^(1//3)*(a + b*x)^(1//3))/(c + d*x)^(1//3) + (b^(1//6)*d^(1//6)*(a + b*x)^(1//6))/(c + d*x)^(1//6)))/(12*d^(13//6)), integration_var = x, mistery_val = 14),
#     (integrand = (a + b*x)^(7//6)/(c + d*x)^(13//6), result = -((6*(a + b*x)^(7//6))/(7*d*(c + d*x)^(7//6))) - (6*b*(a + b*x)^(1//6))/(d^2*(c + d*x)^(1//6)) - (sqrt(3)*b^(7//6)*atan(1/sqrt(3) - (2*d^(1//6)*(a + b*x)^(1//6))/(sqrt(3)*b^(1//6)*(c + d*x)^(1//6))))/d^(13//6) + (sqrt(3)*b^(7//6)*atan(1/sqrt(3) + (2*d^(1//6)*(a + b*x)^(1//6))/(sqrt(3)*b^(1//6)*(c + d*x)^(1//6))))/d^(13//6) + (2*b^(7//6)*atanh((d^(1//6)*(a + b*x)^(1//6))/(b^(1//6)*(c + d*x)^(1//6))))/d^(13//6) - (b^(7//6)*log(b^(1//3) + (d^(1//3)*(a + b*x)^(1//3))/(c + d*x)^(1//3) - (b^(1//6)*d^(1//6)*(a + b*x)^(1//6))/(c + d*x)^(1//6)))/(2*d^(13//6)) + (b^(7//6)*log(b^(1//3) + (d^(1//3)*(a + b*x)^(1//3))/(c + d*x)^(1//3) + (b^(1//6)*d^(1//6)*(a + b*x)^(1//6))/(c + d*x)^(1//6)))/(2*d^(13//6)), integration_var = x, mistery_val = 14),
#     (integrand = (a + b*x)^(7//6)/(c + d*x)^(19//6), result = (6*(a + b*x)^(13//6))/(13*(b*c - a*d)*(c + d*x)^(13//6)), integration_var = x, mistery_val = 1),
#     (integrand = (a + b*x)^(7//6)/(c + d*x)^(25//6), result = (6*(a + b*x)^(13//6))/(19*(b*c - a*d)*(c + d*x)^(19//6)) + (36*b*(a + b*x)^(13//6))/(247*(b*c - a*d)^2*(c + d*x)^(13//6)), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^(7//6)/(c + d*x)^(31//6), result = (6*(a + b*x)^(13//6))/(25*(b*c - a*d)*(c + d*x)^(25//6)) + (72*b*(a + b*x)^(13//6))/(475*(b*c - a*d)^2*(c + d*x)^(19//6)) + (432*b^2*(a + b*x)^(13//6))/(6175*(b*c - a*d)^3*(c + d*x)^(13//6)), integration_var = x, mistery_val = 3),
#     (integrand = (a + b*x)^(7//6)/(c + d*x)^(37//6), result = (6*(a + b*x)^(13//6))/(31*(b*c - a*d)*(c + d*x)^(31//6)) + (108*b*(a + b*x)^(13//6))/(775*(b*c - a*d)^2*(c + d*x)^(25//6)) + (1296*b^2*(a + b*x)^(13//6))/(14725*(b*c - a*d)^3*(c + d*x)^(19//6)) + (7776*b^3*(a + b*x)^(13//6))/(191425*(b*c - a*d)^4*(c + d*x)^(13//6)), integration_var = x, mistery_val = 4),
#     (integrand = (c + d*x)^(7//6)/(a + b*x)^(1//6), result = (7*(b*c - a*d)*(a + b*x)^(5//6)*(c + d*x)^(1//6))/(12*b^2) + ((a + b*x)^(5//6)*(c + d*x)^(7//6))/(2*b) + (7*(b*c - a*d)^2*atan(1/sqrt(3) - (2*d^(1//6)*(a + b*x)^(1//6))/(sqrt(3)*b^(1//6)*(c + d*x)^(1//6))))/(24*sqrt(3)*b^(13//6)*d^(5//6)) - (7*(b*c - a*d)^2*atan(1/sqrt(3) + (2*d^(1//6)*(a + b*x)^(1//6))/(sqrt(3)*b^(1//6)*(c + d*x)^(1//6))))/(24*sqrt(3)*b^(13//6)*d^(5//6)) + (7*(b*c - a*d)^2*atanh((d^(1//6)*(a + b*x)^(1//6))/(b^(1//6)*(c + d*x)^(1//6))))/(36*b^(13//6)*d^(5//6)) - (7*(b*c - a*d)^2*log(b^(1//3) + (d^(1//3)*(a + b*x)^(1//3))/(c + d*x)^(1//3) - (b^(1//6)*d^(1//6)*(a + b*x)^(1//6))/(c + d*x)^(1//6)))/(144*b^(13//6)*d^(5//6)) + (7*(b*c - a*d)^2*log(b^(1//3) + (d^(1//3)*(a + b*x)^(1//3))/(c + d*x)^(1//3) + (b^(1//6)*d^(1//6)*(a + b*x)^(1//6))/(c + d*x)^(1//6)))/(144*b^(13//6)*d^(5//6)), integration_var = x, mistery_val = 14),
# 
# 
# # ::Subsubsection::Closed::
# # m<0
# 
# 
#     (integrand = (c + d*x)^(1//6)/(a + b*x)^(1//6), result = ((a + b*x)^(5//6)*(c + d*x)^(1//6))/b + ((b*c - a*d)*atan(1/sqrt(3) - (2*d^(1//6)*(a + b*x)^(1//6))/(sqrt(3)*b^(1//6)*(c + d*x)^(1//6))))/(2*sqrt(3)*b^(7//6)*d^(5//6)) - ((b*c - a*d)*atan(1/sqrt(3) + (2*d^(1//6)*(a + b*x)^(1//6))/(sqrt(3)*b^(1//6)*(c + d*x)^(1//6))))/(2*sqrt(3)*b^(7//6)*d^(5//6)) + ((b*c - a*d)*atanh((d^(1//6)*(a + b*x)^(1//6))/(b^(1//6)*(c + d*x)^(1//6))))/(3*b^(7//6)*d^(5//6)) - ((b*c - a*d)*log(b^(1//3) + (d^(1//3)*(a + b*x)^(1//3))/(c + d*x)^(1//3) - (b^(1//6)*d^(1//6)*(a + b*x)^(1//6))/(c + d*x)^(1//6)))/(12*b^(7//6)*d^(5//6)) + ((b*c - a*d)*log(b^(1//3) + (d^(1//3)*(a + b*x)^(1//3))/(c + d*x)^(1//3) + (b^(1//6)*d^(1//6)*(a + b*x)^(1//6))/(c + d*x)^(1//6)))/(12*b^(7//6)*d^(5//6)), integration_var = x, mistery_val = 13),
#     (integrand = 1/((a + b*x)^(1//6)*(c + d*x)^(5//6)), result = (sqrt(3)*atan(1/sqrt(3) - (2*d^(1//6)*(a + b*x)^(1//6))/(sqrt(3)*b^(1//6)*(c + d*x)^(1//6))))/(b^(1//6)*d^(5//6)) - (sqrt(3)*atan(1/sqrt(3) + (2*d^(1//6)*(a + b*x)^(1//6))/(sqrt(3)*b^(1//6)*(c + d*x)^(1//6))))/(b^(1//6)*d^(5//6)) + (2*atanh((d^(1//6)*(a + b*x)^(1//6))/(b^(1//6)*(c + d*x)^(1//6))))/(b^(1//6)*d^(5//6)) - log(b^(1//3) + (d^(1//3)*(a + b*x)^(1//3))/(c + d*x)^(1//3) - (b^(1//6)*d^(1//6)*(a + b*x)^(1//6))/(c + d*x)^(1//6))/(2*b^(1//6)*d^(5//6)) + log(b^(1//3) + (d^(1//3)*(a + b*x)^(1//3))/(c + d*x)^(1//3) + (b^(1//6)*d^(1//6)*(a + b*x)^(1//6))/(c + d*x)^(1//6))/(2*b^(1//6)*d^(5//6)), integration_var = x, mistery_val = 12),
#     (integrand = 1/((a + b*x)^(1//6)*(c + d*x)^(11//6)), result = (6*(a + b*x)^(5//6))/(5*(b*c - a*d)*(c + d*x)^(5//6)), integration_var = x, mistery_val = 1),
#     (integrand = 1/((a + b*x)^(1//6)*(c + d*x)^(17//6)), result = (6*(a + b*x)^(5//6))/(11*(b*c - a*d)*(c + d*x)^(11//6)) + (36*b*(a + b*x)^(5//6))/(55*(b*c - a*d)^2*(c + d*x)^(5//6)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((a + b*x)^(1//6)*(c + d*x)^(23//6)), result = (6*(a + b*x)^(5//6))/(17*(b*c - a*d)*(c + d*x)^(17//6)) + (72*b*(a + b*x)^(5//6))/(187*(b*c - a*d)^2*(c + d*x)^(11//6)) + (432*b^2*(a + b*x)^(5//6))/(935*(b*c - a*d)^3*(c + d*x)^(5//6)), integration_var = x, mistery_val = 3),
#     (integrand = 1/((a + b*x)^(1//6)*(c + d*x)^(29//6)), result = (6*(a + b*x)^(5//6))/(23*(b*c - a*d)*(c + d*x)^(23//6)) + (108*b*(a + b*x)^(5//6))/(391*(b*c - a*d)^2*(c + d*x)^(17//6)) + (1296*b^2*(a + b*x)^(5//6))/(4301*(b*c - a*d)^3*(c + d*x)^(11//6)) + (7776*b^3*(a + b*x)^(5//6))/(21505*(b*c - a*d)^4*(c + d*x)^(5//6)), integration_var = x, mistery_val = 4),
# 
#     (integrand = (c + d*x)^(11//6)/(a + b*x)^(1//6), result = (6*(b*c - a*d)*(a + b*x)^(5//6)*(c + d*x)^(5//6)*Hypergeometric2F1(-11//6, 5//6, 11//6, -((d*(a + b*x))/(b*c - a*d))))/(5*b^2*((b*(c + d*x))/(b*c - a*d))^(5//6)), integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^(5//6)/(a + b*x)^(1//6), result = (6*(a + b*x)^(5//6)*(c + d*x)^(5//6)*Hypergeometric2F1(-5//6, 5//6, 11//6, -((d*(a + b*x))/(b*c - a*d))))/(5*b*((b*(c + d*x))/(b*c - a*d))^(5//6)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((a + b*x)^(1//6)*(c + d*x)^(1//6)), result = (6*(a + b*x)^(5//6)*((b*(c + d*x))/(b*c - a*d))^(1//6)*Hypergeometric2F1(1//6, 5//6, 11//6, -((d*(a + b*x))/(b*c - a*d))))/(5*b*(c + d*x)^(1//6)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((a + b*x)^(1//6)*(c + d*x)^(7//6)), result = (6*(a + b*x)^(5//6)*((b*(c + d*x))/(b*c - a*d))^(1//6)*Hypergeometric2F1(5//6, 7//6, 11//6, -((d*(a + b*x))/(b*c - a*d))))/(5*(b*c - a*d)*(c + d*x)^(1//6)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((a + b*x)^(1//6)*(c + d*x)^(13//6)), result = (6*b*(a + b*x)^(5//6)*((b*(c + d*x))/(b*c - a*d))^(1//6)*Hypergeometric2F1(5//6, 13//6, 11//6, -((d*(a + b*x))/(b*c - a*d))))/(5*(b*c - a*d)^2*(c + d*x)^(1//6)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((a + b*x)^(1//6)*(c + d*x)^(19//6)), result = (6*b^2*(a + b*x)^(5//6)*((b*(c + d*x))/(b*c - a*d))^(1//6)*Hypergeometric2F1(5//6, 19//6, 11//6, -((d*(a + b*x))/(b*c - a*d))))/(5*(b*c - a*d)^3*(c + d*x)^(1//6)), integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = (c + d*x)^(13//6)/(a + b*x)^(5//6), result = (6*(b*c - a*d)^2*(a + b*x)^(1//6)*(c + d*x)^(1//6)*Hypergeometric2F1(-13//6, 1//6, 7//6, -((d*(a + b*x))/(b*c - a*d))))/(b^3*((b*(c + d*x))/(b*c - a*d))^(1//6)), integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^(7//6)/(a + b*x)^(5//6), result = (6*(b*c - a*d)*(a + b*x)^(1//6)*(c + d*x)^(1//6)*Hypergeometric2F1(-7//6, 1//6, 7//6, -((d*(a + b*x))/(b*c - a*d))))/(b^2*((b*(c + d*x))/(b*c - a*d))^(1//6)), integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^(1//6)/(a + b*x)^(5//6), result = (6*(a + b*x)^(1//6)*(c + d*x)^(1//6)*Hypergeometric2F1(-1//6, 1//6, 7//6, -((d*(a + b*x))/(b*c - a*d))))/(b*((b*(c + d*x))/(b*c - a*d))^(1//6)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((a + b*x)^(5//6)*(c + d*x)^(5//6)), result = (6*(a + b*x)^(1//6)*((b*(c + d*x))/(b*c - a*d))^(5//6)*Hypergeometric2F1(1//6, 5//6, 7//6, -((d*(a + b*x))/(b*c - a*d))))/(b*(c + d*x)^(5//6)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((a + b*x)^(5//6)*(c + d*x)^(11//6)), result = (6*(a + b*x)^(1//6)*((b*(c + d*x))/(b*c - a*d))^(5//6)*Hypergeometric2F1(1//6, 11//6, 7//6, -((d*(a + b*x))/(b*c - a*d))))/((b*c - a*d)*(c + d*x)^(5//6)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((a + b*x)^(5//6)*(c + d*x)^(17//6)), result = (6*b*(a + b*x)^(1//6)*((b*(c + d*x))/(b*c - a*d))^(5//6)*Hypergeometric2F1(1//6, 17//6, 7//6, -((d*(a + b*x))/(b*c - a*d))))/((b*c - a*d)^2*(c + d*x)^(5//6)), integration_var = x, mistery_val = 2),
# 
#     (integrand = (c + d*x)^(11//6)/(a + b*x)^(5//6), result = (11*(b*c - a*d)*(a + b*x)^(1//6)*(c + d*x)^(5//6))/(12*b^2) + ((a + b*x)^(1//6)*(c + d*x)^(11//6))/(2*b) - (55*(b*c - a*d)^2*atan(1/sqrt(3) - (2*d^(1//6)*(a + b*x)^(1//6))/(sqrt(3)*b^(1//6)*(c + d*x)^(1//6))))/(24*sqrt(3)*b^(17//6)*d^(1//6)) + (55*(b*c - a*d)^2*atan(1/sqrt(3) + (2*d^(1//6)*(a + b*x)^(1//6))/(sqrt(3)*b^(1//6)*(c + d*x)^(1//6))))/(24*sqrt(3)*b^(17//6)*d^(1//6)) + (55*(b*c - a*d)^2*atanh((d^(1//6)*(a + b*x)^(1//6))/(b^(1//6)*(c + d*x)^(1//6))))/(36*b^(17//6)*d^(1//6)) - (55*(b*c - a*d)^2*log(b^(1//3) + (d^(1//3)*(a + b*x)^(1//3))/(c + d*x)^(1//3) - (b^(1//6)*d^(1//6)*(a + b*x)^(1//6))/(c + d*x)^(1//6)))/(144*b^(17//6)*d^(1//6)) + (55*(b*c - a*d)^2*log(b^(1//3) + (d^(1//3)*(a + b*x)^(1//3))/(c + d*x)^(1//3) + (b^(1//6)*d^(1//6)*(a + b*x)^(1//6))/(c + d*x)^(1//6)))/(144*b^(17//6)*d^(1//6)), integration_var = x, mistery_val = 14),
#     (integrand = (c + d*x)^(5//6)/(a + b*x)^(5//6), result = ((a + b*x)^(1//6)*(c + d*x)^(5//6))/b - (5*(b*c - a*d)*atan(1/sqrt(3) - (2*d^(1//6)*(a + b*x)^(1//6))/(sqrt(3)*b^(1//6)*(c + d*x)^(1//6))))/(2*sqrt(3)*b^(11//6)*d^(1//6)) + (5*(b*c - a*d)*atan(1/sqrt(3) + (2*d^(1//6)*(a + b*x)^(1//6))/(sqrt(3)*b^(1//6)*(c + d*x)^(1//6))))/(2*sqrt(3)*b^(11//6)*d^(1//6)) + (5*(b*c - a*d)*atanh((d^(1//6)*(a + b*x)^(1//6))/(b^(1//6)*(c + d*x)^(1//6))))/(3*b^(11//6)*d^(1//6)) - (5*(b*c - a*d)*log(b^(1//3) + (d^(1//3)*(a + b*x)^(1//3))/(c + d*x)^(1//3) - (b^(1//6)*d^(1//6)*(a + b*x)^(1//6))/(c + d*x)^(1//6)))/(12*b^(11//6)*d^(1//6)) + (5*(b*c - a*d)*log(b^(1//3) + (d^(1//3)*(a + b*x)^(1//3))/(c + d*x)^(1//3) + (b^(1//6)*d^(1//6)*(a + b*x)^(1//6))/(c + d*x)^(1//6)))/(12*b^(11//6)*d^(1//6)), integration_var = x, mistery_val = 13),
#     (integrand = 1/((a + b*x)^(5//6)*(c + d*x)^(1//6)), result = -((sqrt(3)*atan(1/sqrt(3) - (2*d^(1//6)*(a + b*x)^(1//6))/(sqrt(3)*b^(1//6)*(c + d*x)^(1//6))))/(b^(5//6)*d^(1//6))) + (sqrt(3)*atan(1/sqrt(3) + (2*d^(1//6)*(a + b*x)^(1//6))/(sqrt(3)*b^(1//6)*(c + d*x)^(1//6))))/(b^(5//6)*d^(1//6)) + (2*atanh((d^(1//6)*(a + b*x)^(1//6))/(b^(1//6)*(c + d*x)^(1//6))))/(b^(5//6)*d^(1//6)) - log(b^(1//3) + (d^(1//3)*(a + b*x)^(1//3))/(c + d*x)^(1//3) - (b^(1//6)*d^(1//6)*(a + b*x)^(1//6))/(c + d*x)^(1//6))/(2*b^(5//6)*d^(1//6)) + log(b^(1//3) + (d^(1//3)*(a + b*x)^(1//3))/(c + d*x)^(1//3) + (b^(1//6)*d^(1//6)*(a + b*x)^(1//6))/(c + d*x)^(1//6))/(2*b^(5//6)*d^(1//6)), integration_var = x, mistery_val = 12),
#     (integrand = 1/((a + b*x)^(5//6)*(c + d*x)^(7//6)), result = (6*(a + b*x)^(1//6))/((b*c - a*d)*(c + d*x)^(1//6)), integration_var = x, mistery_val = 1),
#     (integrand = 1/((a + b*x)^(5//6)*(c + d*x)^(13//6)), result = (6*(a + b*x)^(1//6))/(7*(b*c - a*d)*(c + d*x)^(7//6)) + (36*b*(a + b*x)^(1//6))/(7*(b*c - a*d)^2*(c + d*x)^(1//6)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((a + b*x)^(5//6)*(c + d*x)^(19//6)), result = (6*(a + b*x)^(1//6))/(13*(b*c - a*d)*(c + d*x)^(13//6)) + (72*b*(a + b*x)^(1//6))/(91*(b*c - a*d)^2*(c + d*x)^(7//6)) + (432*b^2*(a + b*x)^(1//6))/(91*(b*c - a*d)^3*(c + d*x)^(1//6)), integration_var = x, mistery_val = 3),
#     (integrand = 1/((a + b*x)^(5//6)*(c + d*x)^(25//6)), result = (6*(a + b*x)^(1//6))/(19*(b*c - a*d)*(c + d*x)^(19//6)) + (108*b*(a + b*x)^(1//6))/(247*(b*c - a*d)^2*(c + d*x)^(13//6)) + (1296*b^2*(a + b*x)^(1//6))/(1729*(b*c - a*d)^3*(c + d*x)^(7//6)) + (7776*b^3*(a + b*x)^(1//6))/(1729*(b*c - a*d)^4*(c + d*x)^(1//6)), integration_var = x, mistery_val = 4),
# 
# 
#     (integrand = (c + d*x)^(13//6)/(a + b*x)^(7//6), result = (91*d*(b*c - a*d)*(a + b*x)^(5//6)*(c + d*x)^(1//6))/(12*b^3) + (13*d*(a + b*x)^(5//6)*(c + d*x)^(7//6))/(2*b^2) - (6*(c + d*x)^(13//6))/(b*(a + b*x)^(1//6)) + (91*d^(1//6)*(b*c - a*d)^2*atan(1/sqrt(3) - (2*d^(1//6)*(a + b*x)^(1//6))/(sqrt(3)*b^(1//6)*(c + d*x)^(1//6))))/(24*sqrt(3)*b^(19//6)) - (91*d^(1//6)*(b*c - a*d)^2*atan(1/sqrt(3) + (2*d^(1//6)*(a + b*x)^(1//6))/(sqrt(3)*b^(1//6)*(c + d*x)^(1//6))))/(24*sqrt(3)*b^(19//6)) + (91*d^(1//6)*(b*c - a*d)^2*atanh((d^(1//6)*(a + b*x)^(1//6))/(b^(1//6)*(c + d*x)^(1//6))))/(36*b^(19//6)) - (91*d^(1//6)*(b*c - a*d)^2*log(b^(1//3) + (d^(1//3)*(a + b*x)^(1//3))/(c + d*x)^(1//3) - (b^(1//6)*d^(1//6)*(a + b*x)^(1//6))/(c + d*x)^(1//6)))/(144*b^(19//6)) + (91*d^(1//6)*(b*c - a*d)^2*log(b^(1//3) + (d^(1//3)*(a + b*x)^(1//3))/(c + d*x)^(1//3) + (b^(1//6)*d^(1//6)*(a + b*x)^(1//6))/(c + d*x)^(1//6)))/(144*b^(19//6)), integration_var = x, mistery_val = 15),
#     (integrand = (c + d*x)^(7//6)/(a + b*x)^(7//6), result = (7*d*(a + b*x)^(5//6)*(c + d*x)^(1//6))/b^2 - (6*(c + d*x)^(7//6))/(b*(a + b*x)^(1//6)) + (7*d^(1//6)*(b*c - a*d)*atan(1/sqrt(3) - (2*d^(1//6)*(a + b*x)^(1//6))/(sqrt(3)*b^(1//6)*(c + d*x)^(1//6))))/(2*sqrt(3)*b^(13//6)) - (7*d^(1//6)*(b*c - a*d)*atan(1/sqrt(3) + (2*d^(1//6)*(a + b*x)^(1//6))/(sqrt(3)*b^(1//6)*(c + d*x)^(1//6))))/(2*sqrt(3)*b^(13//6)) + (7*d^(1//6)*(b*c - a*d)*atanh((d^(1//6)*(a + b*x)^(1//6))/(b^(1//6)*(c + d*x)^(1//6))))/(3*b^(13//6)) - (7*d^(1//6)*(b*c - a*d)*log(b^(1//3) + (d^(1//3)*(a + b*x)^(1//3))/(c + d*x)^(1//3) - (b^(1//6)*d^(1//6)*(a + b*x)^(1//6))/(c + d*x)^(1//6)))/(12*b^(13//6)) + (7*d^(1//6)*(b*c - a*d)*log(b^(1//3) + (d^(1//3)*(a + b*x)^(1//3))/(c + d*x)^(1//3) + (b^(1//6)*d^(1//6)*(a + b*x)^(1//6))/(c + d*x)^(1//6)))/(12*b^(13//6)), integration_var = x, mistery_val = 14),
#     (integrand = (c + d*x)^(1//6)/(a + b*x)^(7//6), result = -((6*(c + d*x)^(1//6))/(b*(a + b*x)^(1//6))) + (sqrt(3)*d^(1//6)*atan(1/sqrt(3) - (2*d^(1//6)*(a + b*x)^(1//6))/(sqrt(3)*b^(1//6)*(c + d*x)^(1//6))))/b^(7//6) - (sqrt(3)*d^(1//6)*atan(1/sqrt(3) + (2*d^(1//6)*(a + b*x)^(1//6))/(sqrt(3)*b^(1//6)*(c + d*x)^(1//6))))/b^(7//6) + (2*d^(1//6)*atanh((d^(1//6)*(a + b*x)^(1//6))/(b^(1//6)*(c + d*x)^(1//6))))/b^(7//6) - (d^(1//6)*log(b^(1//3) + (d^(1//3)*(a + b*x)^(1//3))/(c + d*x)^(1//3) - (b^(1//6)*d^(1//6)*(a + b*x)^(1//6))/(c + d*x)^(1//6)))/(2*b^(7//6)) + (d^(1//6)*log(b^(1//3) + (d^(1//3)*(a + b*x)^(1//3))/(c + d*x)^(1//3) + (b^(1//6)*d^(1//6)*(a + b*x)^(1//6))/(c + d*x)^(1//6)))/(2*b^(7//6)), integration_var = x, mistery_val = 13),
#     (integrand = 1/((a + b*x)^(7//6)*(c + d*x)^(5//6)), result = (-6*(c + d*x)^(1//6))/((b*c - a*d)*(a + b*x)^(1//6)), integration_var = x, mistery_val = 1),
#     (integrand = 1/((a + b*x)^(7//6)*(c + d*x)^(11//6)), result = -6/((b*c - a*d)*(a + b*x)^(1//6)*(c + d*x)^(5//6)) - (36*d*(a + b*x)^(5//6))/(5*(b*c - a*d)^2*(c + d*x)^(5//6)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((a + b*x)^(7//6)*(c + d*x)^(17//6)), result = -6/((b*c - a*d)*(a + b*x)^(1//6)*(c + d*x)^(11//6)) - (72*d*(a + b*x)^(5//6))/(11*(b*c - a*d)^2*(c + d*x)^(11//6)) - (432*b*d*(a + b*x)^(5//6))/(55*(b*c - a*d)^3*(c + d*x)^(5//6)), integration_var = x, mistery_val = 3),
#     (integrand = 1/((a + b*x)^(7//6)*(c + d*x)^(23//6)), result = -6/((b*c - a*d)*(a + b*x)^(1//6)*(c + d*x)^(17//6)) - (108*d*(a + b*x)^(5//6))/(17*(b*c - a*d)^2*(c + d*x)^(17//6)) - (1296*b*d*(a + b*x)^(5//6))/(187*(b*c - a*d)^3*(c + d*x)^(11//6)) - (7776*b^2*d*(a + b*x)^(5//6))/(935*(b*c - a*d)^4*(c + d*x)^(5//6)), integration_var = x, mistery_val = 4),
# 
#     (integrand = (c + d*x)^(11//6)/(a + b*x)^(7//6), result = (-6*(b*c - a*d)*(c + d*x)^(5//6)*Hypergeometric2F1(-11//6, -1//6, 5//6, -((d*(a + b*x))/(b*c - a*d))))/(b^2*(a + b*x)^(1//6)*((b*(c + d*x))/(b*c - a*d))^(5//6)), integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^(5//6)/(a + b*x)^(7//6), result = (-6*(c + d*x)^(5//6)*Hypergeometric2F1(-5//6, -1//6, 5//6, -((d*(a + b*x))/(b*c - a*d))))/(b*(a + b*x)^(1//6)*((b*(c + d*x))/(b*c - a*d))^(5//6)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((a + b*x)^(7//6)*(c + d*x)^(1//6)), result = (-6*((b*(c + d*x))/(b*c - a*d))^(1//6)*Hypergeometric2F1(-1//6, 1//6, 5//6, -((d*(a + b*x))/(b*c - a*d))))/(b*(a + b*x)^(1//6)*(c + d*x)^(1//6)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((a + b*x)^(7//6)*(c + d*x)^(7//6)), result = (-6*((b*(c + d*x))/(b*c - a*d))^(1//6)*Hypergeometric2F1(-1//6, 7//6, 5//6, -((d*(a + b*x))/(b*c - a*d))))/((b*c - a*d)*(a + b*x)^(1//6)*(c + d*x)^(1//6)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((a + b*x)^(7//6)*(c + d*x)^(13//6)), result = (-6*b*((b*(c + d*x))/(b*c - a*d))^(1//6)*Hypergeometric2F1(-1//6, 13//6, 5//6, -((d*(a + b*x))/(b*c - a*d))))/((b*c - a*d)^2*(a + b*x)^(1//6)*(c + d*x)^(1//6)), integration_var = x, mistery_val = 2),
#     (integrand = 1/((a + b*x)^(7//6)*(c + d*x)^(19//6)), result = (-6*b^2*((b*(c + d*x))/(b*c - a*d))^(1//6)*Hypergeometric2F1(-1//6, 19//6, 5//6, -((d*(a + b*x))/(b*c - a*d))))/((b*c - a*d)^3*(a + b*x)^(1//6)*(c + d*x)^(1//6)), integration_var = x, mistery_val = 2),
# 
# 
# # ::Subsection::Closed::
# # Integrands of the form (a+b x)^m (c+d x)^n where m and/or symbolic
# 
# 
#     (integrand = (a + b*x)^m*(a + b*(m + 2)*x), result = x*(a + b*x)^(1 + m), integration_var = x, mistery_val = 1),
# 
# 
# # {(a + b*x)^m*(c + d*x)^n, x, 2, -(((a + b*x)^(1 + m)*(c + d*x)^(1 + n)*Hypergeometric2F1[1, 2 + m + n, 2 + n, (b*(c + d*x))/(b*c - a*d)])/((b*c - a*d)*(1 + n))), ((a + b*x)^(1 + m)*(c + d*x)^n*Hypergeometric2F1[1 + m, -n, 2 + m, -((d*(a + b*x))/(b*c - a*d))])/(((b*(c + d*x))/(b*c - a*d))^n*(b*(1 + m)))}
# 
# 
#     (integrand = (a + b*x)^m*(c + d*x)^3, result = ((b*c - a*d)^3*(a + b*x)^(1 + m))/(b^4*(1 + m)) + (3*d*(b*c - a*d)^2*(a + b*x)^(2 + m))/(b^4*(2 + m)) + (3*d^2*(b*c - a*d)*(a + b*x)^(3 + m))/(b^4*(3 + m)) + (d^3*(a + b*x)^(4 + m))/(b^4*(4 + m)), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^m*(c + d*x)^2, result = ((b*c - a*d)^2*(a + b*x)^(1 + m))/(b^3*(1 + m)) + (2*d*(b*c - a*d)*(a + b*x)^(2 + m))/(b^3*(2 + m)) + (d^2*(a + b*x)^(3 + m))/(b^3*(3 + m)), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^m*(c + d*x)^1, result = ((b*c - a*d)*(a + b*x)^(1 + m))/(b^2*(1 + m)) + (d*(a + b*x)^(2 + m))/(b^2*(2 + m)), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^m/(c + d*x)^1, result = ((a + b*x)^(1 + m)*Hypergeometric2F1(1, 1 + m, 2 + m, -((d*(a + b*x))/(b*c - a*d))))/((b*c - a*d)*(1 + m)), integration_var = x, mistery_val = 1),
#     (integrand = (a + b*x)^m/(c + d*x)^2, result = (b*(a + b*x)^(1 + m)*Hypergeometric2F1(2, 1 + m, 2 + m, -((d*(a + b*x))/(b*c - a*d))))/((b*c - a*d)^2*(1 + m)), integration_var = x, mistery_val = 1),
#     (integrand = (a + b*x)^m/(c + d*x)^3, result = (b^2*(a + b*x)^(1 + m)*Hypergeometric2F1(3, 1 + m, 2 + m, -((d*(a + b*x))/(b*c - a*d))))/((b*c - a*d)^3*(1 + m)), integration_var = x, mistery_val = 1),
# 
# 
#     (integrand = (a + b*x)^3*(c + d*x)^n, result = -(((b*c - a*d)^3*(c + d*x)^(1 + n))/(d^4*(1 + n))) + (3*b*(b*c - a*d)^2*(c + d*x)^(2 + n))/(d^4*(2 + n)) - (3*b^2*(b*c - a*d)*(c + d*x)^(3 + n))/(d^4*(3 + n)) + (b^3*(c + d*x)^(4 + n))/(d^4*(4 + n)), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^2*(c + d*x)^n, result = ((b*c - a*d)^2*(c + d*x)^(1 + n))/(d^3*(1 + n)) - (2*b*(b*c - a*d)*(c + d*x)^(2 + n))/(d^3*(2 + n)) + (b^2*(c + d*x)^(3 + n))/(d^3*(3 + n)), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^1*(c + d*x)^n, result = -(((b*c - a*d)*(c + d*x)^(1 + n))/(d^2*(1 + n))) + (b*(c + d*x)^(2 + n))/(d^2*(2 + n)), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^0*(c + d*x)^n, result = (c + d*x)^(1 + n)/(d*(1 + n)), integration_var = x, mistery_val = 1),
#     (integrand = (c + d*x)^n/(a + b*x)^1, result = -(((c + d*x)^(1 + n)*Hypergeometric2F1(1, 1 + n, 2 + n, (b*(c + d*x))/(b*c - a*d)))/((b*c - a*d)*(1 + n))), integration_var = x, mistery_val = 1),
#     (integrand = (c + d*x)^n/(a + b*x)^2, result = (d*(c + d*x)^(1 + n)*Hypergeometric2F1(2, 1 + n, 2 + n, (b*(c + d*x))/(b*c - a*d)))/((b*c - a*d)^2*(1 + n)), integration_var = x, mistery_val = 1),
#     (integrand = (c + d*x)^n/(a + b*x)^3, result = -((d^2*(c + d*x)^(1 + n)*Hypergeometric2F1(3, 1 + n, 2 + n, (b*(c + d*x))/(b*c - a*d)))/((b*c - a*d)^3*(1 + n))), integration_var = x, mistery_val = 1),
# 
# 
#     (integrand = (a + b*x)^(-4 + n)/(c + d*x)^n, result = -(((a + b*x)^(-3 + n)*(c + d*x)^(1 - n))/((b*c - a*d)*(3 - n))) + (2*d*(a + b*x)^(-2 + n)*(c + d*x)^(1 - n))/((b*c - a*d)^2*(2 - n)*(3 - n)) - (2*d^2*(a + b*x)^(-1 + n)*(c + d*x)^(1 - n))/((b*c - a*d)^3*(1 - n)*(2 - n)*(3 - n)), integration_var = x, mistery_val = 3),
#     (integrand = (a + b*x)^(-3 + n)/(c + d*x)^n, result = -(((a + b*x)^(-2 + n)*(c + d*x)^(1 - n))/((b*c - a*d)*(2 - n))) + (d*(a + b*x)^(-1 + n)*(c + d*x)^(1 - n))/((b*c - a*d)^2*(1 - n)*(2 - n)), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^(-2 + n)/(c + d*x)^n, result = -(((a + b*x)^(-1 + n)*(c + d*x)^(1 - n))/((b*c - a*d)*(1 - n))), integration_var = x, mistery_val = 1),
#     (integrand = (a + b*x)^(-1 + n)/(c + d*x)^n, result = ((a + b*x)^n*((b*(c + d*x))/(b*c - a*d))^n*Hypergeometric2F1(n, n, 1 + n, -((d*(a + b*x))/(b*c - a*d))))/((c + d*x)^n*(b*n)), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^(0 + n)/(c + d*x)^n, result = ((a + b*x)^(1 + n)*((b*(c + d*x))/(b*c - a*d))^n*Hypergeometric2F1(n, 1 + n, 2 + n, -((d*(a + b*x))/(b*c - a*d))))/((c + d*x)^n*(b*(1 + n))), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^(1 + n)/(c + d*x)^n, result = ((a + b*x)^(2 + n)*((b*(c + d*x))/(b*c - a*d))^n*Hypergeometric2F1(n, 2 + n, 3 + n, -((d*(a + b*x))/(b*c - a*d))))/((c + d*x)^n*(b*(2 + n))), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^(2 + n)/(c + d*x)^n, result = ((a + b*x)^(3 + n)*((b*(c + d*x))/(b*c - a*d))^n*Hypergeometric2F1(n, 3 + n, 4 + n, -((d*(a + b*x))/(b*c - a*d))))/((c + d*x)^n*(b*(3 + n))), integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = (c + d*x)^n/(a + b*x)^(n + 0), result = ((-((d*(a + b*x))/(b*c - a*d)))^n*(c + d*x)^(1 + n)*Hypergeometric2F1(n, 1 + n, 2 + n, (b*(c + d*x))/(b*c - a*d)))/((a + b*x)^n*(d*(1 + n))), integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^n/(a + b*x)^(n + 1), result = -(((c + d*x)^n*Hypergeometric2F1(-n, -n, 1 - n, -((d*(a + b*x))/(b*c - a*d))))/((a + b*x)^n*((b*(c + d*x))/(b*c - a*d))^n*(b*n))), integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^n/(a + b*x)^(n + 2), result = -(((a + b*x)^(-1 - n)*(c + d*x)^(1 + n))/((b*c - a*d)*(1 + n))), integration_var = x, mistery_val = 1),
#     (integrand = (c + d*x)^n/(a + b*x)^(n + 3), result = -(((a + b*x)^(-2 - n)*(c + d*x)^(1 + n))/((b*c - a*d)*(2 + n))) + (d*(a + b*x)^(-1 - n)*(c + d*x)^(1 + n))/((b*c - a*d)^2*(1 + n)*(2 + n)), integration_var = x, mistery_val = 2),
#     (integrand = (c + d*x)^n/(a + b*x)^(n + 4), result = -(((a + b*x)^(-3 - n)*(c + d*x)^(1 + n))/((b*c - a*d)*(3 + n))) + (2*d*(a + b*x)^(-2 - n)*(c + d*x)^(1 + n))/((b*c - a*d)^2*(2 + n)*(3 + n)) - (2*d^2*(a + b*x)^(-1 - n)*(c + d*x)^(1 + n))/((b*c - a*d)^3*(1 + n)*(2 + n)*(3 + n)), integration_var = x, mistery_val = 3),
#     (integrand = (c + d*x)^n/(a + b*x)^(n + 5), result = -(((a + b*x)^(-4 - n)*(c + d*x)^(1 + n))/((b*c - a*d)*(4 + n))) + (3*d*(a + b*x)^(-3 - n)*(c + d*x)^(1 + n))/((b*c - a*d)^2*(3 + n)*(4 + n)) - (6*d^2*(a + b*x)^(-2 - n)*(c + d*x)^(1 + n))/((b*c - a*d)^3*(2 + n)*(3 + n)*(4 + n)) + (6*d^3*(a + b*x)^(-1 - n)*(c + d*x)^(1 + n))/((b*c - a*d)^4*(1 + n)*(2 + n)*(3 + n)*(4 + n)), integration_var = x, mistery_val = 4),
# 
# 
#     (integrand = (a + b*x)^n/(c + d*x)^(n + 0), result = ((a + b*x)^(1 + n)*((b*(c + d*x))/(b*c - a*d))^n*Hypergeometric2F1(n, 1 + n, 2 + n, -((d*(a + b*x))/(b*c - a*d))))/((c + d*x)^n*(b*(1 + n))), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^n/(c + d*x)^(n + 1), result = -(((a + b*x)^n*Hypergeometric2F1(-n, -n, 1 - n, (b*(c + d*x))/(b*c - a*d)))/((-((d*(a + b*x))/(b*c - a*d)))^n*(c + d*x)^n*(d*n))), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^n/(c + d*x)^(n + 2), result = ((a + b*x)^(1 + n)*(c + d*x)^(-1 - n))/((b*c - a*d)*(1 + n)), integration_var = x, mistery_val = 1),
#     (integrand = (a + b*x)^n/(c + d*x)^(n + 3), result = ((a + b*x)^(1 + n)*(c + d*x)^(-2 - n))/((b*c - a*d)*(2 + n)) + (b*(a + b*x)^(1 + n)*(c + d*x)^(-1 - n))/((b*c - a*d)^2*(1 + n)*(2 + n)), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^n/(c + d*x)^(n + 4), result = ((a + b*x)^(1 + n)*(c + d*x)^(-3 - n))/((b*c - a*d)*(3 + n)) + (2*b*(a + b*x)^(1 + n)*(c + d*x)^(-2 - n))/((b*c - a*d)^2*(2 + n)*(3 + n)) + (2*b^2*(a + b*x)^(1 + n)*(c + d*x)^(-1 - n))/((b*c - a*d)^3*(1 + n)*(2 + n)*(3 + n)), integration_var = x, mistery_val = 3),
#     (integrand = (a + b*x)^n/(c + d*x)^(n + 5), result = ((a + b*x)^(1 + n)*(c + d*x)^(-4 - n))/((b*c - a*d)*(4 + n)) + (3*b*(a + b*x)^(1 + n)*(c + d*x)^(-3 - n))/((b*c - a*d)^2*(3 + n)*(4 + n)) + (6*b^2*(a + b*x)^(1 + n)*(c + d*x)^(-2 - n))/((b*c - a*d)^3*(2 + n)*(3 + n)*(4 + n)) + (6*b^3*(a + b*x)^(1 + n)*(c + d*x)^(-1 - n))/((b*c - a*d)^4*(1 + n)*(2 + n)*(3 + n)*(4 + n)), integration_var = x, mistery_val = 4),
# 
# 
#     (integrand = (a + b*x)^(n - 2)/(c + d*x)^(n - 1), result = -(((b*c - a*d)*(a + b*x)^(-1 + n)*((b*(c + d*x))/(b*c - a*d))^n*Hypergeometric2F1(-1 + n, -1 + n, n, -((d*(a + b*x))/(b*c - a*d))))/((c + d*x)^n*(b^2*(1 - n)))), integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = (a + b*x)^(n + 1)/(c + d*x)^(n + 1), result = ((b*c - a*d)*(a + b*x)^n*Hypergeometric2F1(-1 - n, -n, 1 - n, (b*(c + d*x))/(b*c - a*d)))/((-((d*(a + b*x))/(b*c - a*d)))^n*(c + d*x)^n*(d^2*n)), integration_var = x, mistery_val = 2),
# 
# 
# # Pseudo-symbolic exponent must be recognized as equal to -1.
#     (integrand = (a + b*x)^m*(c + d*x)^(1 + 2*n - 2*(1 + n)), result = ((a + b*x)^(1 + m)*Hypergeometric2F1(1, 1 + m, 2 + m, -((d*(a + b*x))/(b*c - a*d))))/((b*c - a*d)*(1 + m)), integration_var = x, mistery_val = 2),
#     (integrand = 1/(a + b*x)^2*(c + d*x)^(1 + 2*n - 2*(1 + n)), result = -(1/((b*c - a*d)*(a + b*x))) - (d*log(a + b*x))/(b*c - a*d)^2 + (d*log(c + d*x))/(b*c - a*d)^2, integration_var = x, mistery_val = 3),
# 
# 
#     (integrand = (a + b*x)^(-1 - (b*c)/(b*c - a*d))*(c + d*x)^(-1 + (a*d)/(b*c - a*d)), result = -((c + d*x)^((a*d)/(b*c - a*d))/((a + b*x)^((b*c)/(b*c - a*d))*(b*c))) + (c + d*x)^((a*d)/(b*c - a*d))/((a + b*x)^((a*d)/(b*c - a*d))*(a*b*c)), integration_var = x, mistery_val = 2),
#     (integrand = (a + b*x)^((-2*b*c + a*d)/(b*c - a*d))*(c + d*x)^((b*c - 2*a*d)/((-b)*c + a*d)), result = -((c + d*x)^((a*d)/(b*c - a*d))/((a + b*x)^((b*c)/(b*c - a*d))*(b*c))) + (c + d*x)^((a*d)/(b*c - a*d))/((a + b*x)^((a*d)/(b*c - a*d))*(a*b*c)), integration_var = x, mistery_val = 2),
# 
# 
#     (integrand = (1 - x)^n/sqrt(1 + x), result = 2^(1 + n)*sqrt(1 + x)*Hypergeometric2F1(1//2, -n, 3//2, (1 + x)/2), integration_var = x, mistery_val = 1),
#     (integrand = (1 + x)^n/sqrt(1 - x), result = (-2^(1 + n))*sqrt(1 - x)*Hypergeometric2F1(1//2, -n, 3//2, (1 - x)/2), integration_var = x, mistery_val = 1),
# 
# 
#     (integrand = (1 - x)^n*(1 + x)^(7//3), result = (3//5)*2^(-1 + n)*(1 + x)^(10//3)*Hypergeometric2F1(10//3, -n, 13//3, (1 + x)/2), integration_var = x, mistery_val = 1),
#     (integrand = (1 + x)^n*(1 - x)^(7//3), result = (-(3//5))*2^(-1 + n)*(1 - x)^(10//3)*Hypergeometric2F1(10//3, -n, 13//3, (1 - x)/2), integration_var = x, mistery_val = 1),
# 
# 
#     (integrand = (2 + 3*x)^m/(1 + 2*x)^m, result = (2^(-1 - m)*(1 + 2*x)^(1 - m)*Hypergeometric2F1(1 - m, -m, 2 - m, -3*(1 + 2*x)))/(1 - m), integration_var = x, mistery_val = 1),
# 
# 
#     (integrand = ((d*(a + b*x))/((-b)*c + a*d))^m*(c + d*x)^n, result = ((c + d*x)^(1 + n)*Hypergeometric2F1(-m, 1 + n, 2 + n, (b*(c + d*x))/(b*c - a*d)))/(d*(1 + n)), integration_var = x, mistery_val = 2),
# 
# 
# # ::Title::Closed::
# # Multinomial integrands
# 
# 
# # ::Section::Closed::
# # Polynomial integrands
# 
# 
#     (integrand = a + b*x + c*x^2 + d*x^3, result = a*x + (b*x^2)/2 + (c*x^3)/3 + (d*x^4)/4, integration_var = x, mistery_val = 1),
#     (integrand = -x^3 + x^4, result = -(x^4//4) + x^5//5, integration_var = x, mistery_val = 1),
#     (integrand = -1 + x^5, result = -x + x^6//6, integration_var = x, mistery_val = 1),
#     (integrand = 7 + 4*x, result = 7*x + 2*x^2, integration_var = x, mistery_val = 1),
#     (integrand = 4*x + π*x^3, result = 2*x^2 + (π*x^4)/4, integration_var = x, mistery_val = 1),
#     (integrand = 2*x + 5*x^2, result = x^2 + (5*x^3)/3, integration_var = x, mistery_val = 1),
#     (integrand = x^2//2 + x^3//3, result = x^3//6 + x^4//12, integration_var = x, mistery_val = 1),
#     (integrand = 3 - 5*x + 2*x^2, result = 3*x - (5*x^2)/2 + (2*x^3)/3, integration_var = x, mistery_val = 1),
#     (integrand = -2*x + x^2 + x^3, result = -x^2 + x^3//3 + x^4//4, integration_var = x, mistery_val = 1),
#     (integrand = 1 - x^2 - 3*x^5, result = x - x^3//3 - x^6//2, integration_var = x, mistery_val = 1),
#     (integrand = 5 + 2*x + 3*x^2 + 4*x^3, result = 5*x + x^2 + x^3 + x^4, integration_var = x, mistery_val = 1),
# 
# 
# # ::Section::Closed::
# # Multinomial integrands
# 
# 
#     (integrand = a + b/x + c/x^2 + d/x^3, result = -(d/(2*x^2)) - c/x + a*x + b*log(x), integration_var = x, mistery_val = 1),
#     (integrand = x^(-5) + x + x^5, result = -(1/(4*x^4)) + x^2//2 + x^6//6, integration_var = x, mistery_val = 1),
#     (integrand = x^(-3) + x^(-2) + x^(-1), result = -(1/(2*x^2)) - 1/x + log(x), integration_var = x, mistery_val = 1),
#     (integrand = -2/x^2 + 3/x, result = 2/x + 3*log(x), integration_var = x, mistery_val = 1),
#     (integrand = -1/(7*x^6) + x^6, result = 1/(35*x^5) + x^7//7, integration_var = x, mistery_val = 1),
#     (integrand = 1 + x^(-1) + x, result = x + x^2//2 + log(x), integration_var = x, mistery_val = 1),
#     (integrand = -3/x^3 + 4/x^2, result = 3/(2*x^2) - 4/x, integration_var = x, mistery_val = 1),
#     (integrand = x^(-1) + 2*x + x^2, result = x^2 + x^3//3 + log(x), integration_var = x, mistery_val = 1),
# 
# 
#     (integrand = x^(5//6) - x^3, result = (6*x^(11//6))/11 - x^4//4, integration_var = x, mistery_val = 1),
#     (integrand = 33 + x^(1//33), result = 33*x + (33*x^(34//33))/34, integration_var = x, mistery_val = 1),
#     (integrand = 1/(2*sqrt(x)) + 2*sqrt(x), result = sqrt(x) + (4*x^(3//2))/3, integration_var = x, mistery_val = 1),
#     (integrand = -x^(-2) + 10/x + 6*sqrt(x), result = x^(-1) + 4*x^(3//2) + 10*log(x), integration_var = x, mistery_val = 1),
#     (integrand = x^(-3//2) + x^(3//2), result = -(2/sqrt(x)) + (2*x^(5//2))/5, integration_var = x, mistery_val = 1),
#     (integrand = -5*x^(3//2) + 7*x^(5//2), result = -2*x^(5//2) + 2*x^(7//2), integration_var = x, mistery_val = 1),
#     (integrand = 2/sqrt(x) + sqrt(x) - x/2, result = 4*sqrt(x) + (2*x^(3//2))/3 - x^2//4, integration_var = x, mistery_val = 1),
    # (integrand = -2/x + sqrt(x)/5 + x^(3//2), result = (2*x^(3//2))/15 + (2*x^(5//2))/5 - 2*log(x), integration_var = x, mistery_val = 1),
]
# # Total integrals translated: 1968
