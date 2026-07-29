import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesLemmaCanonicalLaneLean

structure CauchyProductPackage where
  sequenceA : ℕ → ℤ
  sequenceB : ℕ → ℤ
  productDefined : ∀ n : ℕ, ℤ := fun n => ∑ i in Finset.range (n+1), sequenceA i * sequenceB (n - i)
  absoluteConvergence : Prop
  summableProduct : Prop

structure CauchyProductEvidence (C : CauchyProductPackage) where
  absoluteConvergenceClosed : C.absoluteConvergence
  summableProductClosed : C.summableProduct

def CauchyProductClosed (C : CauchyProductPackage) : Prop :=
  C.absoluteConvergence ∧ C.summableProduct

theorem cauchy_product_closed_from_evidence (C : CauchyProductPackage) (E : CauchyProductEvidence C) : CauchyProductClosed C := by
  exact And.intro E.absoluteConvergenceClosed E.summableProductClosed

end CalculationIntegerSequencesLemmaCanonicalLaneLean
end HautevilleHouse
