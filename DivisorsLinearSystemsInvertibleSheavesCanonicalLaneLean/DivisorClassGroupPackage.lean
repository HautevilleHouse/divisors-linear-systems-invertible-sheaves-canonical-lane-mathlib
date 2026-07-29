import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesCanonicalLaneLean

structure DivisorClassGroupPackage where
  weilDivisors : Type u
  cartierDivisors : Type v
  linearEquivalence : Prop
  divisorClassGroup : Prop
  weilDivisorsClosed : weilDivisors
  cartierDivisorsClosed : cartierDivisors
  linearEquivalenceClosed : linearEquivalence
  divisorClassGroupClosed : divisorClassGroup

def DivisorClassGroupClosed (D : DivisorClassGroupPackage) : Prop :=
  D.linearEquivalence ∧ D.divisorClassGroup

theorem divisor_class_group_closed (D : DivisorClassGroupPackage) : DivisorClassGroupClosed D := by
  exact And.intro D.linearEquivalenceClosed D.divisorClassGroupClosed

end DivisorsLinearSystemsInvertibleSheavesCanonicalLaneLean
end HautevilleHouse
