file_rules = [
# (* ::Subsection::Closed:: *) 
# (* 2.1 (c+d x)^m (a+b (F^(g (e+f x)))^n)^p *) 
("2_1_1",
@rule ∫(((~!c) + (~!d)*(~x))^(~!m)*((~!b)*(~F)^((~!g)*((~!e) + (~!f)*(~x))))^(~!n),(~x)) =>
    !contains_var((~F), (~b), (~c), (~d), (~e), (~f), (~g), (~n), (~x)) &&
    gt((~m), 0) &&
    ext_isinteger(2*(~m)) &&
    !(USE_GAMMA) ?
((~c) + (~d)*(~x))^(~m)*((~b)*(~F)^((~g)*((~e) + (~f)*(~x))))^(~n)⨸((~f)*(~g)*(~n)*log((~F))) - (~d)*(~m)⨸((~f)*(~g)*(~n)*log((~F)))* ∫(((~c) + (~d)*(~x))^((~m) - 1)*((~b)*(~F)^((~g)*((~e) + (~f)*(~x))))^(~n), (~x)) : nothing)

("2_1_2",
@rule ∫(((~!c) + (~!d)*(~x))^(~m)*((~!b)*(~F)^((~!g)*((~!e) + (~!f)*(~x))))^(~!n),(~x)) =>
    !contains_var((~F), (~b), (~c), (~d), (~e), (~f), (~g), (~n), (~x)) &&
    lt((~m), -1) &&
    ext_isinteger(2*(~m)) &&
    !(USE_GAMMA) ?
((~c) + (~d)*(~x))^((~m) + 1)*((~b)*(~F)^((~g)*((~e) + (~f)*(~x))))^(~n)⨸((~d)*((~m) + 1)) - (~f)*(~g)*(~n)*log((~F))⨸((~d)*((~m) + 1))* ∫(((~c) + (~d)*(~x))^((~m) + 1)*((~b)*(~F)^((~g)*((~e) + (~f)*(~x))))^(~n), (~x)) : nothing)

("2_1_3",
@rule ∫((~F)^((~!g)*((~!e) + (~!f)*(~x)))/((~!c) + (~!d)*(~x)),(~x)) =>
    !contains_var((~F), (~c), (~d), (~e), (~f), (~g), (~x)) &&
    !(USE_GAMMA) ?
(~F)^((~g)*((~e) - (~c)*(~f)⨸(~d)))⨸(~d)*SymbolicUtils.expinti((~f)*(~g)*((~c) + (~d)*(~x))*log((~F))⨸(~d)) : nothing)

("2_1_4",
@rule ∫(((~!c) + (~!d)*(~x))^(~!m)*(~F)^((~!g)*((~!e) + (~!f)*(~x))),(~x)) =>
    !contains_var((~F), (~c), (~d), (~e), (~f), (~g), (~x)) &&
    ext_isinteger((~m)) ?
(-(~d))^(~m)*(~F)^((~g)*((~e) - (~c)*(~f)⨸(~d)))⨸((~f)^((~m) + 1)*(~g)^((~m) + 1)*log((~F))^((~m) + 1))* SymbolicUtils.gamma((~m) + 1, -(~f)*(~g)*log((~F))⨸(~d)*((~c) + (~d)*(~x))) : nothing)

("2_1_5",
@rule ∫((~F)^((~!g)*((~!e) + (~!f)*(~x)))/sqrt((~!c) + (~!d)*(~x)),(~x)) =>
    !contains_var((~F), (~c), (~d), (~e), (~f), (~g), (~x)) &&
    !(USE_GAMMA) ?
2⨸(~d)*int_and_subst((~F)^((~g)*((~e) - (~c)*(~f)⨸(~d)) + (~f)*(~g)*(~x)^2⨸(~d)),  (~x), (~x), sqrt((~c) + (~d)*(~x)), "2_1_5") : nothing)

("2_1_6",
@rule ∫(((~!c) + (~!d)*(~x))^(~m)*(~F)^((~!g)*((~!e) + (~!f)*(~x))),(~x)) =>
    !contains_var((~F), (~c), (~d), (~e), (~f), (~g), (~m), (~x)) &&
    !(ext_isinteger((~m))) ?
-(~F)^((~g)*((~e) - (~c)*(~f)⨸(~d)))*((~c) + (~d)*(~x))^ fracpart( (~m))⨸((~d)*(-(~f)*(~g)*log((~F))⨸(~d))^(intpart((~m)) + 1)*(-(~f)*(~g)* log((~F))*((~c) + (~d)*(~x))⨸(~d))^fracpart((~m)))* SymbolicUtils.gamma((~m) + 1, (-(~f)*(~g)*log((~F))⨸(~d))*((~c) + (~d)*(~x))) : nothing)

("2_1_7",
@rule ∫(((~!c) + (~!d)*(~x))^(~!m)*((~!b)*(~F)^((~!g)*((~!e) + (~!f)*(~x))))^(~n),(~x)) =>
    !contains_var((~F), (~b), (~c), (~d), (~e), (~f), (~g), (~m), (~n), (~x)) ?
((~b)*(~F)^((~g)*((~e) + (~f)*(~x))))^(~n)⨸(~F)^((~g)*(~n)*((~e) + (~f)*(~x)))* ∫(((~c) + (~d)*(~x))^(~m)*(~F)^((~g)*(~n)*((~e) + (~f)*(~x))), (~x)) : nothing)

("2_1_8",
@rule ∫(((~!c) + (~!d)*(~x))^(~!m)*((~a) + (~!b)*((~F)^((~!g)*((~!e) + (~!f)*(~x))))^(~!n))^(~!p),(~x)) =>
    !contains_var((~F), (~a), (~b), (~c), (~d), (~e), (~f), (~g), (~m), (~n), (~x)) &&
    igt((~p), 0) ?
∫(ext_expand(((~c) + (~d)*(~x))^(~m), ((~a) + (~b)*((~F)^((~g)*((~e) + (~f)*(~x))))^(~n))^(~p), (~x)), (~x)) : nothing)

("2_1_9",
@rule ∫(((~!c) + (~!d)*(~x))^(~!m)/((~a) + (~!b)*((~F)^((~!g)*((~!e) + (~!f)*(~x))))^(~!n)),(~x)) =>
    !contains_var((~F), (~a), (~b), (~c), (~d), (~e), (~f), (~g), (~n), (~x)) &&
    igt((~m), 0) ?
((~c) + (~d)*(~x))^((~m) + 1)⨸((~a)*(~d)*((~m) + 1)) - (~b)⨸(~a)*∫(((~c) + (~d)*(~x))^ (~m)*((~F)^((~g)*((~e) + (~f)*(~x))))^(~n)⨸((~a) + (~b)*((~F)^((~g)*((~e) + (~f)*(~x))))^(~n)), (~x)) : nothing)

# (* Int[(c_.+d_.*x_)^m_./(a_+b_.*(F_^(g_.*(e_.+f_.*x_)))^n_.),x_Symbol]  := -(c+d*x)^m/(a*f*g*n*Log[F])*Log[1+a/(b*(F^(g*(e+f*x)))^n)] + d*m/(a*f*g*n*Log[F])*Int[(c+d*x)^(m-1)*Log[1+a/(b*(F^(g*(e+f*x)))^n) ],x] /; FreeQ[{F,a,b,c,d,e,f,g,n},x] && IGtQ[m,0] *) 
("2_1_10",
@rule ∫(((~!c) + (~!d)*(~x))^(~!m)*((~a) + (~!b)*((~F)^((~!g)*((~!e) + (~!f)*(~x))))^(~!n))^(~p),(~x)) =>
    !contains_var((~F), (~a), (~b), (~c), (~d), (~e), (~f), (~g), (~n), (~x)) &&
    ilt((~p), 0) &&
    igt((~m), 0) ?
1⨸(~a)*∫(((~c) + (~d)*(~x))^(~m)*((~a) + (~b)*((~F)^((~g)*((~e) + (~f)*(~x))))^(~n))^((~p) + 1), (~x)) - (~b)⨸(~a)* ∫(((~c) + (~d)*(~x))^(~m)*((~F)^((~g)*((~e) + (~f)*(~x))))^(~n)*((~a) + (~b)*((~F)^((~g)*((~e) + (~f)*(~x))))^(~n))^(~p), (~x)) : nothing)

# TODO find definition of Dist and NormalizePowerOfLinear functinos.... where are they!!!!!??????
# ("2_1_11",
# @rule ∫(((~!c) + (~!d)*(~x))^(~!m)*((~a) + (~!b)*((~F)^((~!g)*((~!e) + (~!f)*(~x))))^(~!n))^(~p),(~x)) =>
#     !contains_var((~F), (~a), (~b), (~c), (~d), (~e), (~f), (~g), (~n), (~x)) &&
#     igt((~m), 0) &&
#     lt((~p), -1) ?
# Dist[((~c) + (~d)*(~x))^(~m), IntHide[((~a) + (~b)*((~F)^((~g)*((~e) + (~f)*(~x))))^(~n))^(~p), (~x)], (~x)] - (~d)*(~m)*∫(((~c) + (~d)*(~x))^((~m) - 1)*IntHide[((~a) + (~b)*((~F)^((~g)*((~e) + (~f)*(~x))))^(~n))^(~p), (~x)), (~x)] : nothing)

# ("2_1_12",
# @rule ∫((~u)^(~!m)*((~!a) + (~!b)*((~F)^((~!g)*(~v)))^(~!n))^(~!p),(~x)) =>
#     !contains_var((~F), (~a), (~b), (~g), (~n), (~p), (~x)) &&
#     linear((~v), (~x)) &&
#     PowerOflinear((~u), (~x)) &&
#     !(
#         linear_without_simplify((~v), (~x)) &&
#         PowerOflinear_without_simplify((~u), (~x))
#     ) &&
#     ext_isinteger((~m)) ?
# ∫(NormalizePowerOfLinear[(~u), (~x))^ (~m)*((~a) + (~b)*((~F)^((~g)*expand_to_sum((~v), (~x)]))^(~n))^(~p), (~x)) : nothing)
# 
# ("2_1_13",
# @rule ∫((~u)^(~!m)*((~!a) + (~!b)*((~F)^((~!g)*(~v)))^(~!n))^(~!p),(~x)) =>
#     !contains_var((~F), (~a), (~b), (~g), (~m), (~n), (~p), (~x)) &&
#     linear((~v), (~x)) &&
#     PowerOflinear((~u), (~x)) &&
#     !(
#         linear_without_simplify((~v), (~x)) &&
#         PowerOflinear_without_simplify((~u), (~x))
#     ) &&
#     !(ext_isinteger((~m))) ?
# Module[{(~uu) = NormalizePowerOfLinear[(~u), (~x)], (~z)}, (~z) = (~If)[PowerQ[(~uu)] && FreeQ[(~uu)[[2]], (~x)], (~uu)[[1]]^((~m)*(~uu)[[2]]), (~uu)^(~m)]; (~uu)^(~m)⨸(~z)*∫((~z)*((~a) + (~b)*((~F)^((~g)*expand_to_sum((~v), (~x))))^(~n))^(~p), (~x))] : nothing)
# 
# ("2_1_14",
# @rule ∫(((~!c) + (~!d)*(~x))^(~!m)*((~a) + (~!b)*((~F)^((~!g)*((~!e) + (~!f)*(~x))))^(~!n))^(~!p),(~x)) =>
#     !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~m), (~n), (~p), (~x)) ?
# Unintegrable[((~c) + (~d)*(~x))^(~m)*((~a) + (~b)*((~F)^((~g)*((~e) + (~f)*(~x))))^(~n))^(~p), (~x)] : nothing)

]
