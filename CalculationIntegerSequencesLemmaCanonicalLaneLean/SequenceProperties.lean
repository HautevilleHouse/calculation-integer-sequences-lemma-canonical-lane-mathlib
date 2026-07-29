import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesLemmaCanonicalLaneLean

structure SequencePackage where
  sequenceType : Type u
  term : ℕ → sequenceType
  linearRecurrence : Prop
  closedForm : Prop
  explicitFormula : Prop

structure SequenceEvidence (S : SequencePackage) where
  linearRecurrenceClosed : S.linearRecurrence
  closedFormClosed : S.closedForm
  explicitFormulaClosed : S.explicitFormula

def SequenceClosed (S : SequencePackage) : Prop :=
  S.linearRecurrence ∧ S.closedForm ∧ S.explicitFormula

theorem sequence_closed_from_evidence (S : SequencePackage) (E : SequenceEvidence S) :
    SequenceClosed S := by
  exact And.intro E.linearRecurrenceClosed (And.intro E.closedFormClosed E.explicitFormulaClosed)

end CalculationIntegerSequencesLemmaCanonicalLaneLean
end HautevilleHouse