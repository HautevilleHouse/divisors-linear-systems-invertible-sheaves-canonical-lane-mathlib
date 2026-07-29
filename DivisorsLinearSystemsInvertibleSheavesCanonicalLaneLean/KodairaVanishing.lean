import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheaves

structure KodairaVanishingPackage where
  kodairaVanishing : Prop
  relativeKodairaVanishing : Prop
  kodairaVanishingClosed : kodairaVanishing
  relativeKodairaVanishingClosed : relativeKodairaVanishing

structure KodairaVanishingEvidence (K : KodairaVanishingPackage) where
  kodairaVanishingClosed : K.kodairaVanishing
  relativeKodairaVanishingClosed : K.relativeKodairaVanishing

def KodairaVanishingClosed (K : KodairaVanishingPackage) : Prop :=
  K.kodairaVanishing ∧ K.relativeKodairaVanishing

theorem kodaira_vanishing_closed_from_evidence (K : KodairaVanishingPackage) (E : KodairaVanishingEvidence K) : KodairaVanishingClosed K :=
  And.intro E.kodairaVanishingClosed E.relativeKodairaVanishingClosed

end DivisorsLinearSystemsInvertibleSheaves
end HautevilleHouse