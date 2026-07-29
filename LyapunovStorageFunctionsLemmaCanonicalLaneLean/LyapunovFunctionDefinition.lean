import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyapunovStorageFunctionsLemmaCanonicalLaneLean

structure LyapunovFunction (X : Type u) [TopologicalSpace X] where
  carrier : X → ℝ
  nonnegative : ∀ x : X, carrier x ≥ 0
  proper : Prop
  continuity : Continuous carrier
  properTerm : proper

def LyapunovFunctionClosed (V : LyapunovFunction X) : Prop :=
  V.nonnegative ∧ V.continuationCriterion

end LyapunovStorageFunctionsLemmaCanonicalLaneLean
end HautevilleHouse