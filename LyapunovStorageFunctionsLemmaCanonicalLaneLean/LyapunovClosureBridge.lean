import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyapunovStorageFunctionsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  StorageFunctionWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end LyapunovStorageFunctionsLemmaCanonicalLaneLean
end HautevilleHouse