file_rules = [
# (* ::Subsection::Closed:: *) 
# (* 1.1.1.1 (a+b x)^m *) 
@acrule ∫(1/(~x),(~x)) => log((~x)) # 1_1_1_1_1
@acrule ∫((~x)^(~!m),(~x)) => !contains_var((~x), (~m)) && !eqQ((~m), -1) ? (~x)^((~m) + 1)/((~m) + 1) : nothing # 1_1_1_1_2
@acrule ∫(1/((~a) + (~!b)*(~x)),(~x)) => !contains_var((~x), (~a), (~b)) ? log((~a) + (~b)*(~x))/(~b) : nothing # 1_1_1_1_3
@acrule ∫(((~!a) + (~!b)*(~x))^(~m),(~x)) => !contains_var((~x), (~a), (~b), (~m)) && !eqQ((~m), -1) ? ((~a) + (~b)*(~x))^((~m) + 1)/((~b)*((~m) + 1)) : nothing # 1_1_1_1_4
@acrule ∫(((~!a) + (~!b)*(~u))^(~m),(~x)) => !contains_var((~x), (~a), (~b), (~m)) && Symbolics.linear_expansion((~u), ~x)[3] && !eqQ((~u), (~x)) ? 1/Symbolics.coeff((~u), (~x) ^ 1)*substitute(∫(((~a) + (~b)*(~x))^(~m), (~x)), (~x) => (~u)) : nothing # 1_1_1_1_5
]
