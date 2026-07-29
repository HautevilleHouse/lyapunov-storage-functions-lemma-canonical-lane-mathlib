import HautevilleHouse.LyapunovStorageFunctionsLemmaCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace LyapunovStorageFunctionsLemmaCanonicalLaneLean

structure LyapunovAdmittedObject where
  system : Type
  stateSpace : Type
  lyapunovFunction : stateSpace → ℝ
  differentialInequality : Prop
  equilibriumStability : Prop
  conclusion : equilibriumStability

def LyapunovFunctionClosed (O : LyapunovAdmittedObject) : Prop :=
  O.equilibriumStability

end LyapunovStorageFunctionsLemmaCanonicalLaneLean
end HautevilleHouse
