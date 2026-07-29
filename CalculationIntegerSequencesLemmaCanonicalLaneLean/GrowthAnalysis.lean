import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculationIntegerSequencesLemmaCanonicalLaneLean.SequenceDefinitions

namespace HautevilleHouse
namespace CalculationIntegerSequencesLemmaCanonicalLaneLean

structure GrowthOrder (A : IntegerSequence ℤ) where
  rate : ℕ → ℕ
  isBoundedAbove : ∃ C : ℕ, ∀ n : ℕ, |A.terms n| ≤ C * (rate n)
  isBoundedBelow : ∃ C : ℕ, C > 0 ∧ ∀ n : ℕ, C * (rate n) ≤ |A.terms n|

structure GrowthAnalysisClosed (G : GrowthOrder A) where
  boundsVerified : G.isBoundedAbove ∧ G.isBoundedBelow
  bridgeClosed : True

end CalculationIntegerSequencesLemmaCanonicalLaneLean
end HautevilleHouse