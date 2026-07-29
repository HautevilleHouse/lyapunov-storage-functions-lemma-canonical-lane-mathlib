import canonicalLaneMathlib.LyapunovFunction

namespace HautevilleHouse
namespace LyapunovStorageFunctionsLemmaCanonicalLaneLean

structure LyapunovFunctionPackage where
  stateSpace : Type u
  dynamics : stateSpace → stateSpace
  lyapunovFunction : stateSpace → ℝ
  positiveDefinite : ∀ x ≠ 0, lyapunovFunction x > 0
  strictlyDecreasing : ∀ x ≠ 0, lyapunovFunction (dynamics x) < lyapunovFunction x

def LyapunovFunctionClosed (L : LyapunovFunctionPackage) : Prop :=
  L.positiveDefinite ∧ L.strictlyDecreasing

end LyapunovStorageFunctionsLemmaCanonicalLaneLean
end HautevilleHouse