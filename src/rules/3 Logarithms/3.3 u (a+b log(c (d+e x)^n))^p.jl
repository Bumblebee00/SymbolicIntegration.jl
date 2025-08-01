file_rules = [
#(* ::Subsection::Closed:: *)
#(* 3.3 u (a+b log(c (d+e x)^n))^p *)
("3_3_1",
@rule ∫(((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n)))^(~!p),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~n), (~p), (~x)) ?
1⨸(~e)*int_and_subst(((~a) + (~b)*log((~c)*(~x)^(~n)))^(~p),  (~x), (~x), (~d) + (~e)*(~x), "3_3_1") : nothing)

("3_3_2",
@rule ∫(((~f) + (~!g)*(~x))^(~!q)*((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n)))^(~!p),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~n), (~p), (~q), (~x)) &&
    eq((~e)*(~f) - (~d)*(~g), 0) ?
1⨸(~e)*int_and_subst(((~f)*(~x)⨸(~d))^(~q)*((~a) + (~b)*log((~c)*(~x)^(~n)))^(~p),  (~x), (~x), (~d) + (~e)*(~x), "3_3_2") : nothing)

("3_3_3",
@rule ∫(log((~!c)*((~d) + (~!e)*(~x)^(~!n)))/(~x),(~x)) =>
    !contains_var((~c), (~d), (~e), (~n), (~x)) &&
    eq((~c)*(~d), 1) ?
-PolyLog.reli(2, -(~c)*(~e)*(~x)^(~n))⨸(~n) : nothing)

("3_3_4",
@rule ∫(((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))))/(~x),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~x)) &&
    gt((~c)*(~d), 0) ?
((~a) + (~b)*log((~c)*(~d)))*log((~x)) + (~b)*∫(log(1 + (~e)*(~x)⨸(~d))⨸(~x), (~x)) : nothing)

("3_3_5",
@rule ∫(((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))))/((~!f) + (~!g)*(~x)),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~x)) &&
    !eq((~e)*(~f) - (~d)*(~g), 0) &&
    eq((~g) + (~c)*((~e)*(~f) - (~d)*(~g)), 0) ?
1⨸(~g)*int_and_subst(((~a) + (~b)*log(1 + (~c)*(~e)*(~x)⨸(~g)))⨸(~x),  (~x), (~x), (~f) + (~g)*(~x), "3_3_5") : nothing)

("3_3_6",
@rule ∫(((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n)))/((~!f) + (~!g)*(~x)),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~n), (~x)) &&
    !eq((~e)*(~f) - (~d)*(~g), 0) ?
log((~e)*((~f) + (~g)*(~x))⨸((~e)*(~f) - (~d)*(~g)))*((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))⨸(~g) - (~b)*(~e)*(~n)⨸(~g)*∫(log(((~e)*((~f) + (~g)*(~x)))⨸((~e)*(~f) - (~d)*(~g)))⨸((~d) + (~e)*(~x)), (~x)) : nothing)

("3_3_7",
@rule ∫(((~!f) + (~!g)*(~x))^(~!q)*((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n))),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~n), (~q), (~x)) &&
    !eq((~e)*(~f) - (~d)*(~g), 0) &&
    !eq((~q), -1) ?
((~f) + (~g)*(~x))^((~q) + 1)*((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))⨸((~g)*((~q) + 1)) - (~b)*(~e)*(~n)⨸((~g)*((~q) + 1))*∫(((~f) + (~g)*(~x))^((~q) + 1)⨸((~d) + (~e)*(~x)), (~x)) : nothing)

("3_3_8",
@rule ∫(((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n)))^(~p)/((~!f) + (~!g)*(~x)),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~n), (~p), (~x)) &&
    !eq((~e)*(~f) - (~d)*(~g), 0) &&
    igt((~p), 1) ?
log((~e)*((~f) + (~g)*(~x))⨸((~e)*(~f) - (~d)*(~g)))*((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))^(~p)⨸(~g) - (~b)*(~e)*(~n)*(~p)⨸(~g)* ∫(log(((~e)*((~f) + (~g)*(~x)))⨸((~e)*(~f) - (~d)*(~g)))*((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))^((~p) - 1)⨸((~d) + (~e)*(~x)), (~x)) : nothing)

("3_3_9",
@rule ∫(((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n)))^(~p)/((~!f) + (~!g)*(~x))^2,(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~n), (~x)) &&
    !eq((~e)*(~f) - (~d)*(~g), 0) &&
    gt((~p), 0) ?
((~d) + (~e)*(~x))*((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))^(~p)⨸(((~e)*(~f) - (~d)*(~g))*((~f) + (~g)*(~x))) - (~b)*(~e)*(~n)*(~p)⨸((~e)*(~f) - (~d)*(~g))* ∫(((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))^((~p) - 1)⨸((~f) + (~g)*(~x)), (~x)) : nothing)

("3_3_10",
@rule ∫(((~!f) + (~!g)*(~x))^(~!q)*((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n)))^(~p),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~n), (~q), (~x)) &&
    !eq((~e)*(~f) - (~d)*(~g), 0) &&
    gt((~p), 0) &&
    !eq((~q), -1) &&
    ext_isinteger(2*(~p), 2*(~q)) &&
    (
        !(igt((~q), 0)) ||
        eq((~p), 2) &&
        !eq((~q), 1)
    ) ?
((~f) + (~g)*(~x))^((~q) + 1)*((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))^(~p)⨸((~g)*((~q) + 1)) - (~b)*(~e)*(~n)*(~p)⨸((~g)*((~q) + 1))* ∫(((~f) + (~g)*(~x))^((~q) + 1)*((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))^((~p) - 1)⨸((~d) + (~e)*(~x)), (~x)) : nothing)

("3_3_11",
@rule ∫(((~!f) + (~!g)*(~x))^(~!q)/((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n))),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~n), (~x)) &&
    !eq((~e)*(~f) - (~d)*(~g), 0) &&
    igt((~q), 0) ?
∫(ext_expand(((~f) + (~g)*(~x))^(~q)⨸((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n))), (~x)), (~x)) : nothing)

("3_3_12",
@rule ∫(((~!f) + (~!g)*(~x))^(~!q)*((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n)))^(~p),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~n), (~x)) &&
    !eq((~e)*(~f) - (~d)*(~g), 0) &&
    lt((~p), -1) &&
    gt((~q), 0) ?
((~d) + (~e)*(~x))*((~f) + (~g)*(~x))^ (~q)*((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))^((~p) + 1)⨸((~b)*(~e)*(~n)*((~p) + 1)) + (~q)*((~e)*(~f) - (~d)*(~g))⨸((~b)*(~e)*(~n)*((~p) + 1))* ∫(((~f) + (~g)*(~x))^((~q) - 1)*((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))^((~p) + 1), (~x)) - ((~q) + 1)⨸((~b)*(~n)*((~p) + 1))* ∫(((~f) + (~g)*(~x))^(~q)*((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))^((~p) + 1), (~x)) : nothing)

("3_3_13",
@rule ∫(((~!f) + (~!g)*(~x))^(~!q)*((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n)))^(~p),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~n), (~p), (~x)) &&
    !eq((~e)*(~f) - (~d)*(~g), 0) &&
    igt((~q), 0) ?
∫(ext_expand(((~f) + (~g)*(~x))^(~q)*((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))^(~p), (~x)), (~x)) : nothing)

("3_3_14",
@rule ∫(log((~c)/((~d) + (~!e)*(~x)))/((~f) + (~!g)*(~x)^2),(~x)) =>
    !contains_var((~c), (~d), (~e), (~f), (~g), (~x)) &&
    eq((~c), 2*(~d)) &&
    eq((~e)^2*(~f) + (~d)^2*(~g), 0) ?
-(~e)⨸(~g)*int_and_subst(log(2*(~d)*(~x))⨸(1 - 2*(~d)*(~x)),  (~x), (~x), 1⨸((~d) + (~e)*(~x)), "3_3_14") : nothing)

("3_3_15",
@rule ∫(((~!a) + (~!b)*log((~c)/((~d) + (~!e)*(~x))))/((~f) + (~!g)*(~x)^2),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~x)) &&
    eq((~e)^2*(~f) + (~d)^2*(~g), 0) &&
    gt((~c)/(2*(~d)), 0) ?
((~a) + (~b)*log((~c)⨸(2*(~d))))*∫(1⨸((~f) + (~g)*(~x)^2), (~x)) + (~b)*∫(log(2*(~d)⨸((~d) + (~e)*(~x)))⨸((~f) + (~g)*(~x)^2), (~x)) : nothing)

("3_3_16",
@rule ∫(((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n)))/sqrt((~f) + (~!g)*(~x)^2),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~n), (~x)) &&
    gt((~f), 0) ?
∫(1⨸sqrt((~f) + (~g)*(~x)^2), (~x))*((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n))) - (~b)*(~e)*(~n)*∫(ext_simplify(∫(1⨸sqrt((~f) + (~g)*(~x)^2), (~x))⨸((~d) + (~e)*(~x)), (~x)), (~x)) : nothing)

("3_3_17",
@rule ∫(((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n)))/(sqrt((~f1) + (~!g1)*(~x))* sqrt((~f2) + (~!g2)*(~x))),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f1), (~g1), (~f2), (~g2), (~n), (~x)) &&
    eq((~f2)*(~g1) + (~f1)*(~g2), 0) &&
    gt((~f1), 0) &&
    gt((~f2), 0) ?
∫(1⨸sqrt((~f1)*(~f2) + (~g1)*(~g2)*(~x)^2), (~x))*((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n))) - (~b)*(~e)*(~n)*∫(ext_simplify(∫(1⨸sqrt((~f1)*(~f2) + (~g1)*(~g2)*(~x)^2), (~x))⨸((~d) + (~e)*(~x)), (~x)), (~x)) : nothing)

("3_3_18",
@rule ∫(((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n)))/sqrt((~f) + (~!g)*(~x)^2),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~n), (~x)) &&
    !(gt((~f), 0)) ?
sqrt(1 + (~g)⨸(~f)*(~x)^2)⨸sqrt((~f) + (~g)*(~x)^2)* ∫(((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))⨸sqrt(1 + (~g)⨸(~f)*(~x)^2), (~x)) : nothing)

("3_3_19",
@rule ∫(((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n)))/(sqrt((~f1) + (~!g1)*(~x))* sqrt((~f2) + (~!g2)*(~x))),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f1), (~g1), (~f2), (~g2), (~n), (~x)) &&
    eq((~f2)*(~g1) + (~f1)*(~g2), 0) ?
sqrt(1 + (~g1)*(~g2)⨸((~f1)*(~f2))*(~x)^2)⨸(sqrt((~f1) + (~g1)*(~x))*sqrt((~f2) + (~g2)*(~x)))* ∫(((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))⨸sqrt(1 + (~g1)*(~g2)⨸((~f1)*(~f2))*(~x)^2), (~x)) : nothing)

("3_3_20",
@rule ∫(((~!f) + (~!g)*(~x)^(~r))^(~!q)*((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n)))^(~!p),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~n), (~p), (~q), (~x)) &&
    fraction((~r)) &&
    igt((~p), 0) ?
ext_den((~r))*int_and_subst((~x)^(ext_den((~r)) - 1)*((~f) + (~g)*(~x)^(ext_den((~r))*(~r)))^(~q)*((~a) + (~b)*log((~c)*((~d) + (~e)*(~x)^ext_den((~r)))^(~n)))^(~p),  (~x), (~x), (~x)^(1⨸ext_den((~r))), "3_3_20") : nothing)

("3_3_21",
@rule ∫(((~f) + (~!g)*(~x)^(~r))^(~!q)*((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n)))^(~!p),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~n), (~r), (~x)) &&
    igt((~p), 0) &&
    ext_isinteger((~q)) &&
    (
        gt((~q), 0) ||
        ext_isinteger((~r)) &&
        !eq((~r), 1)
    ) ?
∫(ext_expand(((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))^(~p), ((~f) + (~g)*(~x)^(~r))^(~q), (~x)), (~x)) : nothing)

("3_3_22",
@rule ∫((~x)^(~!m)*log((~!c)*((~d) + (~!e)*(~x)))/((~f) + (~!g)*(~x)),(~x)) =>
    !contains_var((~c), (~d), (~e), (~f), (~g), (~x)) &&
    eq((~e)*(~f) - (~d)*(~g), 0) &&
    eq((~c)*(~d), 1) &&
    ext_isinteger((~m)) ?
∫(ext_expand(log((~c)*((~d) + (~e)*(~x))), (~x)^(~m)⨸((~f) + (~g)*(~x)), (~x)), (~x)) : nothing)

("3_3_23",
@rule ∫(((~!f) + (~!g)*(~x))^(~!q)*((~!h) + (~!i)*(~x))^ (~!r)*((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n)))^(~!p),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~h), (~i), (~n), (~p), (~q), (~r), (~x)) &&
    eq((~e)*(~f) - (~d)*(~g), 0) &&
    (
        igt((~p), 0) ||
        igt((~r), 0)
    ) &&
    ext_isinteger(2*(~r)) ?
1⨸(~e)*int_and_subst(((~g)*(~x)⨸(~e))^(~q)*(((~e)*(~h) - (~d)*(~i))⨸(~e) + (~i)*(~x)⨸(~e))^(~r)*((~a) + (~b)*log((~c)*(~x)^(~n)))^(~p),  (~x), (~x), (~d) + (~e)*(~x), "3_3_23") : nothing)

("3_3_24",
@rule ∫((~x)^(~!m)*((~f) + (~g)/(~x))^(~!q)*((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n)))^ (~!p),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~m), (~n), (~p), (~q), (~x)) &&
    eq((~m), (~q)) &&
    ext_isinteger((~q)) ?
∫(((~g) + (~f)*(~x))^(~q)*((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))^(~p), (~x)) : nothing)

("3_3_25",
@rule ∫((~x)^(~!m)*((~!f) + (~!g)*(~x)^(~!r))^ (~!q)*((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n)))^(~!p),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~m), (~n), (~q), (~r), (~x)) &&
    eq((~m), (~r) - 1) &&
    !eq((~q), -1) &&
    igt((~p), 0) ?
((~f) + (~g)*(~x)^(~r))^((~q) + 1)*((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))^(~p)⨸((~g)*(~r)*((~q) + 1)) - (~b)*(~e)*(~n)*(~p)⨸((~g)*(~r)*((~q) + 1))* ∫(((~f) + (~g)*(~x)^(~r))^((~q) + 1)*((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))^((~p) - 1)⨸((~d) + (~e)*(~x)), (~x)) : nothing)

# Nested conditions found, not translating rule:
#Int[x_^m_.*(f_ + g_.*x_^r_.)^ q_.*(a_. + b_.*Log[c_.*(d_ + e_.*x_)^n_.]), x_Symbol] := With[{u = IntHide[x^m*(f + g*x^r)^q, x]}, Dist[(a + b*Log[c*(d + e*x)^n]), u, x] - b*e*n*Int[SimplifyIntegrand[u/(d + e*x), x], x] /; InverseFunctionFreeQ[u, x]] /; FreeQ[{a, b, c, d, e, f, g, m, n, q, r}, x] && IntegerQ[m] && IntegerQ[q] && IntegerQ[r]

("3_3_27",
@rule ∫((~x)^(~!m)*((~!f) + (~!g)*(~x)^(~r))^ (~!q)*((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n)))^(~!p),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~n), (~p), (~q), (~x)) &&
    fraction((~r)) &&
    igt((~p), 0) &&
    ext_isinteger((~m)) ?
ext_den((~r))*int_and_subst((~x)^(ext_den((~r))*((~m) + 1) - 1)*((~f) + (~g)*(~x)^(ext_den((~r))*(~r)))^ (~q)*((~a) + (~b)*log((~c)*((~d) + (~e)*(~x)^ext_den((~r)))^(~n)))^(~p),  (~x), (~x), (~x)^(1⨸ext_den((~r))), "3_3_27") : nothing)

("3_3_28",
@rule ∫(((~!h)*(~x))^(~!m)*((~f) + (~!g)*(~x)^(~!r))^ (~!q)*((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n)))^(~!p),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~h), (~m), (~n), (~p), (~q), (~r), (~x)) &&
    ext_isinteger((~m)) &&
    ext_isinteger((~q)) ?
∫(ext_expand(((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))^ (~p), ((~h)*(~x))^(~m)*((~f) + (~g)*(~x)^(~r))^(~q), (~x)), (~x)) : nothing)

("3_3_29",
@rule ∫((~Px)*((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n)))^(~!p),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~n), (~p), (~x)) &&
    poly((~Px), (~x)) ?
∫(ext_expand((~Px)*((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))^(~p), (~x)), (~x)) : nothing)

# Nested conditions found, not translating rule:
#Int[RFx_*(a_. + b_.*Log[c_.*(d_ + e_.*x_)^n_.])^p_., x_Symbol] := With[{u = ExpandIntegrand[(a + b*Log[c*(d + e*x)^n])^p, RFx, x]}, Int[u, x] /; SumQ[u]] /; FreeQ[{a, b, c, d, e, n}, x] && RationalFunctionQ[RFx, x] && IntegerQ[p]

# Nested conditions found, not translating rule:
#Int[RFx_*(a_. + b_.*Log[c_.*(d_ + e_.*x_)^n_.])^p_., x_Symbol] := With[{u = ExpandIntegrand[RFx*(a + b*Log[c*(d + e*x)^n])^p, x]}, Int[u, x] /; SumQ[u]] /; FreeQ[{a, b, c, d, e, n}, x] && RationalFunctionQ[RFx, x] && IntegerQ[p]

# ("3_3_32",
# @rule ∫(AFx_*((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n)))^(~!p),(~x)) =>
#     !contains_var((~a), (~b), (~c), (~d), (~e), (~n), (~p), (~x)) &&
#     algebraic_function(AFx, (~x), True) ?
# Unintegrable[AFx*((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))^(~p), (~x)] : nothing)

("3_3_33",
@rule ∫((~u)^(~!q)*((~!a) + (~!b)*log((~!c)*(~v)^(~!n)))^(~!p),(~x)) =>
    !contains_var((~a), (~b), (~c), (~n), (~p), (~q), (~x)) &&
    binomial((~u), (~x)) &&
    linear((~v), (~x)) &&
    !(
        binomial_without_simplify((~u), (~x)) &&
        linear_without_simplify((~v), (~x))
    ) ?
∫(expand_to_sum((~u), (~x))^(~q)*((~a) + (~b)*log((~c)*expand_to_sum((~v), (~x))^(~n)))^(~p), (~x)) : nothing)

("3_3_34",
@rule ∫(log((~!f)*(~x)^(~!m))*((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n))),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~m), (~n), (~x)) ?
-(~x)*((~m) - log((~f)*(~x)^(~m)))*((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n))) + (~b)*(~e)*(~m)*(~n)*∫((~x)⨸((~d) + (~e)*(~x)), (~x)) - (~b)*(~e)*(~n)*∫(((~x)*log((~f)*(~x)^(~m)))⨸((~d) + (~e)*(~x)), (~x)) : nothing)

("3_3_35",
@rule ∫(log((~!f)*(~x)^(~!m))*((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n)))^(~p),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~m), (~n), (~x)) &&
    igt((~p), 1) ?
dist(log((~f)*(~x)^(~m)), ∫(((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))^(~p), (~x)), (~x)) - (~m)*∫(dist(1⨸(~x), ∫(((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))^(~p), (~x)), (~x)), (~x)) : nothing)

# ("3_3_36",
# @rule ∫(log((~!f)*(~x)^(~!m))*((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n)))^(~!p),(~x)) =>
#     !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~m), (~n), (~p), (~x)) ?
# Unintegrable[log((~f)*(~x)^(~m))*((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))^(~p), (~x)] : nothing)

("3_3_37",
@rule ∫(log((~!f)*(~x)^(~!m))*((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n)))/(~x),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~m), (~n), (~x)) ?
log((~f)*(~x)^(~m))^2*((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))⨸(2*(~m)) - (~b)*(~e)*(~n)⨸(2*(~m))*∫(log((~f)*(~x)^(~m))^2⨸((~d) + (~e)*(~x)), (~x)) : nothing)

("3_3_38",
@rule ∫(((~!g)*(~x))^(~!q)* log((~!f)*(~x)^(~!m))*((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n))),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~m), (~n), (~q), (~x)) &&
    !eq((~q), -1) ?
-1⨸((~g)*((~q) + 1))*((~m)*((~g)*(~x))^((~q) + 1)⨸((~q) + 1) - ((~g)*(~x))^((~q) + 1)* log((~f)*(~x)^(~m)))*((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n))) + (~b)*(~e)*(~m)*(~n)⨸((~g)*((~q) + 1)^2)*∫(((~g)*(~x))^((~q) + 1)⨸((~d) + (~e)*(~x)), (~x)) - (~b)*(~e)*(~n)⨸((~g)*((~q) + 1))*∫(((~g)*(~x))^((~q) + 1)*log((~f)*(~x)^(~m))⨸((~d) + (~e)*(~x)), (~x)) : nothing)

("3_3_39",
@rule ∫(log((~!f)*(~x)^(~!m))*((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n)))^(~!p)/(~x),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~m), (~n), (~x)) &&
    igt((~p), 0) ?
log((~f)*(~x)^(~m))^2*((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))^(~p)⨸(2*(~m)) - (~b)*(~e)*(~n)*(~p)⨸(2*(~m))* ∫(log((~f)*(~x)^(~m))^2*((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))^((~p) - 1)⨸((~d) + (~e)*(~x)), (~x)) : nothing)

("3_3_40",
@rule ∫(((~!g)*(~x))^(~!q)* log((~!f)*(~x)^(~!m))*((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n)))^(~p),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~m), (~n), (~q), (~x)) &&
    igt((~p), 1) &&
    igt((~q), 0) ?
dist(log((~f)*(~x)^(~m)), ∫(((~g)*(~x))^(~q)*((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))^(~p), (~x)), (~x)) - (~m)*∫(dist(1⨸(~x), ∫(((~g)*(~x))^(~q)*((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))^(~p), (~x)), (~x)), (~x)) : nothing)

#(* Int[(g_.*x_)^q_.*Log[f_.*x_^m_.]*(a_.+b_.*Log[c_.*(d_+e_.*x_)^n_.]) ^p_,x_Symbol] := With[{u=IntHide[(a+b*Log[c*(d+e*x)^n])^p,x]}, Dist[(g*x)^q*Log[f*x^m],u,x] - g*m*Int[Dist[(g*x)^(q-1),u,x],x] -  g*q*Int[Dist[(g*x)^(q-1)*Log[f*x^m],u,x],x]] /; FreeQ[{a,b,c,d,e,f,g,m,n,q},x] && IGtQ[p,1] *)
# ("3_3_41",
# @rule ∫(((~!g)*(~x))^(~!q)* log((~!f)*(~x)^(~!m))*((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n)))^(~!p),(~x)) =>
#     !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~m), (~n), (~p), (~q), (~x)) ?
# Unintegrable[((~g)*(~x))^(~q)*log((~f)*(~x)^(~m))*((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))^(~p), (~x)] : nothing)

("3_3_42",
@rule ∫(log((~!f)*((~!g) + (~!h)*(~x))^(~!m))*((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n)))^(~!p),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~h), (~m), (~n), (~p), (~x)) &&
    eq((~e)*(~f) - (~d)*(~g), 0) ?
1⨸(~e)*int_and_subst(log((~f)*((~g)*(~x)⨸(~d))^(~m))*((~a) + (~b)*log((~c)*(~x)^(~n)))^(~p),  (~x), (~x), (~d) + (~e)*(~x), "3_3_42") : nothing)

("3_3_43",
@rule ∫(((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n)))*((~!f) + (~!g)*log((~!c)*((~d) + (~!e)*(~x))^(~!n))),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~n), (~x)) ?
(~x)*((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))*((~f) + (~g)*log((~c)*((~d) + (~e)*(~x))^(~n))) - (~e)*(~n)* ∫(((~x)*((~b)*(~f) + (~a)*(~g) + 2*(~b)*(~g)*log((~c)*((~d) + (~e)*(~x))^(~n))))⨸((~d) + (~e)*(~x)), (~x)) : nothing)

("3_3_44",
@rule ∫(((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n)))^ (~!p)*((~!f) + (~!g)*log((~!h)*((~!i) + (~!j)*(~x))^(~!m))),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~h), (~i), (~j), (~m), (~n), (~x)) &&
    igt((~p), 0) ?
(~x)*((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))^(~p)*((~f) + (~g)*log((~h)*((~i) + (~j)*(~x))^(~m))) - (~g)*(~j)*(~m)*∫((~x)*((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))^(~p)⨸((~i) + (~j)*(~x)), (~x)) - (~b)*(~e)*(~n)*(~p)* ∫((~x)*((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))^((~p) - 1)*((~f) + (~g)*log((~h)*((~i) + (~j)*(~x))^(~m)))⨸((~d) + (~e)*(~x)), (~x)) : nothing)

# ("3_3_45",
# @rule ∫(((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n)))^ (~!p)*((~!f) + (~!g)*log((~!h)*((~!i) + (~!j)*(~x))^(~!m)))^(~!q),(~x)) =>
#     !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~h), (~i), (~j), (~m), (~n), (~p), (~x)) ?
# Unintegrable[((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))^ (~p)*((~f) + (~g)*log((~h)*((~i) + (~j)*(~x))^(~m)))^(~q), (~x)] : nothing)

("3_3_46",
@rule ∫(((~!k) + (~!l)*(~x))^(~!r)*((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n)))^ (~!p)*((~!f) + (~!g)*log((~!h)*((~!i) + (~!j)*(~x))^(~!m))),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~h), (~i), (~j), (~k), (~l), (~n), (~p), (~r), (~x)) &&
    eq((~e)*(~k) - (~d)*(~l), 0) ?
1⨸(~e)*int_and_subst(((~k)*(~x)⨸(~d))^(~r)*((~a) + (~b)*log((~c)*(~x)^(~n)))^ (~p)*((~f) + (~g)*log((~h)*(((~e)*(~i) - (~d)*(~j))⨸(~e) + (~j)*(~x)⨸(~e))^(~m))),  (~x), (~x), (~d) + (~e)*(~x), "3_3_46") : nothing)

("3_3_47",
@rule ∫(((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n)))*((~!f) + (~!g)*log((~!c)*((~d) + (~!e)*(~x))^(~!n)))/(~x),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~n), (~x)) ?
log((~x))*((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))*((~f) + (~g)*log((~c)*((~d) + (~e)*(~x))^(~n))) - (~e)*(~n)* ∫((log((~x))*((~b)*(~f) + (~a)*(~g) + 2*(~b)*(~g)*log((~c)*((~d) + (~e)*(~x))^(~n))))⨸((~d) + (~e)*(~x)), (~x)) : nothing)

("3_3_48",
@rule ∫((~x)^(~!m)*((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n)))*((~!f) + (~!g)*log((~!c)*((~d) + (~!e)*(~x))^(~!n))),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~n), (~m), (~x)) &&
    !eq((~m), -1) ?
(~x)^((~m) + 1)*((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))*((~f) + (~g)*log((~c)*((~d) + (~e)*(~x))^(~n)))⨸((~m) + 1) - (~e)*(~n)⨸((~m) + 1)* ∫(((~x)^((~m) + 1)*((~b)*(~f) + (~a)*(~g) + 2*(~b)*(~g)*log((~c)*((~d) + (~e)*(~x))^(~n))))⨸((~d) + (~e)*(~x)), (~x)) : nothing)

("3_3_49",
@rule ∫(((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n)))*((~!f) + (~!g)*log((~!h)*((~!i) + (~!j)*(~x))^(~!m)))/(~x),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~h), (~i), (~j), (~m), (~n), (~x)) &&
    eq((~e)*(~i) - (~d)*(~j), 0) ?
log((~x))*((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))*((~f) + (~g)*log((~h)*((~i) + (~j)*(~x))^(~m))) - (~e)*(~g)*(~m)*∫(log((~x))*((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))⨸((~d) + (~e)*(~x)), (~x)) - (~b)*(~j)*(~n)*∫(log((~x))*((~f) + (~g)*log((~h)*((~i) + (~j)*(~x))^(~m)))⨸((~i) + (~j)*(~x)), (~x)) : nothing)

("3_3_50",
@rule ∫(log((~a) + (~!b)*(~x))*log((~c) + (~!d)*(~x))/(~x),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~x)) &&
    !eq((~b)*(~c) - (~a)*(~d), 0) ?
log(-(~b)*(~x)⨸(~a))*log((~a) + (~b)*(~x))*log((~c) + (~d)*(~x)) - 1⨸2*(log(-(~b)*(~x)⨸(~a)) - log(-(~d)*(~x)⨸(~c)))*(log((~a) + (~b)*(~x)) + log((~a)*((~c) + (~d)*(~x))⨸((~c)*((~a) + (~b)*(~x)))))^2 + 1⨸2*(log(-(~b)*(~x)⨸(~a)) - log(-((~b)*(~c) - (~a)*(~d))*(~x)⨸((~a)*((~c) + (~d)*(~x)))) + log(((~b)*(~c) - (~a)*(~d))⨸((~b)*((~c) + (~d)*(~x)))))* log((~a)*((~c) + (~d)*(~x))⨸((~c)*((~a) + (~b)*(~x))))^2 + (log((~c) + (~d)*(~x)) - log((~a)*((~c) + (~d)*(~x))⨸((~c)*((~a) + (~b)*(~x)))))* PolyLog.reli(2, 1 + (~b)*(~x)⨸(~a)) + (log((~a) + (~b)*(~x)) + log((~a)*((~c) + (~d)*(~x))⨸((~c)*((~a) + (~b)*(~x)))))* PolyLog.reli(2, 1 + (~d)*(~x)⨸(~c)) - log((~a)*((~c) + (~d)*(~x))⨸((~c)*((~a) + (~b)*(~x))))* PolyLog.reli(2, (~d)*((~a) + (~b)*(~x))⨸((~b)*((~c) + (~d)*(~x)))) + log((~a)*((~c) + (~d)*(~x))⨸((~c)*((~a) + (~b)*(~x))))* PolyLog.reli(2, (~c)*((~a) + (~b)*(~x))⨸((~a)*((~c) + (~d)*(~x)))) - PolyLog.reli(3, 1 + (~b)*(~x)⨸(~a)) - PolyLog.reli(3, 1 + (~d)*(~x)⨸(~c)) - PolyLog.reli(3, (~d)*((~a) + (~b)*(~x))⨸((~b)*((~c) + (~d)*(~x)))) + PolyLog.reli(3, (~c)*((~a) + (~b)*(~x))⨸((~a)*((~c) + (~d)*(~x)))) : nothing)

("3_3_51",
@rule ∫(log((~v))*log((~w))/(~x),(~x)) =>
    linear((~v), (~w), (~x)) &&
    !(linear_without_simplify((~v), (~w), (~x))) ?
∫(log(expand_to_sum((~v), (~x)))*log(expand_to_sum((~w), (~x)))⨸(~x), (~x)) : nothing)

("3_3_52",
@rule ∫(log((~!c)*((~d) + (~!e)*(~x))^(~!n))*log((~!h)*((~!i) + (~!j)*(~x))^(~!m))/(~x),(~x)) =>
    !contains_var((~c), (~d), (~e), (~h), (~i), (~j), (~m), (~n), (~x)) &&
    !eq((~e)*(~i) - (~d)*(~j), 0) &&
    !eq((~i) + (~j)*(~x), (~h)*((~i) + (~j)*(~x))^(~m)) ?
(~m)*∫(log((~i) + (~j)*(~x))*log((~c)*((~d) + (~e)*(~x))^(~n))⨸(~x), (~x)) - ((~m)*log((~i) + (~j)*(~x)) - log((~h)*((~i) + (~j)*(~x))^(~m)))* ∫(log((~c)*((~d) + (~e)*(~x))^(~n))⨸(~x), (~x)) : nothing)

("3_3_53",
@rule ∫(((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n)))*((~f) + (~!g)*log((~!h)*((~!i) + (~!j)*(~x))^(~!m)))/(~x),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~h), (~i), (~j), (~m), (~n), (~x)) &&
    !eq((~e)*(~i) - (~d)*(~j), 0) ?
(~f)*∫(((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))⨸(~x), (~x)) + (~g)*∫(log((~h)*((~i) + (~j)*(~x))^(~m))*((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))⨸(~x), (~x)) : nothing)

("3_3_54",
@rule ∫((~x)^(~!r)*((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n)))^ (~!p)*((~!f) + (~!g)*log((~!h)*((~!i) + (~!j)*(~x))^(~!m))),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~h), (~i), (~j), (~m), (~n), (~x)) &&
    igt((~p), 0) &&
    ext_isinteger((~r)) &&
    (
        eq((~p), 1) ||
        gt((~r), 0)
    ) &&
    !eq((~r), -1) ?
(~x)^((~r) + 1)*((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))^ (~p)*((~f) + (~g)*log((~h)*((~i) + (~j)*(~x))^(~m)))⨸((~r) + 1) - (~g)*(~j)*(~m)⨸((~r) + 1)* ∫((~x)^((~r) + 1)*((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))^(~p)⨸((~i) + (~j)*(~x)), (~x)) - (~b)*(~e)*(~n)*(~p)⨸((~r) + 1)* ∫((~x)^((~r) + 1)*((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))^((~p) - 1)*((~f) + (~g)*log((~h)*((~i) + (~j)*(~x))^(~m)))⨸((~d) + (~e)*(~x)), (~x)) : nothing)

("3_3_55",
@rule ∫(((~k) + (~!l)*(~x))^ (~!r)*((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n)))*((~!f) + (~!g)*log((~!h)*((~!i) + (~!j)*(~x))^(~!m))),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~h), (~i), (~j), (~k), (~l), (~m), (~n), (~x)) &&
    ext_isinteger((~r)) ?
1⨸(~l)*int_and_subst((~x)^(~r)*((~a) + (~b)*log((~c)*(-((~e)*(~k) - (~d)*(~l))⨸(~l) + (~e)*(~x)⨸(~l))^(~n)))*((~f) + (~g)*log((~h)*(-((~j)*(~k) - (~i)*(~l))⨸(~l) + (~j)*(~x)⨸(~l))^(~m))),  (~x), (~x), (~k) + (~l)*(~x), "3_3_55") : nothing)

# ("3_3_56",
# @rule ∫(((~!k) + (~!l)*(~x))^(~!r)*((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n)))^ (~!p)*((~!f) + (~!g)*log((~!h)*((~!i) + (~!j)*(~x))^(~!m)))^(~!q),(~x)) =>
#     !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~h), (~i), (~j), (~k), (~l), (~m), (~n), (~p), (~q), (~r), (~x)) ?
# Unintegrable[((~k) + (~l)*(~x))^(~r)*((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n)))^ (~p)*((~f) + (~g)*log((~h)*((~i) + (~j)*(~x))^(~m)))^(~q), (~x)] : nothing)

("3_3_57",
@rule ∫(PolyLog.reli((~k), (~h) + (~!i)*(~x))*((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n)))^ (~!p)/((~f) + (~!g)*(~x)),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~h), (~i), (~k), (~n), (~x)) &&
    eq((~e)*(~f) - (~d)*(~g), 0) &&
    eq((~g)*(~h) - (~f)*(~i), 0) &&
    igt((~p), 0) ?
1⨸(~g)*int_and_subst(PolyLog.reli((~k),  (~h)*(~x)⨸(~d))*((~a) + (~b)*log((~c)*(~x)^(~n)))^(~p)⨸(~x), (~x), (~x), (~d) + (~e)*(~x), "3_3_57") : nothing)

("3_3_58",
@rule ∫((~!Px)* (~F)[(~!f)*((~!g) + (~!h)*(~x))]*((~!a) + (~!b)*log((~!c)*((~d) + (~!e)*(~x))^(~!n))),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~h), (~n), (~x)) &&
    poly((~Px), (~x)) &&
    in( (~F), [asin, acos, atan, acot, asinh, acosh, atanh, acoth]) ?
dist(((~a) + (~b)*log((~c)*((~d) + (~e)*(~x))^(~n))), ∫((~Px)*(~F)[(~f)*((~g) + (~h)*(~x))], (~x)), (~x)) - (~b)*(~e)*(~n)*∫(ext_simplify(∫((~Px)*(~F)[(~f)*((~g) + (~h)*(~x))], (~x))⨸((~d) + (~e)*(~x)), (~x)), (~x)) : nothing)

# Nested conditions found, not translating rule:
#Int[u_.*(a_. + b_.*Log[c_.*v_^n_.])^p_., x_Symbol] := Int[u*(a + b*Log[c*ExpandToSum[v, x]^n])^p, x] /; FreeQ[{a, b, c, n, p}, x] && LinearQ[v, x] && Not[LinearMatchQ[v, x]] && Not[EqQ[n, 1] && MatchQ[c*v, e_.*(f_ + g_.*x) /; FreeQ[{e, f, g}, x]]]

# i dont like doing a integral in a condition
# ("3_3_60",
# @rule ∫((~!u)*((~!a) + (~!b)*log((~!c)*((~!d)*((~!e) + (~!f) (~x))^(~!m))^(~n)))^(~!p),(~x)) =>
#     !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~m), (~n), (~p), (~x)) &&
#     !(ext_isinteger((~n))) &&
#     !(
#         eq((~d), 1) &&
#         eq((~m), 1)
#     ) &&
#     contains_int(IntHide[(~u)*((~a) + (~b)*log((~c)*(~d)^(~n)*((~e) + (~f)*(~x))^((~m)*(~n))))^(~p), (~x)]) ?
# int_and_subst((~u)*((~a) + (~b)*log((~c)*(~d)^(~n)*((~e) + (~f)*(~x))^((~m)*(~n))))^(~p),  (~x), (~c)*(~d)^(~n)*((~e) + (~f)*(~x))^((~m)*(~n)), (~c)*((~d)*((~e) + (~f)*(~x))^(~m))^(~n), "3_3_60") : nothing)

# ("3_3_61",
# @rule ∫(AFx_*((~!a) + (~!b)*log((~!c)*((~!d)*((~!e) + (~!f) (~x))^(~!m))^(~n)))^(~!p),(~x)) =>
#     !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~m), (~n), (~p), (~x)) &&
#     algebraic_function(AFx, (~x), True) ?
# Unintegrable[AFx*((~a) + (~b)*log((~c)*((~d)*((~e) + (~f)*(~x))^(~m))^(~n)))^(~p), (~x)] : nothing)


]
