import canonicalLaneMathlib.AdmissibleClass
import CalculationIntegerSequencesLemmaCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace CalculationIntegerSequencesLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure SeqAdmittedObject where
  integerSequenceType : Type
  property : integerSequenceType → Prop
  conclusion : property

def SeqWitnessClosed (O : SeqAdmittedObject) : Prop := O.conclusion

structure AdmissibleClass where
  object : SeqAdmittedObject
  endpointSatisfied : O.conclusion  -- referencing the object's conclusion
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded
  

end CalculationIntegerSequencesLemmaCanonicalLaneLean
end HautevilleHouse