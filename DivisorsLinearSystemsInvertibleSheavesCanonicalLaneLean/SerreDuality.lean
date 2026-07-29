import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesCanonicalLaneLean

structure SerreDualityData (X : Type) [TopologicalSpace X] [Scheme X] [Proper X] [Smooth X] where
  dualizingSheaf : InvertibleSheaf X
  traceMap : (sheafCoherent (dualizingSheaf.sheaf)) → O_X
  dualityTheorem : ∀ F : CoherentSheaf X, Extⁱ(F, dualizingSheaf) ≅ H^(n-i)(X, F)∨

structure SerreDualityEvidence (X : Type) [TopologicalSpace X] [Scheme X] [Proper X] [Smooth X] (S : SerreDualityData X) where
  dualizingSheafClosed : True
  traceMapClosed : True
  dualityTheoremClosed : True

end DivisorsLinearSystemsInvertibleSheavesCanonicalLaneLean
end HautevilleHouse