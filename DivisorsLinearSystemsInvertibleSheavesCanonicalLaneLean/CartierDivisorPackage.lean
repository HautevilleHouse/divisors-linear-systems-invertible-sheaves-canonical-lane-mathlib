import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesCanonicalLaneLean

structure CartierDivisorPackage where
  scheme : Type u
  topology : TopologicalSpace scheme
  structureSheaf : Type v
  localSectionsDefined : Prop
  globalSectionGenerated : Prop
  cartierDataGiven : Prop
  linearEquivalence : Prop

structure CartierDivisorEvidence (D : CartierDivisorPackage) where
  localSectionsDefinedClosed : D.localSectionsDefined
  globalSectionGeneratedClosed : D.globalSectionGenerated
  cartierDataGivenClosed : D.cartierDataGiven
  linearEquivalenceClosed : D.linearEquivalence

def CartierDivisorClosed (D : CartierDivisorPackage) : Prop :=
  D.localSectionsDefined ∧ D.globalSectionGenerated ∧ D.cartierDataGiven ∧ D.linearEquivalence

theorem cartier_divisor_closed_from_evidence (D : CartierDivisorPackage) (E : CartierDivisorEvidence D) : CartierDivisorClosed D := by
  exact And.intro E.localSectionsDefinedClosed (And.intro E.globalSectionGeneratedClosed (And.intro E.cartierDataGivenClosed E.linearEquivalenceClosed))

end DivisorsLinearSystemsInvertibleSheavesCanonicalLaneLean
end HautevilleHouse