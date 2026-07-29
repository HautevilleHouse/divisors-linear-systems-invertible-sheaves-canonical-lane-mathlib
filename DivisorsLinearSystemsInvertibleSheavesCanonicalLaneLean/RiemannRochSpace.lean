import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesCanonicalLaneLean

structure RiemannRochSpace (X : Type u) [TopologicalSpace X] where
  divisorClass : Type v
  cohomology : Type w
  eulerCharacteristic : ℤ
  serreDuality : Prop

structure RiemannRochSpaceEvidence {X : Type u} [TopologicalSpace X]
    (R : RiemannRochSpace X) where
  eulerCharacteristicClosed : R.eulerCharacteristic = 0
  serreDualityClosed : R.serreDuality

def RiemannRochSpaceClosed {X : Type u} [TopologicalSpace X]
    (R : RiemannRochSpace X) : Prop :=
  R.serreDuality

theorem riemann_roch_space_closed_from_evidence
    {X : Type u} [TopologicalSpace X] (R : RiemannRochSpace X)
    (E : RiemannRochSpaceEvidence R) : RiemannRochSpaceClosed R := by
  exact E.serreDualityClosed

end DivisorsLinearSystemsInvertibleSheavesCanonicalLaneLean
end HautevilleHouse
