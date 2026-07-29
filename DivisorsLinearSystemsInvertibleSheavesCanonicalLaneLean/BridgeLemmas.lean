import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DivisorsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DivisorsLinearSystemsInvertibleSheavesCanonicalLaneLean
end HautevilleHouse