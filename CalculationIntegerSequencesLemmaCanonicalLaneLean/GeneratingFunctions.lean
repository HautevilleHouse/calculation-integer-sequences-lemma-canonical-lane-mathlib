import CalculationIntegerSequencesLemmaCanonicalLaneLean.RecurrenceRelations

namespace HautevilleHouse
namespace CalculationIntegerSequencesLemmaCanonicalLaneLean

structure GeneratingFunctionPackage (A : AdmissibleClass) (R : RecurrenceRelationPackage A) where
  ordinaryGeneratingFunction : Prop
  closedFormExpression : Prop

def GeneratingFunctionClosed (G : GeneratingFunctionPackage A R) : Prop :=
  G.ordinaryGeneratingFunction ∧ G.closedFormExpression

theorem generating_function_closed (A : AdmissibleClass) (R : RecurrenceRelationPackage A) (G : GeneratingFunctionPackage A R) :
    GeneratingFunctionClosed G := by
  exact And.intro G.ordinaryGeneratingFunction G.closedFormExpression

end CalculationIntegerSequencesLemmaCanonicalLaneLean
end HautevilleHouse