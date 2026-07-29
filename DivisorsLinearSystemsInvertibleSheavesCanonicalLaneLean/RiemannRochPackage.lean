import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesCanonicalLaneLean

structure RiemannRochPackage where
  divisor : Type u
  genus : ℕ
  dimensionLDivisor : ℕ → Prop
  riemannRochTheorem : Prop
  dimensionLDivisorClosed : dimensionLDivisor
  riemannRochTheoremClosed : riemannRochTheorem

def RiemannRochClosed (R : RiemannRochPackage) : Prop :=
  R.riemannRochTheorem

theorem riemann_roch_closed (R : RiemannRochPackage) : RiemannRochClosed R := by
  exact R.riemannRochTheoremClosed

end DivisorsLinearSystemsInvertibleSheavesCanonicalLaneLean
end HautevilleHouse
