import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyapunovStorageFunctionsLemmaCanonicalLaneLean

def lyapunovGateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem lyapunov_gate_from_admissible_class (A : AdmissibleClass) :
    lyapunovGateClosed A := by
  exact A.gateWitness

end LyapunovStorageFunctionsLemmaCanonicalLaneLean
end HautevilleHouse