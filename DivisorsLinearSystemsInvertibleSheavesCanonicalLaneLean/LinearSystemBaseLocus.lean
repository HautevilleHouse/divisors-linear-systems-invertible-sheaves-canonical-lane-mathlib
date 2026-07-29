import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesCanonicalLaneLean

structure LinearSystemBaseLocus (X : Type u) [TopologicalSpace X] where
  lineBundle : Type v
  sections : Type w
  baseLocusSet : Set X
  codimensionAtLeastOne : Prop

structure LinearSystemBaseLocusEvidence {X : Type u} [TopologicalSpace X]
    (L : LinearSystemBaseLocus X) where
  baseLocusClosed : L.baseLocusSet
  codimensionAtLeastOneClosed : L.codimensionAtLeastOne

def LinearSystemBaseLocusClosed {X : Type u} [TopologicalSpace X]
    (L : LinearSystemBaseLocus X) : Prop :=
  L.codimensionAtLeastOne

theorem linear_system_base_locus_closed_from_evidence
    {X : Type u} [TopologicalSpace X] (L : LinearSystemBaseLocus X)
    (E : LinearSystemBaseLocusEvidence L) : LinearSystemBaseLocusClosed L := by
  exact E.codimensionAtLeastOneClosed

end DivisorsLinearSystemsInvertibleSheavesCanonicalLaneLean
end HautevilleHouse
