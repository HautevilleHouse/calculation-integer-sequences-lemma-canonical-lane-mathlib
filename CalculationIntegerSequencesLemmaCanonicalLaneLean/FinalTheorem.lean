import HautevilleHouse.CalculationIntegerSequencesLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CalculationIntegerSequencesLemmaCanonicalLaneLean

def ConstrainedCisLemmaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cis_lemma_endgame (A : AdmissibleClass) :
    ConstrainedCisLemmaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CalculationIntegerSequencesLemmaCanonicalLaneLean
end HautevilleHouse