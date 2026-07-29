import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DivisorsLinearSystemsInvertibleSheavesCanonicalLaneLean.DivisorClassGroup

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesCanonicalLaneLean

structure PicardGroup (X : Type u) [TopologicalSpace X] where
  invertibleSheaves : Type v
  tensorProduct : invertibleSheaves → invertibleSheaves → invertibleSheaves
  groupStructure : GroupStructure invertibleSheaves
  groupAxioms : Prop
  groupAxiomsTerm : groupAxioms

structure PicardGroupPackage (X : Type u) [TopologicalSpace X] where
  picardGroup : PicardGroup X
  divisibilityRelation : PicardGroupPackage → DivisorClassGroupPackage X
  relationClosed : Prop
  relationClosedTerm : relationClosed

structure PicardGroupEvidence {X : Type u} [TopologicalSpace X]
    (P : PicardGroupPackage X) where
  groupAxiomsClosed : P.picardGroup.groupAxioms
  relationClosed : P.relationClosed

def PicardGroupClosed {X : Type u} [TopologicalSpace X]
    (P : PicardGroupPackage X) : Prop :=
  P.picardGroup.groupAxioms ∧ P.relationClosed

theorem picard_group_closed_from_evidence {X : Type u} [TopologicalSpace X]
    (P : PicardGroupPackage X) (E : PicardGroupEvidence P) :
    PicardGroupClosed P := by
  exact And.intro E.groupAxiomsClosed E.relationClosed

end DivisorsLinearSystemsInvertibleSheavesCanonicalLaneLean
end HautevilleHouse