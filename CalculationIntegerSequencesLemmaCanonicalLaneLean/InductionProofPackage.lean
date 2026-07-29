import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesLemmaCanonicalLaneLean

structure InductionProofPackage where
  baseCase : ℕ → Prop
  inductiveStep : ℕ → Prop
  property : ℕ → Prop
  statement : Prop
  baseCaseTerm : baseCase 0
  inductiveStepTerm : ∀ k, property k → property (k+1)

structure InductionProofEvidence (I : InductionProofPackage) where
  baseCaseClosed : I.baseCase 0
  inductiveStepClosed : ∀ k, I.property k → I.property (k+1)

def InductionProofClosed (I : InductionProofPackage) : Prop :=
  I.baseCase 0 ∧ (∀ k, I.property k → I.property (k+1))

theorem induction_proof_closed_from_evidence (I : InductionProofPackage) (E : InductionProofEvidence I) : InductionProofClosed I := by
  exact And.intro E.baseCaseClosed E.inductiveStepClosed

end CalculationIntegerSequencesLemmaCanonicalLaneLean
end HautevilleHouse
