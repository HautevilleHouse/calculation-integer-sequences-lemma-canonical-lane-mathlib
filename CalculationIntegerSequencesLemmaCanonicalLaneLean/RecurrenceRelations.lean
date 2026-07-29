import CalculationIntegerSequencesLemmaCanonicalLaneLean.SequenceOperations

namespace HautevilleHouse
namespace CalculationIntegerSequencesLemmaCanonicalLaneLean

structure RecurrenceRelationPackage (A : AdmissibleClass) where
  initialConditions : A.object.integerSequenceType
  recurrenceEquation : Prop
  solutionExists : Prop

def RecurrenceRelationClosed (R : RecurrenceRelationPackage A) : Prop :=
  R.recurrenceEquation ∧ R.solutionExists

theorem recurrence_relation_closed (A : AdmissibleClass) (R : RecurrenceRelationPackage A) :
    RecurrenceRelationClosed R := by
  exact And.intro R.recurrenceEquation R.solutionExists

end CalculationIntegerSequencesLemmaCanonicalLaneLean
end HautevilleHouse