(lang dune 1.11)
(using coq 0.1)
(name StrongInduction)
(generate_opam_files true)

(package
 (name StrongInduction)
 (synopsis "The strong induction over natural numbers.")
 (description "\| Theorem strong_induction : forall P : nat -> Prop,
              "\|   (forall m : nat, (forall n : nat, n < m -> P n) -> P m) ->
              "\|   forall n : nat, P n.
))

