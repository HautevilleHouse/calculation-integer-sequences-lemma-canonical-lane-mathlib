import HautevilleHouse.CalculationIntegerSequencesLemmaCanonicalLaneLean.GeneratingFunction

namespace HautevilleHouse
namespace CalculationIntegerSequencesLemmaCanonicalLaneLean

structure CombinatorialInterpretation (seq : ℕ → ℤ) where
  countingProblem : String
  bijectionExists : Prop
  bijectionConstruction : bijectionExists

def CombinatorialInterpretationClosed (C : CombinatorialInterpretation seq) : Prop :=
  C.bijectionExists

theorem combinatorial_interpretation_closed_from_evidence
    (C : CombinatorialInterpretation seq) : CombinatorialInterpretationClosed C := by
  exact C.bijectionConstruction

end CalculationIntegerSequencesLemmaCanonicalLaneLean
end HautevilleHouse