import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LyapunovStorageFunctionsLemmaCanonicalLaneLean.LyapunovStorageFunctionsCore

namespace HautevilleHouse
namespace LyapunovStorageFunctionsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | LyapunovStorageObject S => storageFunctionClosed S
  | DissipativityObject D => dissipativitySystemClosed D
  | _ => False

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  unfold bridgeClosed
  cases A.object with
  | LyapunovStorageObject S =>
    -- Assume admissible class provides evidence of closure
    exact A.endpointSatisfied
  | DissipativityObject D =>
    exact A.endpointSatisfied
  | _ => exact A.remainderRecorded

end LyapunovStorageFunctionsLemmaCanonicalLaneLean
end HautevilleHouse