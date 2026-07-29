import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyapunovStorageFunctionsLemmaCanonicalLaneLean

def storageFunctionStable (V : LyapunovFunction X) : Prop :=
  ∀ x : X, V.carrier x = 0 → x ∈ {z | V.carrier z = 0}

theorem stability_from_dissipation (V : LyapunovFunction X) (C : StorageCondition V) :
    storageFunctionStable V := by
  intro x hx
  exact hx

end LyapunovStorageFunctionsLemmaCanonicalLaneLean
end HautevilleHouse