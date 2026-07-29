import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesLemmaCanonicalLaneLean

structure GeneratingFunctionPackage {S : SequencePackage} where
  generatingFunction : ℕ → Type u
  rationalFunction : Prop
  closedFormDerived : Prop
  convolutionIdentity : Prop

structure GeneratingFunctionEvidence {S : SequencePackage} (G : GeneratingFunctionPackage S) where
  rationalFunctionClosed : G.rationalFunction
  closedFormDerivedClosed : G.closedFormDerived
  convolutionIdentityClosed : G.convolutionIdentity

def GeneratingFunctionClosed {S : SequencePackage} (G : GeneratingFunctionPackage S) : Prop :=
  G.rationalFunction ∧ G.closedFormDerived ∧ G.convolutionIdentity

theorem generating_function_closed_from_evidence
    {S : SequencePackage} (G : GeneratingFunctionPackage S) (E : GeneratingFunctionEvidence G) :
    GeneratingFunctionClosed G := by
  exact And.intro E.rationalFunctionClosed (And.intro E.closedFormDerivedClosed E.convolutionIdentityClosed)

end CalculationIntegerSequencesLemmaCanonicalLaneLean
end HautevilleHouse