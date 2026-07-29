import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyapunovStorageFunctionsLemmaCanonicalLaneLean

structure LyapunovStorageFunctionPackage where
  stateSpace : Type u
  storageFunction : stateSpace → ℝ
  dissipationRate : stateSpace → ℝ
  positiveDefinite : storageFunction 0 = 0 ∧ ∀ x ≠ 0, storageFunction x > 0
  dissipationNonnegative : ∀ x, dissipationRate x ≥ 0
  dissipationRelation : ∀ x, storageFunction x - storageFunction (someDynamics x) = dissipationRate x

def LyapunovStorageFunctionClosed (L : LyapunovStorageFunctionPackage) : Prop :=
  L.positiveDefinite.1 ∧ L.positiveDefinite.2 ∧ L.dissipationNonnegative ∧ L.dissipationRelation

end LyapunovStorageFunctionsLemmaCanonicalLaneLean
end HautevilleHouse