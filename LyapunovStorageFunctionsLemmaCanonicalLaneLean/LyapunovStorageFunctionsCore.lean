import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyapunovStorageFunctionsLemmaCanonicalLaneLean

structure LyapunovStorageFunction (X : Type u) where
  domain : Set X
  V : X → ℝ
  nonnegative : ∀ x ∈ domain, 0 ≤ V x
  proper : ∀ c : ℝ, {x ∈ domain | V x ≤ c}.Finite

def storageFunctionClosed (S : LyapunovStorageFunction X) : Prop :=
  S.nonnegative ∧ S.proper

structure DissipativitySystem (X : Type u) where
  stateSpace : Set X
  input : Type v
  output : Type w
  dynamics : X × input → X
  storage : LyapunovStorageFunction X
  dissipationInequality : ∀ (x : X) (u : input) (hx : x ∈ stateSpace),
    storage.V (dynamics (x, u)) ≤ storage.V x

def dissipativitySystemClosed (D : DissipativitySystem X) : Prop :=
  storageFunctionClosed D.storage ∧ D.dissipationInequality

end LyapunovStorageFunctionsLemmaCanonicalLaneLean
end HautevilleHouse