import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculationIntegerSequencesLemmaCanonicalLaneLean.IntegerSequencePackage

/-!
# Monotonicity and Convergence Package
-/

namespace HautevilleHouse
namespace CalculationIntegerSequencesLemmaCanonicalLaneLean

structure MonotonicityPackage (P : IntegerSequencePackage) where
  boundedMonotoneImpliesConvergent : Prop
  convergentToLimit : Prop
  limitIsInteger : Prop
  monotoneSequenceCauchy : Prop

structure MonotonicityPackageEvidence {P : IntegerSequencePackage} (M : MonotonicityPackage P) where
  boundedMonotoneImpliesConvergentClosed : M.boundedMonotoneImpliesConvergent
  convergentToLimitClosed : M.convergentToLimit
  limitIsIntegerClosed : M.limitIsInteger
  monotoneSequenceCauchyClosed : M.monotoneSequenceCauchy

def MonotonicityPackageClosed {P : IntegerSequencePackage} (M : MonotonicityPackage P) : Prop :=
  M.boundedMonotoneImpliesConvergent ∧ M.convergentToLimit ∧
  M.limitIsInteger ∧ M.monotoneSequenceCauchy

theorem monotonicity_package_closed_from_evidence
    {P : IntegerSequencePackage} (M : MonotonicityPackage P)
    (E : MonotonicityPackageEvidence M) : MonotonicityPackageClosed M := by
  exact And.intro E.boundedMonotoneImpliesConvergentClosed
    (And.intro E.convergentToLimitClosed
      (And.intro E.limitIsIntegerClosed E.monotoneSequenceCauchyClosed))

end CalculationIntegerSequencesLemmaCanonicalLaneLean
end HautevilleHouse
