import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesCanonicalLaneLean

structure LinearSystemPackage (L : InvertibleSheafPackage) where
  globalSections : Type u
  baseLocus : Prop
  dimensionCalculated : Prop
  completeLinearSystem : Prop
  basepointFree : Prop

structure LinearSystemEvidence {L : InvertibleSheafPackage} (S : LinearSystemPackage L) where
  baseLocusClosed : S.baseLocus
  dimensionCalculatedClosed : S.dimensionCalculated
  completeLinearSystemClosed : S.completeLinearSystem
  basepointFreeClosed : S.basepointFree

def LinearSystemClosed {L : InvertibleSheafPackage} (S : LinearSystemPackage L) : Prop :=
  S.baseLocus ∧ S.dimensionCalculated ∧ S.completeLinearSystem ∧ S.basepointFree

theorem linear_system_closed_from_evidence {L : InvertibleSheafPackage} (S : LinearSystemPackage L) (E : LinearSystemEvidence S) : LinearSystemClosed S := by
  exact And.intro E.baseLocusClosed (And.intro E.dimensionCalculatedClosed (And.intro E.completeLinearSystemClosed E.basepointFreeClosed))

end DivisorsLinearSystemsInvertibleSheavesCanonicalLaneLean
end HautevilleHouse