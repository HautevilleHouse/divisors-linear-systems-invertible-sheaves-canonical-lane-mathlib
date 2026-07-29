import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DivisorsLinearSystemsInvertibleSheavesCanonicalLaneLean.PicardGroup

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesCanonicalLaneLean

structure RiemannRochSpace (X : Type u) [TopologicalSpace X] where
  divisor : Type v
  sections : divisor → Type w
  dimension : divisor → ℕ
  sheafCohomology : divisor → ℕ → Type w

structure RiemannRochPackage (X : Type u) [TopologicalSpace X] where
  riemannRochSpace : RiemannRochSpace X
  formula : Prop
  formulaProof : formula
  sheafInterpretation : PicardGroupPackage X
  interpretationClosed : Prop
  interpretationClosedTerm : interpretationClosed

structure RiemannRochEvidence {X : Type u} [TopologicalSpace X]
    (P : RiemannRochPackage X) where
  formulaClosed : P.formula
  interpretationClosed : P.interpretationClosed

def RiemannRochClosed {X : Type u} [TopologicalSpace X]
    (P : RiemannRochPackage X) : Prop :=
  P.formula ∧ P.interpretationClosed

theorem riemann_roch_closed_from_evidence {X : Type u} [TopologicalSpace X]
    (P : RiemannRochPackage X) (E : RiemannRochEvidence P) :
    RiemannRochClosed P := by
  exact And.intro E.formulaClosed E.interpretationClosed

end DivisorsLinearSystemsInvertibleSheavesCanonicalLaneLean
end HautevilleHouse