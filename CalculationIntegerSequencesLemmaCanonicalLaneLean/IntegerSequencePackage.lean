import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesLemmaCanonicalLaneLean

structure IntegerSequencePackage where
  sequenceName : String
  initialTerms : List ℕ
  consistencyChecked : Prop
  recurrenceMatched : Prop
  closedFormDerived : Prop

structure IntegerSequenceEvidence (P : IntegerSequencePackage) where
  consistencyCheckedClosed : P.consistencyChecked
  recurrenceMatchedClosed : P.recurrenceMatched
  closedFormDerivedClosed : P.closedFormDerived

def IntegerSequenceClosed (P : IntegerSequencePackage) : Prop :=
  P.consistencyChecked ∧ P.recurrenceMatched ∧ P.closedFormDerived

theorem integer_sequence_closed_from_evidence (P : IntegerSequencePackage) (E : IntegerSequenceEvidence P) : IntegerSequenceClosed P :=
  And.intro E.consistencyCheckedClosed (And.intro E.recurrenceMatchedClosed E.closedFormDerivedClosed)

end CalculationIntegerSequencesLemmaCanonicalLaneLean
end HautevilleHouse