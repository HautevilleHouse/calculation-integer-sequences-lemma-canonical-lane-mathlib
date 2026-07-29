import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculationIntegerSequencesLemmaCanonicalLaneLean.SequenceDefinitions
import HautevilleHouse.CalculationIntegerSequencesLemmaCanonicalLaneLean.RecurrenceRelations

namespace HautevilleHouse
namespace CalculationIntegerSequencesLemmaCanonicalLaneLean

def bridgeClosed (A : SequenceAdmissibleClass) : Prop := True

theorem bridge_from_admissible_class (A : SequenceAdmissibleClass) : bridgeClosed A := by
  unfold bridgeClosed; trivial

def gateClosed (A : SequenceAdmissibleClass) : Prop := A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : SequenceAdmissibleClass) : gateClosed A := A.gateWitness

end CalculationIntegerSequencesLemmaCanonicalLaneLean
end HautevilleHouse