import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesLemmaCanonicalLaneLean

structure CalculationIntegerSequence where
  carrier : Type
  addition : carrier → carrier → carrier
  multiplication : carrier → carrier → carrier
  zeroElement : carrier
  additionAssociative : ∀ a b c : carrier, addition (addition a b) c = addition a (addition b c)
  additionCommutative : ∀ a b : carrier, addition a b = addition b a
  zeroAdd : ∀ a : carrier, addition zeroElement a = a
  addZero : ∀ a : carrier, addition a zeroElement = a
  multiplicationAssociative : ∀ a b c : carrier, multiplication (multiplication a b) c = multiplication a (multiplication b c)
  multiplicationCommutative : ∀ a b : carrier, multiplication a b = multiplication b a
  distributivity : ∀ a b c : carrier, multiplication a (addition b c) = addition (multiplication a b) (multiplication a c)

def CalculationIntegerSequenceClosed (S : CalculationIntegerSequence) : Prop :=
  S.additionAssociative ∧ S.additionCommutative ∧ S.zeroAdd ∧ S.addZero ∧
  S.multiplicationAssociative ∧ S.multiplicationCommutative ∧ S.distributivity

end CalculationIntegerSequencesLemmaCanonicalLaneLean
end HautevilleHouse