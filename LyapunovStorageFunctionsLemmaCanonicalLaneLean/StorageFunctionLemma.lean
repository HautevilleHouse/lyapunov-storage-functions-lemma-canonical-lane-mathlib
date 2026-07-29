import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyapunovStorageFunctionsLemmaCanonicalLaneLean

structure StorageCondition (V : LyapunovFunction X) where
  dissipationInequality : Prop
  forwardInvariant : Prop
  appliedToSemigroup : Prop
  dissipationInequalityClosed : dissipationInequality
  forwardInvariantClosed : forwardInvariant

def StorageConditionClosed (V : LyapunovFunction X) (C : StorageCondition V) : Prop :=
  C.dissipationInequality ∧ C.forwardInvariant

theorem storage_condition_closed_from_evidence (V : LyapunovFunction X) (C : StorageCondition V) :
    StorageConditionClosed V C := by
  exact And.intro C.dissipationInequalityClosed C.forwardInvariantClosed

end LyapunovStorageFunctionsLemmaCanonicalLaneLean
end HautevilleHouse