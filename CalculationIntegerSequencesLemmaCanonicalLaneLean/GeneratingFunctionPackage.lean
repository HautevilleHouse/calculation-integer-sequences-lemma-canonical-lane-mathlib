import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesLemmaCanonicalLaneLean

structure GeneratingFunctionPackage where
  sequence : ℕ → ℤ
  generatingFunction : ℕ → ℤ → ℤ  -- polynomial coefficients
  formalPowerSeries : Prop
  rationalGeneratingFunction : Prop
  explicitClosedForm : Prop

structure GeneratingFunctionEvidence (G : GeneratingFunctionPackage) where
  formalPowerSeriesClosed : G.formalPowerSeries
  rationalGeneratingFunctionClosed : G.rationalGeneratingFunction
  explicitClosedFormClosed : G.explicitClosedForm

def GeneratingFunctionClosed (G : GeneratingFunctionPackage) : Prop :=
  G.formalPowerSeries ∧ G.rationalGeneratingFunction ∧ G.explicitClosedForm

theorem generating_function_closed_from_evidence (G : GeneratingFunctionPackage) (E : GeneratingFunctionEvidence G) : GeneratingFunctionClosed G := by
  exact And.intro E.formalPowerSeriesClosed (And.intro E.rationalGeneratingFunctionClosed E.explicitClosedFormClosed)

end CalculationIntegerSequencesLemmaCanonicalLaneLean
end HautevilleHouse
