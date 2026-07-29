import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculationIntegerSequencesLemmaCanonicalLaneLean.CalculationIntegerSequence

namespace HautevilleHouse
namespace CalculationIntegerSequencesLemmaCanonicalLaneLean

structure SequenceConvergenceLemma (S : CalculationIntegerSequence) where
  sequence : ℕ → S.carrier
  limit : S.carrier
  epsilonCondition : Prop
  convergenceProof : Prop

def SequenceConvergenceLemmaClosed (S : CalculationIntegerSequence) (L : SequenceConvergenceLemma S) : Prop :=
  L.epsilonCondition ∧ L.convergenceProof

theorem sequence_convergence_lemma_closed_from_props
  (S : CalculationIntegerSequence) (L : SequenceConvergenceLemma S)
  (h1 : L.epsilonCondition) (h2 : L.convergenceProof) : SequenceConvergenceLemmaClosed S L := by
  exact And.intro h1 h2

end CalculationIntegerSequencesLemmaCanonicalLaneLean
end HautevilleHouse