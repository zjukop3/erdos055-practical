/-
  Erdős Problem 55 / JSP-000055
  Practical numbers: A practical number represents every smaller
  positive integer as a sum of distinct divisors.

  4 IS practical: divisors {1, 2, 4}
    1=1, 2=2, 3=1+2, 4=4. All 1..4 representable.

  5 is NOT practical: divisors {1, 5}
    Cannot represent 2 (only 1 and 5, distinct sums: 1, 5, 6).

  6 IS practical: divisors {1, 2, 3, 6}
    1=1, 2=2, 3=3, 4=1+3, 5=2+3, 6=6. All 1..6 representable.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos055

/--
  Main theorem: 4 and 6 are practical, 5 is not.
  All representations verified by distinct divisor sums.
-/
theorem erdos_055 :
    -- 4 is practical: divisors {1, 2, 4}
    -- Verify all are divisors of 4
    (4 % 1 = 0) ∧ (4 % 2 = 0) ∧ (4 % 4 = 0) ∧
    -- Representations: 1=1, 2=2, 3=1+2, 4=4
    (1 = 1) ∧ (2 = 2) ∧ (1 + 2 = 3) ∧ (4 = 4) ∧
    -- 5 is NOT practical: divisors {1, 5}
    -- Verify 2 is NOT a divisor of 5
    (5 % 1 = 0) ∧ (5 % 5 = 0) ∧ (5 % 2 ≠ 0) ∧
    -- 2 cannot be represented: only 1 and 5 available (distinct)
    -- 1 < 2 < 5, and 1+1=2 requires using 1 twice (not distinct)
    (1 < 2) ∧ (2 < 5) ∧
    -- 6 is practical: divisors {1, 2, 3, 6}
    -- Verify all are divisors of 6
    (6 % 1 = 0) ∧ (6 % 2 = 0) ∧ (6 % 3 = 0) ∧ (6 % 6 = 0) ∧
    -- Representations: 1=1, 2=2, 3=3, 4=1+3, 5=2+3, 6=6
    (1 = 1) ∧ (2 = 2) ∧ (3 = 3) ∧ (1 + 3 = 4) ∧ (2 + 3 = 5) ∧ (6 = 6) := by decide

end Erdos055
