import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculationIntegerSequencesLemmaCanonicalLaneLean.SequenceGeneratingFunction

namespace HautevilleHouse
namespace CalculationIntegerSequencesLemmaCanonicalLaneLean

structure RecurrenceSolver (S : CalculationIntegerSequence) (F : SequenceGeneratingFunction S) where
  characteristicPolynomial : S.carrier
  initialConditions : List S.carrier
  closedFormDerived : Prop
  proofUsingGeneratingFunctions : Prop

def RecurrenceSolverClosed (S : CalculationIntegerSequence) (F : SequenceGeneratingFunction S) (R : RecurrenceSolver S F) : Prop :=
  R.closedFormDerived ∧ R.proofUsingGeneratingFunctions

theorem recurrence_solver_closed_from_props
  (S : CalculationIntegerSequence) (F : SequenceGeneratingFunction S) (R : RecurrenceSolver S F)
  (h1 : R.closedFormDerived) (h2 : R.proofUsingGeneratingFunctions) : RecurrenceSolverClosed S F R := by
  exact And.intro h1 h2

end CalculationIntegerSequencesLemmaCanonicalLaneLean
end HautevilleHouse