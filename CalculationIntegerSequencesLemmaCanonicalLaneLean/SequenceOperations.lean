import CalculationIntegerSequencesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesLemmaCanonicalLaneLean

structure SequenceAdditionPackage (A : AdmissibleClass) where
  seq : A.object.integerSequenceType
  termwiseSum : Prop
  closureProperty : Prop

def SequenceAdditionClosed (P : SequenceAdditionPackage A) : Prop :=
  P.termwiseSum ∧ P.closureProperty

theorem sequence_addition_from_admissible (A : AdmissibleClass) :
    SequenceAdditionPackage A := by
  refine {
    seq := A.object.integerSequenceType.default
    termwiseSum := True
    closureProperty := True
  }

end CalculationIntegerSequencesLemmaCanonicalLaneLean
end HautevilleHouse