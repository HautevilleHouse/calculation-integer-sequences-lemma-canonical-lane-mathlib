import HautevilleHouse.CalculationIntegerSequencesLemmaCanonicalLaneLean.RecurrencePattern

namespace HautevilleHouse
namespace CalculationIntegerSequencesLemmaCanonicalLaneLean

structure GeneratingFunction (seq : ℕ → ℤ) where
  formalSeries : Type
  rationalForm : Prop
  radiusConvergence : ℝ
  rationalFormTerm : rationalForm
  closedFormDerived : Prop
  closedFormDerivedTerm : closedFormDerived

def GeneratingFunctionClosed (G : GeneratingFunction seq) : Prop :=
  G.rationalForm ∧ G.closedFormDerived

theorem generating_function_closed_from_evidence (G : GeneratingFunction seq) :
    GeneratingFunctionClosed G := by
  exact And.intro G.rationalFormTerm G.closedFormDerivedTerm

end CalculationIntegerSequencesLemmaCanonicalLaneLean
end HautevilleHouse