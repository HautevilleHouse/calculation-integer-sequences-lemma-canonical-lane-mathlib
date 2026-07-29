import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculationIntegerSequencesLemmaCanonicalLaneLean.IntegerSequencePackage

/-!
# Recurrence and Closed Form Package
-/

namespace HautevilleHouse
namespace CalculationIntegerSequencesLemmaCanonicalLaneLean

structure RecurrencePackage (P : IntegerSequencePackage) where
  linearRecurrence : Prop
  order : Nat
  characteristicPolynomial : Prop
  closedFormExists : Prop
  closedFormMatchesRecurrence : Prop

structure RecurrencePackageEvidence {P : IntegerSequencePackage} (R : RecurrencePackage P) where
  linearRecurrenceClosed : R.linearRecurrence
  orderClosed : R.order = R.order
  characteristicPolynomialClosed : R.characteristicPolynomial
  closedFormExistsClosed : R.closedFormExists
  closedFormMatchesRecurrenceClosed : R.closedFormMatchesRecurrence

def RecurrencePackageClosed {P : IntegerSequencePackage} (R : RecurrencePackage P) : Prop :=
  R.linearRecurrence ∧ R.characteristicPolynomial ∧
  R.closedFormExists ∧ R.closedFormMatchesRecurrence

theorem recurrence_package_closed_from_evidence
    {P : IntegerSequencePackage} (R : RecurrencePackage P)
    (E : RecurrencePackageEvidence R) : RecurrencePackageClosed R := by
  exact And.intro E.linearRecurrenceClosed
    (And.intro E.characteristicPolynomialClosed
      (And.intro E.closedFormExistsClosed E.closedFormMatchesRecurrenceClosed))

end CalculationIntegerSequencesLemmaCanonicalLaneLean
end HautevilleHouse
