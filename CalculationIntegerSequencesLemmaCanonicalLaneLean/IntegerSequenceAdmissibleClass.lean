import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesLemmaCanonicalLaneLean

structure CalculationIntegerSequencesLemmaObject where
  seq : ℕ → ℤ
  property : Prop
  propertyHolds : property

def CisLemmaWitnessClosed (O : CalculationIntegerSequencesLemmaObject) : Prop :=
  O.propertyHolds

end CalculationIntegerSequencesLemmaCanonicalLaneLean
end HautevilleHouse