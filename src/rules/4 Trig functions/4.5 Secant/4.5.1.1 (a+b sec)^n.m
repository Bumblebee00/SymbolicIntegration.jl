
(* ::Subsection::Closed:: *)
(* 4.5.1.1 (a+b sec)^n *)
Int[csc[c_. + d_.*x_]^n_, x_Symbol] := -1/d*Subst[Int[ExpandIntegrand[(1 + x^2)^(n/2 - 1), x], x], x, Cot[c + d*x]] /; FreeQ[{c, d}, x] && IGtQ[n/2, 0]
Int[(b_.*csc[c_. + d_.*x_])^n_, x_Symbol] := -b*Cos[c + d*x]*(b*Csc[c + d*x])^(n - 1)/(d*(n - 1)) + b^2*(n - 2)/(n - 1)*Int[(b*Csc[c + d*x])^(n - 2), x] /; FreeQ[{b, c, d}, x] && GtQ[n, 1] && IntegerQ[2*n]
Int[(b_.*csc[c_. + d_.*x_])^n_, x_Symbol] := Cos[c + d*x]*(b*Csc[c + d*x])^(n + 1)/(b*d*n) + (n + 1)/(b^2*n)*Int[(b*Csc[c + d*x])^(n + 2), x] /; FreeQ[{b, c, d}, x] && LtQ[n, -1] && IntegerQ[2*n]
(* original line: Int[csc[c_. + d_.*x_], x_Symbol] := (* -ArcCoth[Cos[c+d*x]]/d /; *) -ArcTanh[Cos[c + d*x]]/d /; FreeQ[{c, d}, x] *)
Int[csc[c_. + d_.*x_], x_Symbol] := -ArcTanh[Cos[c + d*x]]/d /; FreeQ[{c, d}, x]
(* Int[1/csc[c_.+d_.*x_],x_Symbol] := -Cos[c+d*x]/d /; FreeQ[{c,d},x] *)
Int[(b_.*csc[c_. + d_.*x_])^n_, x_Symbol] := (b*Csc[c + d*x])^n*Sin[c + d*x]^n*Int[1/Sin[c + d*x]^n, x] /; FreeQ[{b, c, d}, x] && EqQ[n^2, 1/4]
Int[(b_.*csc[c_. + d_.*x_])^n_, x_Symbol] := (b*Csc[c + d*x])^(n - 1)*((Sin[c + d*x]/b)^(n - 1)* Int[1/(Sin[c + d*x]/b)^n, x]) /; FreeQ[{b, c, d, n}, x] && Not[IntegerQ[n]]
Int[(a_ + b_.*csc[c_. + d_.*x_])^2, x_Symbol] := a^2*x + 2*a*b*Int[Csc[c + d*x], x] + b^2*Int[Csc[c + d*x]^2, x] /; FreeQ[{a, b, c, d}, x]
Int[Sqrt[a_ + b_.*csc[c_. + d_.*x_]], x_Symbol] := -2*b/d* Subst[Int[1/(a + x^2), x], x, b*Cot[c + d*x]/Sqrt[a + b*Csc[c + d*x]]] /; FreeQ[{a, b, c, d}, x] && EqQ[a^2 - b^2, 0]
Int[(a_ + b_.*csc[c_. + d_.*x_])^n_, x_Symbol] := -b^2*Cot[c + d*x]*(a + b*Csc[c + d*x])^(n - 2)/(d*(n - 1)) + a/(n - 1)* Int[(a + b*Csc[c + d*x])^(n - 2)*(a*(n - 1) + b*(3*n - 4)*Csc[c + d*x]), x] /; FreeQ[{a, b, c, d}, x] && EqQ[a^2 - b^2, 0] && GtQ[n, 1] && IntegerQ[2*n]
Int[1/Sqrt[a_ + b_.*csc[c_. + d_.*x_]], x_Symbol] := 1/a*Int[Sqrt[a + b*Csc[c + d*x]], x] - b/a*Int[Csc[c + d*x]/Sqrt[a + b*Csc[c + d*x]], x] /; FreeQ[{a, b, c, d}, x] && EqQ[a^2 - b^2, 0]
Int[(a_ + b_.*csc[c_. + d_.*x_])^n_, x_Symbol] := -Cot[c + d*x]*(a + b*Csc[c + d*x])^n/(d*(2*n + 1)) + 1/(a^2*(2*n + 1))* Int[(a + b*Csc[c + d*x])^(n + 1)*(a*(2*n + 1) - b*(n + 1)*Csc[c + d*x]), x] /; FreeQ[{a, b, c, d}, x] && EqQ[a^2 - b^2, 0] && LeQ[n, -1] && IntegerQ[2*n]
Int[(a_ + b_.*csc[c_. + d_.*x_])^n_, x_Symbol] := a^n*Cot[ c + d*x]/(d*Sqrt[1 + Csc[c + d*x]]*Sqrt[1 - Csc[c + d*x]])* Subst[Int[(1 + b*x/a)^(n - 1/2)/(x*Sqrt[1 - b*x/a]), x], x, Csc[c + d*x]] /; FreeQ[{a, b, c, d, n}, x] && EqQ[a^2 - b^2, 0] && Not[IntegerQ[2*n]] && GtQ[a, 0]
Int[(a_ + b_.*csc[c_. + d_.*x_])^n_, x_Symbol] := a^IntPart[n]*(a + b*Csc[c + d*x])^ FracPart[n]/(1 + b/a*Csc[c + d*x])^FracPart[n]* Int[(1 + b/a*Csc[c + d*x])^n, x] /; FreeQ[{a, b, c, d, n}, x] && EqQ[a^2 - b^2, 0] && Not[IntegerQ[2*n]] && Not[GtQ[a, 0]]
Int[Sqrt[a_ + b_.*csc[c_. + d_.*x_]], x_Symbol] := 2*(a + b*Csc[c + d*x])/(d*Rt[a + b, 2]*Cot[c + d*x])* Sqrt[b*(1 + Csc[c + d*x])/(a + b*Csc[c + d*x])]* Sqrt[-b*(1 - Csc[c + d*x])/(a + b*Csc[c + d*x])]* EllipticPi[a/(a + b), ArcSin[Rt[a + b, 2]/Sqrt[a + b*Csc[c + d*x]]], (a - b)/(a + b)] /; FreeQ[{a, b, c, d}, x] && NeQ[a^2 - b^2, 0]
Int[(a_ + b_.*csc[c_. + d_.*x_])^(3/2), x_Symbol] := Int[(a^2 + b*(2*a - b)*Csc[c + d*x])/Sqrt[a + b*Csc[c + d*x]], x] + b^2* Int[Csc[c + d*x]*(1 + Csc[c + d*x])/Sqrt[a + b*Csc[c + d*x]], x] /; FreeQ[{a, b, c, d}, x] && NeQ[a^2 - b^2, 0]
Int[(a_ + b_.*csc[c_. + d_.*x_])^n_, x_Symbol] := -b^2*Cot[c + d*x]*(a + b*Csc[c + d*x])^(n - 2)/(d*(n - 1)) + 1/(n - 1)*Int[(a + b*Csc[c + d*x])^(n - 3)* Simp[a^3*(n - 1) + (b*(b^2*(n - 2) + 3*a^2*(n - 1)))* Csc[c + d*x] + (a*b^2*(3*n - 4))*Csc[c + d*x]^2, x], x] /; FreeQ[{a, b, c, d}, x] && NeQ[a^2 - b^2, 0] && GtQ[n, 2] && IntegerQ[2*n]
Int[1/(a_ + b_.*csc[c_. + d_.*x_]), x_Symbol] := x/a - 1/a*Int[1/(1 + a/b*Sin[c + d*x]), x] /; FreeQ[{a, b, c, d}, x] && NeQ[a^2 - b^2, 0]
Int[1/Sqrt[a_ + b_.*csc[c_. + d_.*x_]], x_Symbol] := 2*Rt[a + b, 2]/(a*d*Cot[c + d*x])* Sqrt[b*(1 - Csc[c + d*x])/(a + b)]* Sqrt[-b*(1 + Csc[c + d*x])/(a - b)]* EllipticPi[(a + b)/a, ArcSin[Sqrt[a + b*Csc[c + d*x]]/Rt[a + b, 2]], (a + b)/(a - b)] /; FreeQ[{a, b, c, d}, x] && NeQ[a^2 - b^2, 0]
Int[(a_ + b_.*csc[c_. + d_.*x_])^n_, x_Symbol] := b^2*Cot[ c + d*x]*(a + b*Csc[c + d*x])^(n + 1)/(a*d*(n + 1)*(a^2 - b^2)) + 1/(a*(n + 1)*(a^2 - b^2))* Int[(a + b*Csc[c + d*x])^(n + 1)* Simp[(a^2 - b^2)*(n + 1) - a*b*(n + 1)*Csc[c + d*x] + b^2*(n + 2)*Csc[c + d*x]^2, x], x] /; FreeQ[{a, b, c, d}, x] && NeQ[a^2 - b^2, 0] && LtQ[n, -1] && IntegerQ[2*n]
Int[(a_ + b_.*csc[c_. + d_.*x_])^n_, x_Symbol] := Unintegrable[(a + b*Csc[c + d*x])^n, x] /; FreeQ[{a, b, c, d, n}, x] && NeQ[a^2 - b^2, 0] && Not[IntegerQ[2*n]]
