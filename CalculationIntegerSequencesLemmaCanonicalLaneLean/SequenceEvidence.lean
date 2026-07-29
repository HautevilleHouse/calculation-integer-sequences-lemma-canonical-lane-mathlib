import CalculationIntegerSequencesLemmaCanonicalLaneLean.SequenceObjects

namespace HautevilleHouse
namespace CalculationIntegerSequencesLemmaCanonicalLaneLean

structure SequenceTransformationPackage (S : IntegerSequenceStructure) where
  operationName : String
  preservesClosedForm : Prop
  preservesRecurrence : Prop
  preservesGeneratingFunction : Prop

structure SequenceTransformationEvidence {S : IntegerSequenceStructure}
    (T : SequenceTransformationPackage S) where
  preservesClosedFormClosed : T.preservesClosedForm
  preservesRecurrenceClosed : T.preservesRecurrence
  preservesGeneratingFunctionClosed : T.preservesGeneratingFunction

def SequenceTransformationClosed {S : IntegerSequenceStructure}
    (T : SequenceTransformationPackage S) : Prop :=
  T.preservesClosedForm ∧ T.preservesRecurrence ∧ T.preservesGeneratingFunction

theorem sequence_transformation_closed_from_evidence
    {S : IntegerSequenceStructure} (T : SequenceTransformationPackage S)
    (E : SequenceTransformationEvidence T) : SequenceTransformationClosed T := by
  exact And.intro E.preservesClosedFormClosed
    (And.intro E.preservesRecurrenceClosed E.preservesGeneratingFunctionClosed)

end CalculationIntegerSequencesLemmaCanonicalLaneLean
end HautevilleHouse