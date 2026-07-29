import PoincareConjectureCanonicalLaneLean.StorageFunctionConstruction

/-!
# Storage Function Construction Package
-/

namespace HautevilleHouse
namespace LyapunovStorageFunctionsLemmaCanonicalLaneLean

structure StorageFunctionConstructionPackage {L : LyapunovFunctionPackage}
    {D : DissipativityMeasurePackage L} where
  candidateFunction : L.stateSpace → ℝ
  monotonicityAlongFlows : Prop
  boundednessProperties : Prop
  closureUnderLimits : Prop

structure StorageFunctionConstructionEvidence {L : LyapunovFunctionPackage}
    {D : DissipativityMeasurePackage L}
    (S : StorageFunctionConstructionPackage L D) where
  monotonicityAlongFlowsClosed : S.monotonicityAlongFlows
  boundednessPropertiesClosed : S.boundednessProperties
  closureUnderLimitsClosed : S.closureUnderLimits

def StorageFunctionConstructionClosed {L : LyapunovFunctionPackage}
    {D : DissipativityMeasurePackage L}
    (S : StorageFunctionConstructionPackage L D) : Prop :=
  S.monotonicityAlongFlows ∧ S.boundednessProperties ∧ S.closureUnderLimits

theorem storage_function_construction_closed_from_evidence
    {L : LyapunovFunctionPackage} {D : DissipativityMeasurePackage L}
    (S : StorageFunctionConstructionPackage L D)
    (E : StorageFunctionConstructionEvidence S) : StorageFunctionConstructionClosed S := by
  exact And.intro E.monotonicityAlongFlowsClosed
    (And.intro E.boundednessPropertiesClosed E.closureUnderLimitsClosed)

end LyapunovStorageFunctionsLemmaCanonicalLaneLean
end HautevilleHouse
