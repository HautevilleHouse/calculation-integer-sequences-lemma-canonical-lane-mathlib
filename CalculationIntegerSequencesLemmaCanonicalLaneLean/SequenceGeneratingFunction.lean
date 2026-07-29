import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculationIntegerSequencesLemmaCanonicalLaneLean.CalculationIntegerSequence

namespace HautevilleHouse
namespace CalculationIntegerSequencesLemmaCanonicalLaneLean

structure SequenceGeneratingFunction (S : CalculationIntegerSequence) where
  domain : Type
  codomain : S.carrier
  function : domain → S.carrier
  recurrenceRelation : Prop
  closedForm : Prop

def SequenceGeneratingFunctionClosed (S : CalculationIntegerSequence) (F : SequenceGeneratingFunction S) : Prop :=
  F.recurrenceRelation ∧ F.closedForm

theorem sequence_generating_function_closed_from_props
  (S : CalculationIntegerSequence) (F : SequenceGeneratingFunction S)
  (h1 : F.recurrenceRelation) (h2 : F.closedForm) : SequenceGeneratingFunctionClosed S F := by
  exact And.intro h1 h2

end CalculationIntegerSequencesLemmaCanonicalLaneLean
end HautevilleHouse