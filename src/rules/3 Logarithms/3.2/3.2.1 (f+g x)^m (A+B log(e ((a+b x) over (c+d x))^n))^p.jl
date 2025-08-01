file_rules = [
#(* ::Subsection::Closed:: *)
#(* 3.2.1 (f+g x)^m (A+B log(e ((a+b x) over (c+d x))^n))^p *)
("3_2_1_1",
@rule ∫(((~!A) + (~!B)*log((~!e)*(((~!a) + (~!b)*(~x))/((~!c) + (~!d)*(~x)))^(~!n)))^(~!p),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~A), (~B), (~n), (~x)) &&
    !eq((~b)*(~c) - (~a)*(~d), 0) &&
    igt((~p), 0) ?
((~a) + (~b)*(~x))*((~A) + (~B)*log((~e)*(((~a) + (~b)*(~x))⨸((~c) + (~d)*(~x)))^(~n)))^(~p)⨸(~b) - (~B)*(~n)*(~p)*((~b)*(~c) - (~a)*(~d))⨸(~b)* ∫(((~A) + (~B)*log((~e)*(((~a) + (~b)*(~x))⨸((~c) + (~d)*(~x)))^(~n)))^((~p) - 1)⨸((~c) + (~d)*(~x)), (~x)) : nothing)

("3_2_1_2",
@rule ∫(((~!A) + (~!B)*log((~!e)*((~!a) + (~!b)*(~x))^(~!n)*((~!c) + (~!d)*(~x))^(~mn)))^(~!p),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~A), (~B), (~n), (~x)) &&
    eq((~n) + (~mn), 0) &&
    !eq((~b)*(~c) - (~a)*(~d), 0) &&
    igt((~p), 0) ?
((~a) + (~b)*(~x))*((~A) + (~B)*log((~e)*((~a) + (~b)*(~x))^(~n)⨸((~c) + (~d)*(~x))^(~n)))^(~p)⨸(~b) - (~B)*(~n)*(~p)*((~b)*(~c) - (~a)*(~d))⨸(~b)* ∫(((~A) + (~B)*log((~e)*((~a) + (~b)*(~x))^(~n)⨸((~c) + (~d)*(~x))^(~n)))^((~p) - 1)⨸((~c) + (~d)*(~x)), (~x)) : nothing)

#(* Int[(A_.+B_.*Log[e_.*((a_.+b_.*x_)^n1_.*(c_.+d_.*x_)^n2_)^n_.])^p_. ,x_Symbol] := (a+b*x)*(A+B*Log[e*((a+b*x)^n1/(c+d*x)^n1)^n])^p/b - B*n*p*(b*c-a*d)/b*Int[(A+B*Log[e*((a+b*x)^n1/(c+d*x)^n1)^n])^(p-1)/( c+d*x),x] /; FreeQ[{a,b,c,d,e,A,B,n},x] && EqQ[n1+n2,0] && GtQ[n1,0] && (EqQ[n1,1]  || EqQ[n,1]) && NeQ[b*c-a*d,0] && IGtQ[p,0] *)
# ("3_2_1_3",
# @rule ∫(((~!A) + (~!B)*log((~!e)*(((~!a) + (~!b)*(~x))/((~!c) + (~!d)*(~x)))^(~!n)))^(~p),(~x)) =>
#     !contains_var((~a), (~b), (~c), (~d), (~e), (~A), (~B), (~n), (~p), (~x)) ?
# Unintegrable[((~A) + (~B)*log((~e)*(((~a) + (~b)*(~x))⨸((~c) + (~d)*(~x)))^(~n)))^(~p), (~x)] : nothing)

# ("3_2_1_4",
# @rule ∫(((~!A) + (~!B)*log((~!e)*((~!a) + (~!b)*(~x))^(~!n)*((~!c) + (~!d)*(~x))^(~mn)))^(~p),(~x)) =>
#     !contains_var((~a), (~b), (~c), (~d), (~e), (~A), (~B), (~n), (~p), (~x)) &&
#     eq((~n) + (~mn), 0) ?
# Unintegrable[((~A) + (~B)*log((~e)*((~a) + (~b)*(~x))^(~n)⨸((~c) + (~d)*(~x))^(~n)))^(~p), (~x)] : nothing)

("3_2_1_5",
@rule ∫(((~!A) + (~!B)*log((~!e)*((~u)/(~v))^(~!n)))^(~!p),(~x)) =>
    !contains_var((~e), (~A), (~B), (~n), (~p), (~x)) &&
    linear((~u), (~v), (~x)) &&
    !(linear_without_simplify((~u), (~v), (~x))) ?
∫(((~A) + (~B)*log((~e)*(expand_to_sum((~u), (~x))⨸expand_to_sum((~v), (~x)))^(~n)))^(~p), (~x)) : nothing)

("3_2_1_6",
@rule ∫(((~!A) + (~!B)*log((~!e)*(~u)^(~!n)*(~v)^(~mn)))^(~!p),(~x)) =>
    !contains_var((~e), (~A), (~B), (~n), (~p), (~x)) &&
    eq((~n) + (~mn), 0) &&
    igt((~n), 0) &&
    linear((~u), (~v), (~x)) &&
    !(linear_without_simplify((~u), (~v), (~x))) ?
∫(((~A) + (~B)*log((~e)*expand_to_sum((~u), (~x))^(~n)⨸expand_to_sum((~v), (~x))^(~n)))^(~p), (~x)) : nothing)

("3_2_1_7",
@rule ∫(((~!A) + (~!B)*log((~!e)*(((~!a) + (~!b)*(~x))/((~!c) + (~!d)*(~x)))^(~!n)))/((~!f) + (~!g)*(~x)),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~A), (~B), (~n), (~x)) &&
    !eq((~b)*(~c) - (~a)*(~d), 0) &&
    eq((~b)*(~f) - (~a)*(~g), 0) ?
-log(-((~b)*(~c) - (~a)*(~d))⨸((~d)*((~a) + (~b)*(~x))))*((~A) + (~B)*log((~e)*(((~a) + (~b)*(~x))⨸((~c) + (~d)*(~x)))^(~n)))⨸(~g) + (~B)*(~n)*((~b)*(~c) - (~a)*(~d))⨸(~g)* ∫(log(-((~b)*(~c) - (~a)*(~d))⨸((~d)*((~a) + (~b)*(~x))))⨸(((~a) + (~b)*(~x))*((~c) + (~d)*(~x))), (~x)) : nothing)

("3_2_1_8",
@rule ∫(((~!A) + (~!B)*log((~!e)*((~!a) + (~!b)*(~x))^(~!n)*((~!c) + (~!d)*(~x))^(~mn)))/((~!f) + (~!g)*(~x)),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~A), (~B), (~n), (~x)) &&
    eq((~n) + (~mn), 0) &&
    !eq((~b)*(~c) - (~a)*(~d), 0) &&
    eq((~b)*(~f) - (~a)*(~g), 0) ?
-log(-((~b)*(~c) - (~a)*(~d))⨸((~d)*((~a) + (~b)*(~x))))*((~A) + (~B)*log((~e)*((~a) + (~b)*(~x))^(~n)⨸((~c) + (~d)*(~x))^(~n)))⨸(~g) + (~B)*(~n)*((~b)*(~c) - (~a)*(~d))⨸(~g)* ∫(log(-((~b)*(~c) - (~a)*(~d))⨸((~d)*((~a) + (~b)*(~x))))⨸(((~a) + (~b)*(~x))*((~c) + (~d)*(~x))), (~x)) : nothing)

("3_2_1_9",
@rule ∫(((~!A) + (~!B)*log((~!e)*(((~!a) + (~!b)*(~x))/((~!c) + (~!d)*(~x)))^(~!n)))/((~!f) + (~!g)*(~x)),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~A), (~B), (~n), (~x)) &&
    !eq((~b)*(~c) - (~a)*(~d), 0) &&
    eq((~d)*(~f) - (~c)*(~g), 0) ?
-log(((~b)*(~c) - (~a)*(~d))⨸((~b)*((~c) + (~d)*(~x))))*((~A) + (~B)*log((~e)*(((~a) + (~b)*(~x))⨸((~c) + (~d)*(~x)))^(~n)))⨸(~g) + (~B)*(~n)*((~b)*(~c) - (~a)*(~d))⨸(~g)* ∫(log(((~b)*(~c) - (~a)*(~d))⨸((~b)*((~c) + (~d)*(~x))))⨸(((~a) + (~b)*(~x))*((~c) + (~d)*(~x))), (~x)) : nothing)

("3_2_1_10",
@rule ∫(((~!A) + (~!B)*log((~!e)*((~!a) + (~!b)*(~x))^(~!n)*((~!c) + (~!d)*(~x))^(~mn)))/((~!f) + (~!g)*(~x)),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~A), (~B), (~n), (~x)) &&
    eq((~n) + (~mn), 0) &&
    !eq((~b)*(~c) - (~a)*(~d), 0) &&
    eq((~d)*(~f) - (~c)*(~g), 0) ?
-log(((~b)*(~c) - (~a)*(~d))⨸((~b)*((~c) + (~d)*(~x))))*((~A) + (~B)*log((~e)*((~a) + (~b)*(~x))^(~n)⨸((~c) + (~d)*(~x))^(~n)))⨸(~g) + (~B)*(~n)*((~b)*(~c) - (~a)*(~d))⨸(~g)* ∫(log(((~b)*(~c) - (~a)*(~d))⨸((~b)*((~c) + (~d)*(~x))))⨸(((~a) + (~b)*(~x))*((~c) + (~d)*(~x))), (~x)) : nothing)

("3_2_1_11",
@rule ∫(((~!A) + (~!B)*log((~!e)*(((~!a) + (~!b)*(~x))/((~!c) + (~!d)*(~x)))^(~!n)))/((~!f) + (~!g)*(~x)),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~A), (~B), (~n), (~x)) &&
    !eq((~b)*(~c) - (~a)*(~d), 0) ?
log((~f) + (~g)*(~x))*((~A) + (~B)*log((~e)*(((~a) + (~b)*(~x))⨸((~c) + (~d)*(~x)))^(~n)))⨸(~g) - (~b)*(~B)*(~n)⨸(~g)*∫(log((~f) + (~g)*(~x))⨸((~a) + (~b)*(~x)), (~x)) + (~B)*(~d)*(~n)⨸(~g)*∫(log((~f) + (~g)*(~x))⨸((~c) + (~d)*(~x)), (~x)) : nothing)

("3_2_1_12",
@rule ∫(((~!A) + (~!B)*log((~!e)*((~!a) + (~!b)*(~x))^(~!n)*((~!c) + (~!d)*(~x))^(~mn)))/((~!f) + (~!g)*(~x)),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~A), (~B), (~n), (~x)) &&
    eq((~n) + (~mn), 0) &&
    !eq((~b)*(~c) - (~a)*(~d), 0) ?
log((~f) + (~g)*(~x))*((~A) + (~B)*log((~e)*((~a) + (~b)*(~x))^(~n)⨸((~c) + (~d)*(~x))^(~n)))⨸(~g) - (~b)*(~B)*(~n)⨸(~g)*∫(log((~f) + (~g)*(~x))⨸((~a) + (~b)*(~x)), (~x)) + (~B)*(~d)*(~n)⨸(~g)*∫(log((~f) + (~g)*(~x))⨸((~c) + (~d)*(~x)), (~x)) : nothing)

("3_2_1_13",
@rule ∫(((~!f) + (~!g)*(~x))^ (~!m)*((~!A) + (~!B)*log((~!e)*(((~!a) + (~!b)*(~x))/((~!c) + (~!d)*(~x)))^(~!n))),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~A), (~B), (~m), (~n), (~x)) &&
    !eq((~b)*(~c) - (~a)*(~d), 0) &&
    !eq((~m), -1) &&
    !eq((~m), -2) ?
((~f) + (~g)*(~x))^((~m) + 1)*((~A) + (~B)*log((~e)*(((~a) + (~b)*(~x))⨸((~c) + (~d)*(~x)))^(~n)))⨸((~g)*((~m) + 1)) - (~B)*(~n)*((~b)*(~c) - (~a)*(~d))⨸((~g)*((~m) + 1))* ∫(((~f) + (~g)*(~x))^((~m) + 1)⨸(((~a) + (~b)*(~x))*((~c) + (~d)*(~x))), (~x)) : nothing)

("3_2_1_14",
@rule ∫(((~!f) + (~!g)*(~x))^ (~!m)*((~!A) + (~!B)*log((~!e)*((~!a) + (~!b)*(~x))^(~!n)*((~!c) + (~!d)*(~x))^(~mn))),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~A), (~B), (~m), (~n), (~x)) &&
    eq((~n) + (~mn), 0) &&
    !eq((~b)*(~c) - (~a)*(~d), 0) &&
    !eq((~m), -1) &&
    !(
        eq((~m), -2) &&
        ext_isinteger((~n))
    ) ?
((~f) + (~g)*(~x))^((~m) + 1)*((~A) + (~B)*log((~e)*((~a) + (~b)*(~x))^(~n)⨸((~c) + (~d)*(~x))^(~n)))⨸((~g)*((~m) + 1)) - (~B)*(~n)*((~b)*(~c) - (~a)*(~d))⨸((~g)*((~m) + 1))* ∫(((~f) + (~g)*(~x))^((~m) + 1)⨸(((~a) + (~b)*(~x))*((~c) + (~d)*(~x))), (~x)) : nothing)

("3_2_1_15",
@rule ∫(((~!f) + (~!g)*(~x))^ (~!m)*((~!A) + (~!B)*log((~!e)*(((~!a) + (~!b)*(~x))/((~!c) + (~!d)*(~x)))^(~!n)))^(~!p),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~A), (~B), (~n), (~x)) &&
    !eq((~b)*(~c) - (~a)*(~d), 0) &&
    ext_isinteger((~m), (~p)) &&
    eq((~b)*(~f) - (~a)*(~g), 0) &&
    (
        gt((~p), 0) ||
        lt((~m), -1)
    ) ?
((~b)*(~c) - (~a)*(~d))^((~m) + 1)*((~g)⨸(~b))^(~m)* int_and_subst((~x)^(~m)*((~A) + (~B)*log((~e)*(~x)^(~n)))^(~p)⨸((~b) - (~d)*(~x))^((~m) + 2),  (~x), (~x), ((~a) + (~b)*(~x))⨸((~c) + (~d)*(~x)), "3_2_1_15") : nothing)

("3_2_1_16",
@rule ∫(((~!f) + (~!g)*(~x))^ (~!m)*((~!A) + (~!B)*log((~!e)*((~!a) + (~!b)*(~x))^(~!n)*((~!c) + (~!d)*(~x))^(~mn)))^ (~!p),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~A), (~B), (~n), (~x)) &&
    eq((~n) + (~mn), 0) &&
    igt((~n), 0) &&
    !eq((~b)*(~c) - (~a)*(~d), 0) &&
    ext_isinteger((~m), (~p)) &&
    eq((~b)*(~f) - (~a)*(~g), 0) &&
    (
        gt((~p), 0) ||
        lt((~m), -1)
    ) ?
((~b)*(~c) - (~a)*(~d))^((~m) + 1)*((~g)⨸(~b))^(~m)* int_and_subst((~x)^(~m)*((~A) + (~B)*log((~e)*(~x)^(~n)))^(~p)⨸((~b) - (~d)*(~x))^((~m) + 2),  (~x), (~x), ((~a) + (~b)*(~x))⨸((~c) + (~d)*(~x)), "3_2_1_16") : nothing)

("3_2_1_17",
@rule ∫(((~!f) + (~!g)*(~x))^ (~!m)*((~!A) + (~!B)*log((~!e)*(((~!a) + (~!b)*(~x))/((~!c) + (~!d)*(~x)))^(~!n)))^(~!p),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~A), (~B), (~n), (~x)) &&
    !eq((~b)*(~c) - (~a)*(~d), 0) &&
    ext_isinteger((~m), (~p)) &&
    eq((~d)*(~f) - (~c)*(~g), 0) &&
    (
        gt((~p), 0) ||
        lt((~m), -1)
    ) ?
((~b)*(~c) - (~a)*(~d))^((~m) + 1)*((~g)⨸(~d))^(~m)* int_and_subst(((~A) + (~B)*log((~e)*(~x)^(~n)))^(~p)⨸((~b) - (~d)*(~x))^((~m) + 2),  (~x), (~x), ((~a) + (~b)*(~x))⨸((~c) + (~d)*(~x)), "3_2_1_17") : nothing)

("3_2_1_18",
@rule ∫(((~!f) + (~!g)*(~x))^ (~!m)*((~!A) + (~!B)*log((~!e)*((~!a) + (~!b)*(~x))^(~!n)*((~!c) + (~!d)*(~x))^(~mn)))^ (~!p),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~A), (~B), (~n), (~x)) &&
    eq((~n) + (~mn), 0) &&
    igt((~n), 0) &&
    !eq((~b)*(~c) - (~a)*(~d), 0) &&
    ext_isinteger((~m), (~p)) &&
    eq((~d)*(~f) - (~c)*(~g), 0) &&
    (
        gt((~p), 0) ||
        lt((~m), -1)
    ) ?
((~b)*(~c) - (~a)*(~d))^((~m) + 1)*((~g)⨸(~d))^(~m)* int_and_subst(((~A) + (~B)*log((~e)*(~x)^(~n)))^(~p)⨸((~b) - (~d)*(~x))^((~m) + 2),  (~x), (~x), ((~a) + (~b)*(~x))⨸((~c) + (~d)*(~x)), "3_2_1_18") : nothing)

("3_2_1_19",
@rule ∫(((~!f) + (~!g)*(~x))^ (~!m)*((~!A) + (~!B)*log((~!e)*(((~!a) + (~!b)*(~x))/((~!c) + (~!d)*(~x)))^(~!n)))^(~!p),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~A), (~B), (~n), (~x)) &&
    !eq((~b)*(~c) - (~a)*(~d), 0) &&
    ext_isinteger((~m)) &&
    igt((~p), 0) ?
((~b)*(~c) - (~a)*(~d))* int_and_subst(((~b)*(~f) - (~a)*(~g) - ((~d)*(~f) - (~c)*(~g))*(~x))^ (~m)*((~A) + (~B)*log((~e)*(~x)^(~n)))^(~p)⨸((~b) - (~d)*(~x))^((~m) + 2),  (~x), (~x), ((~a) + (~b)*(~x))⨸((~c) + (~d)*(~x)), "3_2_1_19") : nothing)

("3_2_1_20",
@rule ∫(((~!f) + (~!g)*(~x))^ (~!m)*((~!A) + (~!B)*log((~!e)*((~!a) + (~!b)*(~x))^(~!n)*((~!c) + (~!d)*(~x))^(~mn)))^ (~!p),(~x)) =>
    !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~A), (~B), (~n), (~x)) &&
    eq((~n) + (~mn), 0) &&
    igt((~n), 0) &&
    !eq((~b)*(~c) - (~a)*(~d), 0) &&
    ext_isinteger((~m)) &&
    igt((~p), 0) ?
((~b)*(~c) - (~a)*(~d))* int_and_subst(((~b)*(~f) - (~a)*(~g) - ((~d)*(~f) - (~c)*(~g))*(~x))^ (~m)*((~A) + (~B)*log((~e)*(~x)^(~n)))^(~p)⨸((~b) - (~d)*(~x))^((~m) + 2),  (~x), (~x), ((~a) + (~b)*(~x))⨸((~c) + (~d)*(~x)), "3_2_1_20") : nothing)

# ("3_2_1_21",
# @rule ∫(((~!f) + (~!g)*(~x))^ (~!m)*((~!A) + (~!B)*log((~!e)*(((~!a) + (~!b)*(~x))/((~!c) + (~!d)*(~x)))^(~!n)))^(~!p),(~x)) =>
#     !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~A), (~B), (~m), (~n), (~p), (~x)) ?
# Unintegrable[((~f) + (~g)*(~x))^(~m)*((~A) + (~B)*log((~e)*(((~a) + (~b)*(~x))⨸((~c) + (~d)*(~x)))^(~n)))^(~p), (~x)] : nothing)

# ("3_2_1_22",
# @rule ∫(((~!f) + (~!g)*(~x))^ (~!m)*((~!A) + (~!B)*log((~!e)*((~!a) + (~!b)*(~x))^(~!n)*((~!c) + (~!d)*(~x))^(~mn)))^ (~!p),(~x)) =>
#     !contains_var((~a), (~b), (~c), (~d), (~e), (~f), (~g), (~A), (~B), (~m), (~n), (~p), (~x)) &&
#     eq((~n) + (~mn), 0) &&
#     ext_isinteger((~n)) ?
# Unintegrable[((~f) + (~g)*(~x))^(~m)*((~A) + (~B)*log((~e)*((~a) + (~b)*(~x))^(~n)⨸((~c) + (~d)*(~x))^(~n)))^(~p), (~x)] : nothing)

("3_2_1_23",
@rule ∫((~w)^(~!m)*((~!A) + (~!B)*log((~!e)*((~u)/(~v))^(~!n)))^(~!p),(~x)) =>
    !contains_var((~e), (~A), (~B), (~m), (~n), (~p), (~x)) &&
    linear((~u), (~v), (~w), (~x)) &&
    !(linear_without_simplify((~u), (~v), (~w), (~x))) ?
∫(expand_to_sum((~w), (~x))^ (~m)*((~A) + (~B)*log((~e)*(expand_to_sum((~u), (~x))⨸expand_to_sum((~v), (~x)))^(~n)))^(~p), (~x)) : nothing)

("3_2_1_24",
@rule ∫((~w)^(~!m)*((~!A) + (~!B)*log((~!e)*(~u)^(~!n)*(~v)^(~mn)))^(~!p),(~x)) =>
    !contains_var((~e), (~A), (~B), (~m), (~n), (~p), (~x)) &&
    eq((~n) + (~mn), 0) &&
    igt((~n), 0) &&
    linear((~u), (~v), (~w), (~x)) &&
    !(linear_without_simplify((~u), (~v), (~w), (~x))) ?
∫(expand_to_sum((~w), (~x))^ (~m)*((~A) + (~B)*log((~e)*expand_to_sum((~u), (~x))^(~n)⨸expand_to_sum((~v), (~x))^(~n)))^(~p), (~x)) : nothing)


]
