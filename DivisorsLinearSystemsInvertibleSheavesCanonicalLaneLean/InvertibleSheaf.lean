import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheaves

structure InvertibleSheafPackage where
  scheme : Type u
  invertibleSheaf : Type v
  tensorProduct : Type w
  existenceOfInverse : Prop
  tensorProductClosed : tensorProduct
  existenceOfInverseClosed : existenceOfInverse

structure InvertibleSheafEvidence (S : InvertibleSheafPackage) where
  tensorProductClosed : S.tensorProduct
  existenceOfInverseClosed : S.existenceOfInverse

def InvertibleSheafClosed (S : InvertibleSheafPackage) : Prop :=
  S.tensorProduct ∧ S.existenceOfInverse

theorem invertible_sheaf_closed_from_evidence (S : InvertibleSheafPackage) (E : InvertibleSheafEvidence S) : InvertibleSheafClosed S :=
  And.intro E.tensorProductClosed E.existenceOfInverseClosed

end DivisorsLinearSystemsInvertibleSheaves
end HautevilleHouse