import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesLemmaCanonicalLaneLean

structure ConvergencePackage where
  sequence : ℕ → ℤ
  limitExists : Prop
  limitValue : ℤ
  cauchyProperty : Prop
  boundedness : Prop

structure ConvergenceEvidence (C : ConvergencePackage) where
  limitExistsClosed : C.limitExists
  cauchyPropertyClosed : C.cauchyProperty
  boundednessClosed : C.boundedness

def ConvergenceClosed (C : ConvergencePackage) : Prop :=
  C.limitExists ∧ C.cauchyProperty ∧ C.boundedness

theorem convergence_closed_from_evidence (C : ConvergencePackage) (E : ConvergenceEvidence C) : ConvergenceClosed C :=
  And.intro E.limitExistsClosed (And.intro E.cauchyPropertyClosed E.boundednessClosed)

end CalculationIntegerSequencesLemmaCanonicalLaneLean
end HautevilleHouse