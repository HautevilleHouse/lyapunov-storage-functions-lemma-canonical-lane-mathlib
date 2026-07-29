import PoincareConjectureCanonicalLaneLean.DissipativityMeasure

/-!
# Dissipativity Measure Package
-/

namespace HautevilleHouse
namespace LyapunovStorageFunctionsLemmaCanonicalLaneLean

structure DissipativityMeasurePackage {L : LyapunovFunctionPackage} where
  supplyRate : L.stateSpace × L.stateSpace → ℝ
  storageFunction : L.stateSpace → ℝ
  dissipationInequality : Prop
  reachabilityCondition : Prop

structure DissipativityMeasureEvidence {L : LyapunovFunctionPackage}
    (D : DissipativityMeasurePackage L) where
  dissipationInequalityClosed : D.dissipationInequality
  reachabilityConditionClosed : D.reachabilityCondition

def DissipativityMeasureClosed {L : LyapunovFunctionPackage}
    (D : DissipativityMeasurePackage L) : Prop :=
  D.dissipationInequality ∧ D.reachabilityCondition

theorem dissipativity_measure_closed_from_evidence
    {L : LyapunovFunctionPackage} (D : DissipativityMeasurePackage L)
    (E : DissipativityMeasureEvidence D) : DissipativityMeasureClosed D := by
  exact And.intro E.dissipationInequalityClosed E.reachabilityConditionClosed

end LyapunovStorageFunctionsLemmaCanonicalLaneLean
end HautevilleHouse
