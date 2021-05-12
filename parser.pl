%cao(c_Nam).
%tồn_tại(X,có(c_Nam,X)).
%tồn_tại(X,có(c_Nam,X) & cây_bút(X)) & tồn_tại(Y,có(c_Nam,Y) & quyển_sách(Y)).
%tồn_tại(X, tồn_tại(Y,có(c_Nam,Y) & quyển_sách(Y) & có(c_Nam,X) & cây_bút(X)).
%với_mọi(X,tồn_tại(Y,tồn_tại(Z,học_sinh(X) => cây_bút(Y) & có(X,Y) & quyển_sách(Z) & có(X,Z)))).
%với_mọi(X,tồn_tại(Y,học_sinh(X) => cây_bút(Y) & với_mọi(X,tồn_tại(Z,học_sinh(X) => quyển_sách(Z))).
s(NP@VP) --> np(NP), vp(VP).
np(NNP)--> nnp(NNP).
np(DET@NN) --> det(DET), nn(NN).
np(NN@PP) --> nn(NN), pp(PP).
pp(IN@NP) --> in(IN), np(NP).
vp(VB@NP) --> vb(VB), np(NP).
vp(VB@JJ) --> vb(VB), jj(JJ).
nnp(lambda(P,P@c_Nam))-->[nam].
nnp(lambda(P,P@c_Nam))-->[minh].
nn(lambda(P, cây_bút(P))) --> [cây, bút].
nn(lambda(P, quyển_sách(P))) --> [quyển, sách].
nn(lambda(P, P@c_con_mèo)) --> [con,mèo].
vb(lambda(P, lambda(X, P @ lambda(Y, có(X, Y))))) --> [có].
vb(lambda(P, lambda(X, P @ lambda(Y, cắn(X, Y))))) --> [cắn].
vb(lambda(P,P))-->[thì].
jj(lambda(P,cao(P)))-->[cao].
jj(lambda(P,thấp(P)))-->[thấp].
in(lambda(P, P)) --> [của].
det(lambda(P, lambda(Q, với_mọi(X, (P @ X) => (Q @ X))))) --> [mọi].
det(lambda(P, lambda(Q, tồn_tại(X, (P @ X) & (Q @ X))))) --> [một].

