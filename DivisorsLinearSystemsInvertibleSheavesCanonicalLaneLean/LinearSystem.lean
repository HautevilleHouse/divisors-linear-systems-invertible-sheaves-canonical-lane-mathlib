import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheaves

structure LinearSystemPackage where
  completeLinearSystem : Type u
  dimension : Nat
  baseLocusFree : Prop
  veryAmple : Prop
  dimensionClosed : dimension = 0 ∨ dimension > 0
  baseLocusFreeClosed : baseLocusFree

structure LinearSystemEvidence (L : LinearSystemPackage) where
  dimensionClosed : L.dimensionClosed
  baseLocusFreeClosed : L.baseLocusFree

def LinearSystemClosed (L : LinearSystemPackage) : Prop :=
  L.dimensionClosed ∧ L.baseLocusFree

theorem linear_system_closed_from_evidence (L : LinearSystemPackage) (E : LinearSystemEvidence L) : LinearSystemClosed L :=
  And.intro E.dimensionClosed E.baseLocusFreeClosed

end DivisorsLinearSystemsInvertibleSheaves
end HautevilleHouse