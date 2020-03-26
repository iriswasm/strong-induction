(** This file contains various generalised principles for inductions over natural numbers. **)

Require Import StrongInduction.

Section Inductions.

  Variable P : nat -> Type.

  Hypotheses
    (P0 : P 0)
    (P1 : P 1)
    (P2 : P 2)
    (P3 : P 3)
    (P4 : P 4)
    (P5 : P 5).

  Lemma rect2 :
    (forall n, P n -> P (2 + n)) ->
    forall n, P n.
  Proof.
    intros IH n. strong induction n.
    do 2 (destruct n as [|n]; auto).
    apply IH. auto.
  Qed.

  Lemma rect3 :
    (forall n, P n -> P (3 + n)) ->
    forall n, P n.
  Proof.
    intros IH n. strong induction n.
    do 3 (destruct n as [|n]; auto).
    apply IH. auto.
  Qed.

  Lemma rect4 :
    (forall n, P n -> P (4 + n)) ->
    forall n, P n.
  Proof.
    intros IH n. strong induction n.
    do 4 (destruct n as [|n]; auto).
    apply IH. auto 10.
  Qed.

  Lemma rect5 :
    (forall n, P n -> P (5 + n)) ->
    forall n, P n.
  Proof.
    intros IH n. strong induction n.
    do 5 (destruct n as [|n]; auto).
    apply IH. auto 10.
  Qed.

  Lemma rect6 :
    (forall n, P n -> P (6 + n)) ->
    forall n, P n.
  Proof.
    intros IH n. strong induction n.
    do 6 (destruct n as [|n]; auto).
    apply IH. auto 10.
  Qed.

End Inductions.

Definition induction2 (P : nat -> Prop) := rect2 P.
Definition induction3 (P : nat -> Prop) := rect3 P.
Definition induction4 (P : nat -> Prop) := rect4 P.
Definition induction5 (P : nat -> Prop) := rect5 P.
Definition induction6 (P : nat -> Prop) := rect6 P.
