import HautevilleHouse.CalculationIntegerSequencesLemmaCanonicalLaneLean.IntegerSequenceAdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesLemmaCanonicalLaneLean

structure RecurrencePattern (seq : ℕ → ℤ) where
  order : ℕ
  coefficients : ℤ → ℤ
  recurrenceRelation : Prop
  closedFormExists : Prop
  recurrenceRelationTerm : recurrenceRelation
  closedFormExistsTerm : closedFormExists

def RecurrenceClosed (R : RecurrencePattern seq) : Prop :=
  R.recurrenceRelation ∧ R.closedFormExists

theorem recurrence_closed_from_evidence (R : RecurrencePattern seq) :
    RecurrenceClosed R := by
  exact And.intro R.recurrenceRelationTerm R.closedFormExistsTerm

end CalculationIntegerSequencesLemmaCanonicalLaneLean
end HautevilleHouse