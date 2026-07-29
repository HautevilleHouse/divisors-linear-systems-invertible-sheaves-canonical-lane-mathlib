import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheaves

structure RiemannRochPackage where
  genus : Nat
  canonicalDivisorDegree : Int
  riemannRochFormula : Prop
  serreDuality : Prop
  riemannRochFormulaClosed : riemannRochFormula
  serreDualityClosed : serreDuality

structure RiemannRochEvidence (R : RiemannRochPackage) where
  riemannRochFormulaClosed : R.riemannRochFormula
  serreDualityClosed : R.serreDuality

def RiemannRochClosed (R : RiemannRochPackage) : Prop :=
  R.riemannRochFormula ∧ R.serreDuality

theorem riemann_roch_closed_from_evidence (R : RiemannRochPackage) (E : RiemannRochEvidence R) : RiemannRochClosed R :=
  And.intro E.riemannRochFormulaClosed E.serreDualityClosed

end DivisorsLinearSystemsInvertibleSheaves
end HautevilleHouse