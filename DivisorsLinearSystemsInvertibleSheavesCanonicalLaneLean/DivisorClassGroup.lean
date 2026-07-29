import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DivisorsLinearSystemsInvertibleSheavesCanonicalLaneLean.InvertibleSheaves

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesCanonicalLaneLean

structure DivisorClassGroup (X : Type u) [TopologicalSpace X] where
  divisors : Type v
  equivalence : divisors → divisors → Prop
  groupStructure : GroupStructure divisors
  wellDefinedness : Prop
  wellDefinednessTerm : wellDefinedness

structure DivisorClassGroupPackage (X : Type u) [TopologicalSpace X] where
  classGroup : DivisorClassGroup X
  sheafAssociation : X → InvertibleSheafPackage X
  associationClosed : Prop
  associationClosedTerm : associationClosed

structure DivisorClassGroupEvidence {X : Type u} [TopologicalSpace X]
    (P : DivisorClassGroupPackage X) where
  wellDefinednessClosed : P.classGroup.wellDefinedness
  associationClosed : P.associationClosed

def DivisorClassGroupClosed {X : Type u} [TopologicalSpace X]
    (P : DivisorClassGroupPackage X) : Prop :=
  P.classGroup.wellDefinedness ∧ P.associationClosed

theorem divisor_class_group_closed_from_evidence {X : Type u} [TopologicalSpace X]
    (P : DivisorClassGroupPackage X) (E : DivisorClassGroupEvidence P) :
    DivisorClassGroupClosed P := by
  exact And.intro E.wellDefinednessClosed E.associationClosed

end DivisorsLinearSystemsInvertibleSheavesCanonicalLaneLean
end HautevilleHouse