import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyapunovStorageFunctionsLemmaCanonicalLaneLean

structure DissipationInequalityPackage where
  storageFunction : ℝ → ℝ
  supplyRate : ℝ → ℝ
  dissipation : ℝ → ℝ
  inequality : ∀ t, storageFunction t ≤ storageFunction 0 + ∫ 0 to t, (supplyRate s - dissipation s) ds

def DissipationInequalityClosed (D : DissipationInequalityPackage) : Prop :=
  D.inequality

end LyapunovStorageFunctionsLemmaCanonicalLaneLean
end HautevilleHouse