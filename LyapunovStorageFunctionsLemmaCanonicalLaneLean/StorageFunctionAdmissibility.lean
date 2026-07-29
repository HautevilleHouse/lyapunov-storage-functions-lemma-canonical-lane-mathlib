import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyapunovStorageFunctionsLemmaCanonicalLaneLean

structure StorageFunctionAdmissibleObject where
  storage : ℝ → ℝ
  initialCondition : storage 0 = 0
  monotonicDecay : ∀ t ≥ 0, storage t ≤ 0
  continuous : Continuous storage

def StorageFunctionWitnessClosed (O : StorageFunctionAdmissibleObject) : Prop :=
  O.initialCondition ∧ O.monotonicDecay ∧ O.continuous

end LyapunovStorageFunctionsLemmaCanonicalLaneLean
end HautevilleHouse