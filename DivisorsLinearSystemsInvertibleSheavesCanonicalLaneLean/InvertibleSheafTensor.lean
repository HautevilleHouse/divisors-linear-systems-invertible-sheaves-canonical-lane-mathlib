import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesCanonicalLaneLean

structure InvertibleSheafTensor (X : Type u) [TopologicalSpace X] where
  lineBundles : List (Type v)
  tensorProduct : Type w
  projectiveFlat : Prop
  symmetricMonoidal : Prop

structure InvertibleSheafTensorEvidence {X : Type u} [TopologicalSpace X]
    (T : InvertibleSheafTensor X) where
  projectiveFlatClosed : T.projectiveFlat
  symmetricMonoidalClosed : T.symmetricMonoidal

def InvertibleSheafTensorClosed {X : Type u} [TopologicalSpace X]
    (T : InvertibleSheafTensor X) : Prop :=
  T.projectiveFlat ∧ T.symmetricMonoidal

theorem invertible_sheaf_tensor_closed_from_evidence
    {X : Type u} [TopologicalSpace X] (T : InvertibleSheafTensor X)
    (E : InvertibleSheafTensorEvidence T) : InvertibleSheafTensorClosed T := by
  exact And.intro E.projectiveFlatClosed E.symmetricMonoidalClosed

end DivisorsLinearSystemsInvertibleSheavesCanonicalLaneLean
end HautevilleHouse
