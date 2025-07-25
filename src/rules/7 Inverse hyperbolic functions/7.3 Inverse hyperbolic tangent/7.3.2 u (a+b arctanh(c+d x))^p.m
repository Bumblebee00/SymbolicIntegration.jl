
(* ::Subsection::Closed:: *)
(* 7.3.2 u (a+b arctanh(c+d x))^p *)
Int[(a_. + b_.*ArcTanh[c_ + d_.*x_])^p_., x_Symbol] := 1/d*Subst[Int[(a + b*ArcTanh[x])^p, x], x, c + d*x] /; FreeQ[{a, b, c, d}, x] && IGtQ[p, 0]
Int[(a_. + b_.*ArcCoth[c_ + d_.*x_])^p_., x_Symbol] := 1/d*Subst[Int[(a + b*ArcCoth[x])^p, x], x, c + d*x] /; FreeQ[{a, b, c, d}, x] && IGtQ[p, 0]
Int[(a_. + b_.*ArcTanh[c_ + d_.*x_])^p_, x_Symbol] := Unintegrable[(a + b*ArcTanh[c + d*x])^p, x] /; FreeQ[{a, b, c, d, p}, x] && Not[IGtQ[p, 0]]
Int[(a_. + b_.*ArcCoth[c_ + d_.*x_])^p_, x_Symbol] := Unintegrable[(a + b*ArcCoth[c + d*x])^p, x] /; FreeQ[{a, b, c, d, p}, x] && Not[IGtQ[p, 0]]
Int[(e_. + f_.*x_)^m_.*(a_. + b_.*ArcTanh[c_ + d_.*x_])^p_., x_Symbol] := 1/d*Subst[Int[(f*x/d)^m*(a + b*ArcTanh[x])^p, x], x, c + d*x] /; FreeQ[{a, b, c, d, e, f, m}, x] && EqQ[d*e - c*f, 0] && IGtQ[p, 0]
Int[(e_. + f_.*x_)^m_.*(a_. + b_.*ArcCoth[c_ + d_.*x_])^p_., x_Symbol] := 1/d*Subst[Int[(f*x/d)^m*(a + b*ArcCoth[x])^p, x], x, c + d*x] /; FreeQ[{a, b, c, d, e, f, m}, x] && EqQ[d*e - c*f, 0] && IGtQ[p, 0]
Int[(e_. + f_.*x_)^m_*(a_. + b_.*ArcTanh[c_ + d_.*x_])^p_., x_Symbol] := (e + f*x)^(m + 1)*(a + b*ArcTanh[c + d*x])^p/(f*(m + 1)) - b*d*p/(f*(m + 1))* Int[(e + f*x)^(m + 1)*(a + b*ArcTanh[c + d*x])^(p - 1)/(1 - (c + d*x)^2), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[p, 0] && ILtQ[m, -1]
Int[(e_. + f_.*x_)^m_*(a_. + b_.*ArcCoth[c_ + d_.*x_])^p_., x_Symbol] := (e + f*x)^(m + 1)*(a + b*ArcCoth[c + d*x])^p/(f*(m + 1)) - b*d*p/(f*(m + 1))* Int[(e + f*x)^(m + 1)*(a + b*ArcCoth[c + d*x])^(p - 1)/(1 - (c + d*x)^2), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[p, 0] && ILtQ[m, -1]
Int[(e_. + f_.*x_)^m_.*(a_. + b_.*ArcTanh[c_ + d_.*x_])^p_., x_Symbol] := 1/d*Subst[Int[((d*e - c*f)/d + f*x/d)^m*(a + b*ArcTanh[x])^p, x], x, c + d*x] /; FreeQ[{a, b, c, d, e, f, m}, x] && IGtQ[p, 0]
Int[(e_. + f_.*x_)^m_.*(a_. + b_.*ArcCoth[c_ + d_.*x_])^p_., x_Symbol] := 1/d*Subst[Int[((d*e - c*f)/d + f*x/d)^m*(a + b*ArcCoth[x])^p, x], x, c + d*x] /; FreeQ[{a, b, c, d, e, f, m}, x] && IGtQ[p, 0]
Int[(e_. + f_.*x_)^m_.*(a_. + b_.*ArcTanh[c_ + d_.*x_])^p_, x_Symbol] := Unintegrable[(e + f*x)^m*(a + b*ArcTanh[c + d*x])^p, x] /; FreeQ[{a, b, c, d, e, f, m, p}, x] && Not[IGtQ[p, 0]]
Int[(e_. + f_.*x_)^m_.*(a_. + b_.*ArcCoth[c_ + d_.*x_])^p_, x_Symbol] := Unintegrable[(e + f*x)^m*(a + b*ArcCoth[c + d*x])^p, x] /; FreeQ[{a, b, c, d, e, f, m, p}, x] && Not[IGtQ[p, 0]]
Int[ArcTanh[c_ + d_.*x_]/(e_ + f_.*x_^n_.), x_Symbol] := 1/2*Int[Log[1 + c + d*x]/(e + f*x^n), x] - 1/2*Int[Log[1 - c - d*x]/(e + f*x^n), x] /; FreeQ[{c, d, e, f}, x] && RationalQ[n]
Int[ArcCoth[c_ + d_.*x_]/(e_ + f_.*x_^n_.), x_Symbol] := 1/2*Int[Log[(1 + c + d*x)/(c + d*x)]/(e + f*x^n), x] - 1/2*Int[Log[(-1 + c + d*x)/(c + d*x)]/(e + f*x^n), x] /; FreeQ[{c, d, e, f}, x] && RationalQ[n]
Int[ArcTanh[c_ + d_.*x_]/(e_ + f_.*x_^n_), x_Symbol] := Unintegrable[ArcTanh[c + d*x]/(e + f*x^n), x] /; FreeQ[{c, d, e, f, n}, x] && Not[RationalQ[n]]
Int[ArcCoth[c_ + d_.*x_]/(e_ + f_.*x_^n_), x_Symbol] := Unintegrable[ArcCoth[c + d*x]/(e + f*x^n), x] /; FreeQ[{c, d, e, f, n}, x] && Not[RationalQ[n]]
Int[(A_. + B_.*x_ + C_.*x_^2)^q_.*(a_. + b_.*ArcTanh[c_ + d_.*x_])^ p_., x_Symbol] := 1/d*Subst[Int[(-C/d^2 + C/d^2*x^2)^q*(a + b*ArcTanh[x])^p, x], x, c + d*x] /; FreeQ[{a, b, c, d, A, B, C, p, q}, x] && EqQ[B*(1 - c^2) + 2*A*c*d, 0] && EqQ[2*c*C - B*d, 0]
Int[(A_. + B_.*x_ + C_.*x_^2)^q_.*(a_. + b_.*ArcCoth[c_ + d_.*x_])^ p_., x_Symbol] := 1/d*Subst[Int[(C/d^2 + C/d^2*x^2)^q*(a + b*ArcCoth[x])^p, x], x, c + d*x] /; FreeQ[{a, b, c, d, A, B, C, p, q}, x] && EqQ[B*(1 - c^2) + 2*A*c*d, 0] && EqQ[2*c*C - B*d, 0]
Int[(e_. + f_.*x_)^m_.*(A_. + B_.*x_ + C_.*x_^2)^ q_.*(a_. + b_.*ArcTanh[c_ + d_.*x_])^p_., x_Symbol] := 1/d*Subst[Int[((d*e - c*f)/d + f*x/d)^m*(-C/d^2 + C/d^2*x^2)^ q*(a + b*ArcTanh[x])^p, x], x, c + d*x] /; FreeQ[{a, b, c, d, e, f, A, B, C, m, p, q}, x] && EqQ[B*(1 - c^2) + 2*A*c*d, 0] && EqQ[2*c*C - B*d, 0]
Int[(e_. + f_.*x_)^m_.*(A_. + B_.*x_ + C_.*x_^2)^ q_.*(a_. + b_.*ArcCoth[c_ + d_.*x_])^p_., x_Symbol] := 1/d*Subst[Int[((d*e - c*f)/d + f*x/d)^m*(-C/d^2 + C/d^2*x^2)^ q*(a + b*ArcCoth[x])^p, x], x, c + d*x] /; FreeQ[{a, b, c, d, e, f, A, B, C, m, p, q}, x] && EqQ[B*(1 - c^2) + 2*A*c*d, 0] && EqQ[2*c*C - B*d, 0]
