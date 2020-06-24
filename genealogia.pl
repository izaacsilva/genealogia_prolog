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
casal(A,B):- gerou(A,F), gerou(B,F), A\=B.
pai(P,F):- masculino(P), gerou(P,F).
mae(M,F):- feminino(M), gerou(M,F).
filho(F,P):- gerou(P,F), masculino(F).
filha(F,P):- gerou(P,F), feminino(F).
irmao(I,J):- gerou(P,I), gerou(P,J), I\=J.
tioa(T,S):- gerou(P,S), (irmao(P,T); irmao(P,I), casal(I,T)).
sobrinhoa(S,T):- tioa(T,S).
avoa(A,N):- masculino(A), gerou(A,F), gerou(F,N).
primo(I,J):- gerou(P,I), gerou(Q,J), irmao(Q,P).
