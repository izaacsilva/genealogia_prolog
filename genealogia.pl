% Student exercise profile
:- set_prolog_flag(occurs_check, error).        % disallow cyclic terms
:- set_prolog_stack(global, limit(8 000 000)).  % limit term space (8Mb)
:- set_prolog_stack(local,  limit(2 000 000)).  % limit environment space

% Your program goes here


/** <examples> Your example queries go here, e.g.
?- member(X, [cat, mouse]).
*/

gerou(abrahao,ismael).
gerou(abrahao,izaac).
gerou(abrahao,israel).
gerou(ivone,ismael).
gerou(ivone,izaac).
gerou(ivone,israel).
gerou(ismael,sofia).
gerou(ismael,cecilia).
gerou(poliana,sofia).
gerou(poliana,cecilia).
gerou(izaac,hadassa).
gerou(natalie,hadassa).
gerou(israel,analuiza).
gerou(luana,analuiza).
gerou(messias,natalie).
gerou(messias,anne).
gerou(messias,matheus).
gerou(maria,natalie).
gerou(maria,anne).
gerou(maria,matheus).
gerou(anne,marialaura).
masculino(messias).
masculino(matheus).
masculino(abrahao).
masculino(ismael).
masculino(izaac).
masculino(israel).
feminino(ivone).
feminino(poliana).
feminino(sofia).
feminino(cecilia).
feminino(luana).
feminino(analuiza).
feminino(natalie).
feminino(hadassa).
feminino(maria).
feminino(anne).
feminino(marialaura).
casal(A,B):- gerou(A,F), gerou(B,F), A\=B.
pai(P,F):- masculino(P), gerou(P,F).
mae(M,F):- feminino(M), gerou(M,F).
filho(F,P):- gerou(P,F), masculino(F).
filha(F,P):- gerou(P,F), feminino(F).
irmaoa(I,J):- gerou(P,I), gerou(P,J), I\=J.
irma(I,J):- irmaoa(I,J), feminino(I).
irmao(I,J):- irmaoa(I,J), masculino(I).
tioa(T,S):- gerou(P,S), irmaoa(P,I), (I=T; casal(I,T)).
tia(T,S):- tioa(T,S), feminino(T).
tio(T,S):- tioa(T,S), masculino(T).
sobrinhoa(S,T):- tioa(T,S).
sobrinho(S,T):- sobrinhoa(S,T), masculino(S).
sobrinho(S,T):- sobrinhoa(S,T), feminino(S).
avoa(A,N):- gerou(A,F), gerou(F,N).
avo(A,N):- avoa(A,N), masculino(A).
avoh(A,N):- avoa(A,N), feminino(A).
primoa(I,J):- gerou(P,I), gerou(Q,J), irmaoa(Q,P).
primo(I,J):- primoa(I,J), masculino(I).
prima(I,J):- primoa(I,J), feminino(I).
