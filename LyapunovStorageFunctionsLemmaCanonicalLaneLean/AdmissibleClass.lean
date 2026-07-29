import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyapunovStorageFunctionsLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : LyapunovAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  LyapunovWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LyapunovStorageFunctionsLemmaCanonicalLaneLean
end HautevilleHouse