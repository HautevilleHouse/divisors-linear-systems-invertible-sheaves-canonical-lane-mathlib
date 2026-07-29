import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesCanonicalLaneLean

structure Divisor (X : Type) [TopologicalSpace X] where
  support : Set X
  coefficients : X → ℤ
  finiteSupport : support.Finite
  coefficientSupport : ∀ x, coefficients x ≠ 0 ↔ x ∈ support

structure CartierDivisor (X : Type) [TopologicalSpace X] [Scheme X] where
  covering : X.OpensCover
  localFunctions : ∀ U : covering.cover, X(U) → ℚ
  transitionCondition : Prop

structure WeilDivisor (X : Type) [TopologicalSpace X] [Scheme X] [Normal X] where
  primeComponents : Set (ClosedIrreducibleSubscheme X 1)
  coefficients : ClosedIrreducibleSubscheme X 1 → ℤ
  finiteSupport : (primeComponents).Finite

end DivisorsLinearSystemsInvertibleSheavesCanonicalLaneLean
end HautevilleHouse