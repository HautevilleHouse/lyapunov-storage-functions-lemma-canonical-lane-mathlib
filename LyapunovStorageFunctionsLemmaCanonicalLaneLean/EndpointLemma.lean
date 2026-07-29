import PoincareConjectureCanonicalLaneLean.EndpointLemma

/-!
# Endpoint Lemma Package
-/

namespace HautevilleHouse
namespace LyapunovStorageFunctionsLemmaCanonicalLaneLean

structure EndpointLemmaPackage {L : LyapunovFunctionPackage}
    {D : DissipativityMeasurePackage L}
    {S : StorageFunctionConstructionPackage L D}
    {C : ClassicalSolutionLemmaPackage L D S}
    (M : MainLemmaPackage L D S C) where
  terminalStorageCondition : Prop
  globalAsymptoticStability : Prop

structure EndpointLemmaEvidence {L : LyapunovFunctionPackage}
    {D : DissipativityMeasurePackage L}
    {S : StorageFunctionConstructionPackage L D}
    {C : ClassicalSolutionLemmaPackage L D S}
    {M : MainLemmaPackage L D S C}
    (E : EndpointLemmaPackage L D S C M) where
  terminalStorageConditionClosed : E.terminalStorageCondition
  globalAsymptoticStabilityClosed : E.globalAsymptoticStability

def EndpointLemmaClosed {L : LyapunovFunctionPackage}
    {D : DissipativityMeasurePackage L}
    {S : StorageFunctionConstructionPackage L D}
    {C : ClassicalSolutionLemmaPackage L D S}
    {M : MainLemmaPackage L D S C}
    (E : EndpointLemmaPackage L D S C M) : Prop :=
  E.terminalStorageCondition ∧ E.globalAsymptoticStability

theorem endpoint_lemma_closed_from_evidence
    {L : LyapunovFunctionPackage} {D : DissipativityMeasurePackage L}
    {S : StorageFunctionConstructionPackage L D}
    {C : ClassicalSolutionLemmaPackage L D S}
    {M : MainLemmaPackage L D S C}
    (E : EndpointLemmaPackage L D S C M)
    (Ev : EndpointLemmaEvidence E) : EndpointLemmaClosed E := by
  exact And.intro Ev.terminalStorageConditionClosed Ev.globalAsymptoticStabilityClosed

end LyapunovStorageFunctionsLemmaCanonicalLaneLean
end HautevilleHouse
