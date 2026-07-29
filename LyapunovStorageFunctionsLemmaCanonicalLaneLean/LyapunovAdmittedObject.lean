import canonicalLaneMathlib.LyapunovAdmittedObject

namespace HautevilleHouse
namespace LyapunovStorageFunctionsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure LyapunovAdmittedObject where
  lyapunovPackage : LyapunovFunctionPackage
  storagePackage : StorageFunctionPackage
  bridge : LyapunovBridgePackage lyapunovPackage storagePackage
  conclusion : LyapunovBridgeClosed lyapunovPackage storagePackage bridge

def LyapunovWitnessClosed (O : LyapunovAdmittedObject) : Prop :=
  O.conclusion

end LyapunovStorageFunctionsLemmaCanonicalLaneLean
end HautevilleHouse