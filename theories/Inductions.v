(** This file contains various generalised principles for inductions over natural numbers. **)

Require Import StrongInduction.

Section Inductions.

  Variable P : nat -> Prop.

  Hypotheses
    (P0 : P 0)
    (P1 : P 1)
    (P2 : P 2)
    (P3 : P 3)
    (P4 : P 4)
    (P5 : P 5).

  Lemma induction2 :
    (forall n, P n -> P (2 + n)) ->
    forall n, P n.
  Proof.
    intros IH n. strong induction n.
    do 2 (destruct n as [|n]; auto).
    apply IH. apply H. repeat constructor.
  Qed.

  Lemma induction3 :
    (forall n, P n -> P (3 + n)) ->
    forall n, P n.
  Proof.
    intros IH n. strong induction n.
    do 3 (destruct n as [|n]; auto).
    apply IH. apply H. repeat constructor.
  Qed.

  Lemma induction4 :
    (forall n, P n -> P (4 + n)) ->
    forall n, P n.
  Proof.
    intros IH n. strong induction n.
    do 4 (destruct n as [|n]; auto).
    apply IH. apply H. repeat constructor.
  Qed.

  Lemma induction5 :
    (forall n, P n -> P (5 + n)) ->
    forall n, P n.
  Proof.
    intros IH n. strong induction n.
    do 5 (destruct n as [|n]; auto).
    apply IH. apply H. repeat constructor.
  Qed.

  Lemma induction6 :
    (forall n, P n -> P (6 + n)) ->
    forall n, P n.
  Proof.
    intros IH n. strong induction n.
    do 6 (destruct n as [|n]; auto).
    apply IH. apply H. repeat constructor.
  Qed.

End Inductions.
