import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheaves

structure CanonicalDivisorPackage where
  canonicalClass : Type u
  degree : Int
  selfIntersection : Int
  vanishingTheorem : Prop
  adjunctionFormula : Prop
  degreeClosed : degree = 2 * (RiemannRochPackage.genus - 1)
  selfIntersectionClosed : selfIntersection = degree ^ 2

structure CanonicalDivisorEvidence (C : CanonicalDivisorPackage) where
  degreeClosed : C.degreeClosed
  selfIntersectionClosed : C.selfIntersectionClosed

def CanonicalDivisorClosed (C : CanonicalDivisorPackage) : Prop :=
  C.degreeClosed ∧ C.selfIntersectionClosed

theorem canonical_divisor_closed_from_evidence (C : CanonicalDivisorPackage) (E : CanonicalDivisorEvidence C) : CanonicalDivisorClosed C :=
  And.intro E.degreeClosed E.selfIntersectionClosed

end DivisorsLinearSystemsInvertibleSheaves
end HautevilleHouse