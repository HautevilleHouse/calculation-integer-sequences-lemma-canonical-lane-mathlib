import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesLemmaCanonicalLaneLean

structure RecurrenceRelationPackage where
  sequence : ℕ → ℤ
  order : Nat
  coefficients : ℕ → ℤ
  recurrenceEquation : Prop
  initialConditions : Prop

structure RecurrenceRelationEvidence (R : RecurrenceRelationPackage) where
  recurrenceEquationClosed : R.recurrenceEquation
  initialConditionsClosed : R.initialConditions

def RecurrenceRelationClosed (R : RecurrenceRelationPackage) : Prop :=
  R.recurrenceEquation ∧ R.initialConditions

theorem recurrence_relation_closed_from_evidence (R : RecurrenceRelationPackage) (E : RecurrenceRelationEvidence R) : RecurrenceRelationClosed R := by
  exact And.intro E.recurrenceEquationClosed E.initialConditionsClosed

end CalculationIntegerSequencesLemmaCanonicalLaneLean
end HautevilleHouse
