import HautevilleHouse.CalculationIntegerSequencesLemmaCanonicalLaneLean.IntegerSequenceAdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CisLemmaWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.propertyHolds

end CalculationIntegerSequencesLemmaCanonicalLaneLean
end HautevilleHouse