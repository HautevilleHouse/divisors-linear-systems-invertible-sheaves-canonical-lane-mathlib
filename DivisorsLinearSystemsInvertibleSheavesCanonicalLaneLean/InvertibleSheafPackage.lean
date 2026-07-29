import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesCanonicalLaneLean

structure InvertibleSheafPackage where
  scheme : Type u
  topology : TopologicalSpace scheme
  structureSheaf : Type v
  sheafOfModules : Type w
  locallyFreeOfRankOne : Prop
  tensorProductsDefined : Prop
  SerreTwistingSheaf : Prop

structure InvertibleSheafEvidence (L : InvertibleSheafPackage) where
  locallyFreeOfRankOneClosed : L.locallyFreeOfRankOne
  tensorProductsDefinedClosed : L.tensorProductsDefined
  SerreTwistingSheafClosed : L.SerreTwistingSheaf

def InvertibleSheafClosed (L : InvertibleSheafPackage) : Prop :=
  L.locallyFreeOfRankOne ∧ L.tensorProductsDefined ∧ L.SerreTwistingSheaf

theorem invertible_sheaf_closed_from_evidence (L : InvertibleSheafPackage) (E : InvertibleSheafEvidence L) : InvertibleSheafClosed L := by
  exact And.intro E.locallyFreeOfRankOneClosed (And.intro E.tensorProductsDefinedClosed E.SerreTwistingSheafClosed)

end DivisorsLinearSystemsInvertibleSheavesCanonicalLaneLean
end HautevilleHouse