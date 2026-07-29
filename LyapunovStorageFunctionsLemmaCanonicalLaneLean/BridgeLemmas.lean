import canonicalLaneMathlib.BridgeLemmas

namespace HautevilleHouse
namespace LyapunovStorageFunctionsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LyapunovWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end LyapunovStorageFunctionsLemmaCanonicalLaneLean
end HautevilleHouse