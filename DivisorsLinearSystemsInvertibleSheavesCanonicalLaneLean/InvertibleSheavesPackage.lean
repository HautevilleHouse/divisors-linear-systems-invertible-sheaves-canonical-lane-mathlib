import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesCanonicalLaneLean

structure InvertibleSheavesPackage where
  scheme : Type u
  structureSheaf : Type v
  invertibleSheaf : Type w
  tensorProductDefined : Prop
  isomorphismClasses : Prop
  picardGroup : Prop
  tensorProductDefinedClosed : tensorProductDefined
  isomorphismClassesClosed : isomorphismClasses
  picardGroupClosed : picardGroup

def InvertibleSheavesClosed (I : InvertibleSheavesPackage) : Prop :=
  I.tensorProductDefined ∧ I.isomorphismClasses ∧ I.picardGroup

theorem invertible_sheaves_closed (I : InvertibleSheavesPackage) : InvertibleSheavesClosed I := by
  exact And.intro I.tensorProductDefinedClosed (And.intro I.isomorphismClassesClosed I.picardGroupClosed)

end DivisorsLinearSystemsInvertibleSheavesCanonicalLaneLean
end HautevilleHouse
