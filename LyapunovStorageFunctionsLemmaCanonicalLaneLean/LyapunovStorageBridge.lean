import canonicalLaneMathlib.LyapunovStorageBridge

namespace HautevilleHouse
namespace LyapunovStorageFunctionsLemmaCanonicalLaneLean

structure LyapunovBridgePackage (L : LyapunovFunctionPackage) (S : StorageFunctionPackage) where
  stabilityFromStorage : Prop
  storageFromLyapunov : Prop
  compatibility : Prop

def LyapunovBridgeClosed (L : LyapunovFunctionPackage) (S : StorageFunctionPackage) (B : LyapunovBridgePackage L S) : Prop :=
  B.stabilityFromStorage ∧ B.storageFromLyapunov ∧ B.compatibility

end LyapunovStorageFunctionsLemmaCanonicalLaneLean
end HautevilleHouse