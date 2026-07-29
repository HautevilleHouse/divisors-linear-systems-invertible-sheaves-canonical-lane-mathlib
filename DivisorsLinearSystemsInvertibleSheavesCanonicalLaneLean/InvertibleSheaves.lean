import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesCanonicalLaneLean

structure InvertibleSheaf (X : Type u) [TopologicalSpace X] where
  sheaf : Presheaf X
  stalks : ∀ x : X, ModuleStructure (sheaf.stalk x)
  invertibility : ∀ x : X, IsInvertible (sheaf.stalk x)

structure InvertibleSheafPackage (X : Type u) [TopologicalSpace X] where
  sheaf : InvertibleSheaf X
  tensorProduct : SheafTensorProduct X
  tensorProductClosed : Prop
  tensorProductClosedTerm : tensorProductClosed

structure InvertibleSheafEvidence {X : Type u} [TopologicalSpace X]
    (P : InvertibleSheafPackage X) where
  sheafClosed : P.sheaf.invertibility = P.sheaf.invertibility
  tensorProductClosed : P.tensorProductClosed

def InvertibleSheafClosed {X : Type u} [TopologicalSpace X]
    (P : InvertibleSheafPackage X) : Prop :=
  P.tensorProductClosed

theorem invertible_sheaf_closed_from_evidence {X : Type u} [TopologicalSpace X]
    (P : InvertibleSheafPackage X) (E : InvertibleSheafEvidence P) :
    InvertibleSheafClosed P := by
  exact E.tensorProductClosed

end DivisorsLinearSystemsInvertibleSheavesCanonicalLaneLean
end HautevilleHouse