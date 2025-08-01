file_rules = [
("1_1_2_1_1",
@rule ∫(((~!b)*(~x)^2)^(~p),(~x)) =>
    !contains_var((~b), (~p), (~x)) ?
(~b)^intpart((~p))*((~b)*(~x)^2)^fracpart((~p))⨸(~x)^(2*fracpart((~p))) * ∫((~x)^(2*(~p)), (~x)) : nothing)

("1_1_2_1_2",
@rule ∫(1/((~a)+(~!b)*(~x)^2)^(3//2),(~x)) =>
    !contains_var((~a), (~b), (~x)) ?
(~x)⨸((~a)*sqrt((~a)+(~b)*(~x)^2)) : nothing)

("1_1_2_1_3",
@rule ∫(((~a)+(~!b)*(~x)^2)^(~p),(~x)) =>
    !contains_var((~a), (~b), (~x)) &&
    ilt((~p)+3/2, 0) ?
-(~x)*((~a)+(~b)*(~x)^2)^((~p)+1)⨸(2*(~a)*((~p)+1)) + (2*(~p)+3)⨸(2*(~a)*((~p)+1)) * ∫(((~a)+(~b)*(~x)^2)^((~p)+1), (~x)) : nothing)

("1_1_2_1_4",
@rule ∫(((~a)+(~!b)*(~x)^2)^(~p),(~x)) =>
    !contains_var((~a), (~b), (~x)) &&
    igt((~p), 0) ?
∫(ext_expand(((~a)+(~b)*(~x)^2)^(~p), (~x)), (~x)) : nothing)

("1_1_2_1_5",
@rule ∫(((~a)+(~!b)*(~x)^2)^(~p),(~x)) =>
    !contains_var((~a), (~b), (~x)) &&
    gt((~p), 0) &&
    (
        ext_isinteger(4*(~p)) ||
        ext_isinteger(6*(~p))
    ) ?
(~x)*((~a)+(~b)*(~x)^2)^(~p)⨸(2*(~p)+1) + 2*(~a)*(~p)⨸(2*(~p)+1) * ∫(((~a)+(~b)*(~x)^2)^((~p)-1), (~x)) : nothing)

("1_1_2_1_6",
@rule ∫(1/((~a)+(~!b)*(~x)^2)^(5//4),(~x)) =>
    !contains_var((~a), (~b), (~x)) &&
    gt((~a), 0) &&
    pos((~b)/(~a)) ?
2⨸((~a)^(5⨸4)*rt((~b)⨸(~a), 2))*elliptic_e(1⨸2*atan(rt((~b)⨸(~a), 2)*(~x)), 2) : nothing)

("1_1_2_1_7",
@rule ∫(1/((~a)+(~!b)*(~x)^2)^(5//4),(~x)) =>
    !contains_var((~a), (~b), (~x)) &&
    pos((~a)) &&
    pos((~b)/(~a)) ?
(1+(~b)*(~x)^2⨸(~a))^(1⨸4)⨸((~a)*((~a)+(~b)*(~x)^2)^(1⨸4)) * ∫(1⨸(1+(~b)*(~x)^2⨸(~a))^(5⨸4), (~x)) : nothing)

("1_1_2_1_8",
@rule ∫(1/((~a)+(~!b)*(~x)^2)^(7//6),(~x)) =>
    !contains_var((~a), (~b), (~x)) ?
1⨸(((~a) +(~b)*(~x)^2)^(2⨸3)*((~a)⨸((~a)+(~b)*(~x)^2))^(2⨸3)) * int_and_subst(1⨸(1-(~b)*(~x)^2)^(1⨸3),  (~x), (~x), (~x)⨸sqrt((~a)+(~b)*(~x)^2), "1_1_2_1_8") : nothing)

("1_1_2_1_9",
@rule ∫(((~a)+(~!b)*(~x)^2)^(~p),(~x)) =>
    !contains_var((~a), (~b), (~x)) &&
    lt((~p), -1) &&
    (
        ext_isinteger(4*(~p)) ||
        ext_isinteger(6*(~p))
    ) ?
-(~x)*((~a)+(~b)*(~x)^2)^((~p)+1)⨸(2*(~a)*((~p)+1)) + (2*(~p)+3)⨸(2*(~a)*((~p)+1)) * ∫(((~a)+(~b)*(~x)^2)^((~p)+1), (~x)) : nothing)

("1_1_2_1_10",
@rule ∫(1/((~a)+(~!b)*(~x)^2),(~x)) =>
    !contains_var((~a), (~b), (~x)) &&
    pos((~a)/(~b)) &&
    (
        gt((~a), 0) ||
        gt((~b), 0)
    ) ?
1⨸(rt((~a), 2)*rt((~b), 2))*atan(rt((~b), 2)*(~x)⨸rt((~a), 2)) : nothing)

("1_1_2_1_11",
@rule ∫(1/((~a)+(~!b)*(~x)^2),(~x)) =>
    !contains_var((~a), (~b), (~x)) &&
    pos((~a)/(~b)) &&
    (
        lt((~a), 0) ||
        lt((~b), 0)
    ) ?
-1⨸(rt(-(~a), 2)*rt(-(~b), 2))*atan(rt(-(~b), 2)*(~x)⨸rt(-(~a), 2)) : nothing)

("1_1_2_1_12",
@rule ∫(1/((~a)+(~!b)*(~x)^2),(~x)) =>
    !contains_var((~a), (~b), (~x)) &&
    pos((~a)/(~b)) ?
rt((~a)⨸(~b), 2)⨸(~a)*atan((~x)⨸rt((~a)⨸(~b), 2)) : nothing)

("1_1_2_1_13",
@rule ∫(1/((~a)+(~!b)*(~x)^2),(~x)) =>
    !contains_var((~a), (~b), (~x)) &&
    neg((~a)/(~b)) &&
    (
        gt((~a), 0) ||
        lt((~b), 0)
    ) ?
1⨸(rt((~a), 2)*rt(-(~b), 2))*atanh(rt(-(~b), 2)*(~x)⨸rt((~a), 2)) : nothing)

("1_1_2_1_14",
@rule ∫(1/((~a)+(~!b)*(~x)^2),(~x)) =>
    !contains_var((~a), (~b), (~x)) &&
    neg((~a)/(~b)) &&
    (
        lt((~a), 0) ||
        gt((~b), 0)
    ) ?
-1⨸(rt(-(~a), 2)*rt((~b), 2))*atanh(rt((~b), 2)*(~x)⨸rt(-(~a), 2)) : nothing)

("1_1_2_1_15",
@rule ∫(1/((~a)+(~!b)*(~x)^2),(~x)) =>
    !contains_var((~a), (~b), (~x)) &&
    neg((~a)/(~b)) ?
rt(-(~a)⨸(~b), 2)⨸(~a)*atanh((~x)⨸rt(-(~a)⨸(~b), 2)) : nothing)

("1_1_2_1_16",
@rule ∫(1/sqrt((~a)+(~!b)*(~x)^2),(~x)) =>
    !contains_var((~a), (~b), (~x)) &&
    gt((~a), 0) &&
    pos((~b)) ?
asinh(rt((~b), 2)*(~x)⨸sqrt((~a)))⨸rt((~b), 2) : nothing)

("1_1_2_1_17",
@rule ∫(1/sqrt((~a)+(~!b)*(~x)^2),(~x)) =>
    !contains_var((~a), (~b), (~x)) &&
    gt((~a), 0) &&
    neg((~b)) ?
asin(rt(-(~b), 2)*(~x)⨸sqrt((~a)))⨸rt(-(~b), 2) : nothing)

("1_1_2_1_18",
@rule ∫(1/sqrt((~a)+(~!b)*(~x)^2),(~x)) =>
    !contains_var((~a), (~b), (~x)) &&
    !(gt((~a), 0)) ?
int_and_subst(1⨸(1-(~b)*(~x)^2),  (~x), (~x), (~x)⨸sqrt((~a)+(~b)*(~x)^2), "1_1_2_1_18") : nothing)

("1_1_2_1_19",
@rule ∫(1/((~a)+(~!b)*(~x)^2)^(1//4),(~x)) =>
    !contains_var((~a), (~b), (~x)) &&
    gt((~a), 0) &&
    pos((~b)/(~a)) ?
2*(~x)⨸((~a)+(~b)*(~x)^2)^(1⨸4) - (~a) * ∫(1⨸((~a)+(~b)*(~x)^2)^(5⨸4), (~x)) : nothing)

("1_1_2_1_20",
@rule ∫(1/((~a)+(~!b)*(~x)^2)^(1//4),(~x)) =>
    !contains_var((~a), (~b), (~x)) &&
    gt((~a), 0) &&
    neg((~b)/(~a)) ?
2⨸((~a)^(1⨸4)*rt(-(~b)⨸(~a), 2))*elliptic_e(1⨸2*asin(rt(-(~b)⨸(~a), 2)*(~x)), 2) : nothing)

("1_1_2_1_21",
@rule ∫(1/((~a)+(~!b)*(~x)^2)^(1//4),(~x)) =>
    !contains_var((~a), (~b), (~x)) &&
    pos((~a)) ?
(1+(~b)*(~x)^2⨸(~a))^(1⨸4)⨸((~a)+(~b)*(~x)^2)^(1⨸4) * ∫(1⨸(1+(~b)*(~x)^2⨸(~a))^(1⨸4), (~x)) : nothing)

("1_1_2_1_22",
@rule ∫(1/((~a)+(~!b)*(~x)^2)^(1//4),(~x)) =>
    !contains_var((~a), (~b), (~x)) &&
    neg((~a)) ?
2*sqrt(-(~b)*(~x)^2⨸(~a))⨸((~b)*(~x)) * int_and_subst((~x)^2⨸sqrt(1-(~x)^4⨸(~a)),  (~x), (~x), ((~a)+(~b)*(~x)^2)^(1⨸4), "1_1_2_1_22") : nothing)

("1_1_2_1_23",
@rule ∫(1/((~a)+(~!b)*(~x)^2)^(3//4),(~x)) =>
    !contains_var((~a), (~b), (~x)) &&
    gt((~a), 0) &&
    pos((~b)/(~a)) ?
2⨸((~a)^(3⨸4)*rt((~b)⨸(~a), 2))*elliptic_f(1⨸2*atan(rt((~b)⨸(~a), 2)*(~x)), 2) : nothing)

("1_1_2_1_24",
@rule ∫(1/((~a)+(~!b)*(~x)^2)^(3//4),(~x)) =>
    !contains_var((~a), (~b), (~x)) &&
    gt((~a), 0) &&
    neg((~b)/(~a)) ?
2⨸((~a)^(3⨸4)*rt(-(~b)⨸(~a), 2))*elliptic_f(1⨸2*asin(rt(-(~b)⨸(~a), 2)*(~x)), 2) : nothing)

("1_1_2_1_25",
@rule ∫(1/((~a)+(~!b)*(~x)^2)^(3//4),(~x)) =>
    !contains_var((~a), (~b), (~x)) &&
    pos((~a)) ?
(1+(~b)*(~x)^2⨸(~a))^(3⨸4)⨸((~a)+(~b)*(~x)^2)^(3⨸4) * ∫(1⨸(1+(~b)*(~x)^2⨸(~a))^(3⨸4), (~x)) : nothing)

("1_1_2_1_26",
@rule ∫(1/((~a)+(~!b)*(~x)^2)^(3//4),(~x)) =>
    !contains_var((~a), (~b), (~x)) &&
    neg((~a)) ?
2*sqrt(-(~b)*(~x)^2⨸(~a))⨸((~b)*(~x)) * int_and_subst(1⨸sqrt(1-(~x)^4⨸(~a)),  (~x), (~x), ((~a)+(~b)*(~x)^2)^(1⨸4), "1_1_2_1_26") : nothing)

("1_1_2_1_27",
@rule ∫(1/((~a)+(~!b)*(~x)^2)^(1//3),(~x)) =>
    !contains_var((~a), (~b), (~x)) ?
3*sqrt((~b)*(~x)^2)⨸(2*(~b)*(~x)) * int_and_subst((~x)⨸sqrt(-(~a)+(~x)^3),  (~x), (~x), ((~a)+(~b)*(~x)^2)^(1⨸3), "1_1_2_1_27") : nothing)

("1_1_2_1_28",
@rule ∫(1/((~a)+(~!b)*(~x)^2)^(2//3),(~x)) =>
    !contains_var((~a), (~b), (~x)) ?
3*sqrt((~b)*(~x)^2)⨸(2*(~b)*(~x)) * int_and_subst(1⨸sqrt(-(~a)+(~x)^3),  (~x), (~x), ((~a)+(~b)*(~x)^2)^(1⨸3), "1_1_2_1_28") : nothing)

("1_1_2_1_29",
@rule ∫(1/((~a)+(~!b)*(~x)^2)^(1//6),(~x)) =>
    !contains_var((~a), (~b), (~x)) ?
3*(~x)⨸(2*((~a)+(~b)*(~x)^2)^(1⨸6)) - (~a)⨸2 * ∫(1⨸((~a)+(~b)*(~x)^2)^(7⨸6), (~x)) : nothing)

("1_1_2_1_30",
@rule ∫(1/((~a)+(~!b)*(~x)^2)^(5//6),(~x)) =>
    !contains_var((~a), (~b), (~x)) ?
1⨸(((~a)⨸((~a)+(~b)*(~x)^2))^(1⨸3)*((~a)+(~b)*(~x)^2)^(1⨸3)) * int_and_subst(1⨸(1-(~b)*(~x)^2)^(2⨸3),  (~x), (~x), (~x)⨸sqrt((~a)+(~b)*(~x)^2), "1_1_2_1_30") : nothing)

("1_1_2_1_31",
@rule ∫(((~a)+(~!b)*(~x)^2)^(~p),(~x)) =>
    !contains_var((~a), (~b), (~p), (~x)) &&
    !(ext_isinteger(2*(~p))) &&
    gt((~a), 0) ?
(~a)^(~p)*(~x)*hypergeometric2f1(-(~p), 1⨸2, 1⨸2+1, -(~b)*(~x)^2⨸(~a)) : nothing)

("1_1_2_1_32",
@rule ∫(((~a)+(~!b)*(~x)^2)^(~p),(~x)) =>
    !contains_var((~a), (~b), (~p), (~x)) &&
    !(ext_isinteger(2*(~p))) &&
    !(gt((~a), 0)) ?
(~a)^intpart((~p))*((~a)+(~b)*(~x)^2)^fracpart((~p))⨸(1+(~b)*(~x)^2⨸(~a))^fracpart((~p)) * ∫((1+(~b)*(~x)^2⨸(~a))^(~p), (~x)) : nothing)

("1_1_2_1_33",
@rule ∫(((~!a)+(~!b)*(~v)^(~n))^(~p),(~x)) =>
    !contains_var((~a), (~b), (~n), (~p), (~x)) &&
    linear((~v), (~x)) &&
    !eq((~v), (~x)) ?
1⨸Symbolics.coeff((~v), (~x) ^ 1) * int_and_subst(((~a)+(~b)*(~x)^(~n))^(~p),  (~x), (~x), (~v), "1_1_2_1_33") : nothing)

]
