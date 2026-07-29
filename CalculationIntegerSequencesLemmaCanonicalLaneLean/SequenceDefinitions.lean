import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesLemmaCanonicalLaneLean

structure IntegerSequence (α : Type) where
  terms : ℕ → α

structure SequenceAdmissibleClass (A : IntegerSequence ℤ) where
  object : A
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def sequenceAdmittedClosure (A : IntegerSequence ℤ) : Prop := True

end CalculationIntegerSequencesLemmaCanonicalLaneLean
end HautevilleHouse