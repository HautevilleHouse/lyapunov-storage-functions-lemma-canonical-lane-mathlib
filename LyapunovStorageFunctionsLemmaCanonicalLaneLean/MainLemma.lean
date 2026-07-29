import PoincareConjectureCanonicalLaneLean.MainLemma

/-!
# Main Lemma Package
-/

namespace HautevilleHouse
namespace LyapunovStorageFunctionsLemmaCanonicalLaneLean

structure MainLemmaPackage {L : LyapunovFunctionPackage}
    {D : DissipativityMeasurePackage L}
    {S : StorageFunctionConstructionPackage L D}
    {C : ClassicalSolutionLemmaPackage L D S} where
  storageFunctionCharacterization : Prop
  closedLoopStability : Prop

def MainLemmaClosed {L : LyapunovFunctionPackage}
    {D : DissipativityMeasurePackage L}
    {S : StorageFunctionConstructionPackage L D}
    {C : ClassicalSolutionLemmaPackage L D S}
    (M : MainLemmaPackage L D S C) : Prop :=
  M.storageFunctionCharacterization ∧ M.closedLoopStability

structure MainLemmaEvidence {L : LyapunovFunctionPackage}
    {D : DissipativityMeasurePackage L}
    {S : StorageFunctionConstructionPackage L D}
    {C : ClassicalSolutionLemmaPackage L D S}
    (M : MainLemmaPackage L D S C) where
  storageFunctionCharacterizationClosed : M.storageFunctionCharacterization
  closedLoopStabilityClosed : M.closedLoopStability

theorem main_lemma_closed_from_evidence
    {L : LyapunovFunctionPackage} {D : DissipativityMeasurePackage L}
    {S : StorageFunctionConstructionPackage L D}
    {C : ClassicalSolutionLemmaPackage L D S}
    (M : MainLemmaPackage L D S C)
    (E : MainLemmaEvidence M) : MainLemmaClosed M := by
  exact And.intro E.storageFunctionCharacterizationClosed E.closedLoopStabilityClosed

end LyapunovStorageFunctionsLemmaCanonicalLaneLean
end HautevilleHouse
