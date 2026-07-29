import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesLemmaCanonicalLaneLean

structure IntegerSequenceStructure where
  carrier : Type
  indexingSet : Type
  sequence : indexingSet → ℕ

structure IntegerSequenceAdmittedObject where
  seq : IntegerSequenceStructure
  closedFormFormula : Prop
  recurrenceRelation : Prop
  generatingFunction : Prop
  conclusion : closedFormFormula ∧ recurrenceRelation ∧ generatingFunction

structure IntegerSequenceEndgameState where
  object : IntegerSequenceAdmittedObject

def IntegerSequenceWitnessClosed (O : IntegerSequenceAdmittedObject) : Prop :=
  O.closedFormFormula ∧ O.recurrenceRelation ∧ O.generatingFunction

end CalculationIntegerSequencesLemmaCanonicalLaneLean
end HautevilleHouse