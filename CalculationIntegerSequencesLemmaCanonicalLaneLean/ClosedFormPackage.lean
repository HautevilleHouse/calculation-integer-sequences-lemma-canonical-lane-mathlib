import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesLemmaCanonicalLaneLean

structure ClosedFormPackage where
  sequence : ℕ → ℤ
  closedForm : ℕ → ℤ
  formula : Prop
  correctness : Prop

structure ClosedFormEvidence (C : ClosedFormPackage) where
  formulaClosed : C.formula
  correctnessClosed : C.correctness

def ClosedFormClosed (C : ClosedFormPackage) : Prop :=
  C.formula ∧ C.correctness

theorem closed_form_closed_from_evidence (C : ClosedFormPackage) (E : ClosedFormEvidence C) : ClosedFormClosed C := by
  exact And.intro E.formulaClosed E.correctnessClosed

end CalculationIntegerSequencesLemmaCanonicalLaneLean
end HautevilleHouse
