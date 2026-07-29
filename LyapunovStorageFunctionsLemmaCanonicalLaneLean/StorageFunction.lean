import canonicalLaneMathlib.StorageFunction

namespace HautevilleHouse
namespace LyapunovStorageFunctionsLemmaCanonicalLaneLean

structure StorageFunctionPackage where
  stateSpace : Type u
  supply : stateSpace → ℝ
  demand : stateSpace → ℝ
  storageFunction : stateSpace → ℝ
  storageNonnegative : ∀ x, storageFunction x ≥ 0
  supplyDemandInequality : ∀ x, storageFunction (nextState x) - storageFunction x ≤ supply x - demand x
  nextState : stateSpace → stateSpace

def StorageFunctionClosed (S : StorageFunctionPackage) : Prop :=
  S.storageNonnegative ∧ S.supplyDemandInequality

end LyapunovStorageFunctionsLemmaCanonicalLaneLean
end HautevilleHouse