# Strong induction

[StrongInduction.v](StrongInduction.v) provides the principle of strong induction
over natural numbers:
```coq
Theorem strong_induction : forall P : nat -> Prop,
  (forall m : nat, (forall n : nat, n < m -> P n) -> P m) ->
  forall n : nat, P n.
```
It can be used in practice using the `strong induction` tactic.

[Inductions.v](Inductions.v) provides various other induction lemmas.

This package can be installed using [esy](https://esy.sh/).
To compile it, install esy, then type `esy` at the root of the repository.

