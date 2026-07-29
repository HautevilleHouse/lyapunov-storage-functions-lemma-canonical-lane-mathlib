import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LyapunovStorageFunctionsLemmaCanonicalLaneLean.LyapunovStorageFunctionsCore
import HautevilleHouse.LyapunovStorageFunctionsLemmaCanonicalLaneLean.LyapunovStorageFunctionsBridge
import HautevilleHouse.LyapunovStorageFunctionsLemmaCanonicalLaneLean.LyapunovStorageFunctionsGate

namespace HautevilleHouse
namespace LyapunovStorageFunctionsLemmaCanonicalLaneLean

def ConstrainedLyapunovStorageClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_lyapunov_storage_endgame (A : AdmissibleClass) :
    ConstrainedLyapunovStorageClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LyapunovStorageFunctionsLemmaCanonicalLaneLean
end HautevilleHouse