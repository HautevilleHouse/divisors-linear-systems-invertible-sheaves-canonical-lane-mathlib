import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesCanonicalLaneLean

structure WeilDivisorPackage where
  scheme : Type u
  topology : TopologicalSpace scheme
  structureSheaf : Type v
  codimOneSubvarieties : Type w
  primeDivisors : Type x
  divisorClassGroup : Type y
  divisorClassGroupComputed : Prop

structure WeilDivisorEvidence (D : WeilDivisorPackage) where
  divisorClassGroupComputedClosed : D.divisorClassGroupComputed

def WeilDivisorClosed (D : WeilDivisorPackage) : Prop :=
  D.divisorClassGroupComputed

theorem weil_divisor_closed_from_evidence (D : WeilDivisorPackage) (E : WeilDivisorEvidence D) : WeilDivisorClosed D := by
  exact E.divisorClassGroupComputedClosed

end DivisorsLinearSystemsInvertibleSheavesCanonicalLaneLean
end HautevilleHouse