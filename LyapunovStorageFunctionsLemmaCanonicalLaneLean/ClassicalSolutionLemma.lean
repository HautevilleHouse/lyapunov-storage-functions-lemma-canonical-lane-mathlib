import PoincareConjectureCanonicalLaneLean.ClassicalSolutionLemma

/-!
# Classical Solution Lemma Package
-/

namespace HautevilleHouse
namespace LyapunovStorageFunctionsLemmaCanonicalLaneLean

structure ClassicalSolutionLemmaPackage {L : LyapunovFunctionPackage}
    {D : DissipativityMeasurePackage L}
    {S : StorageFunctionConstructionPackage L D} where
  existenceOfStorageFunction : Prop
  minimalityProperty : Prop
  equivalenceToDissipativity : Prop

structure ClassicalSolutionLemmaEvidence {L : LyapunovFunctionPackage}
    {D : DissipativityMeasurePackage L}
    {S : StorageFunctionConstructionPackage L D}
    (C : ClassicalSolutionLemmaPackage L D S) where
  existenceOfStorageFunctionClosed : C.existenceOfStorageFunction
  minimalityPropertyClosed : C.minimalityProperty
  equivalenceToDissipativityClosed : C.equivalenceToDissipativity

def ClassicalSolutionLemmaClosed {L : LyapunovFunctionPackage}
    {D : DissipativityMeasurePackage L}
    {S : StorageFunctionConstructionPackage L D}
    (C : ClassicalSolutionLemmaPackage L D S) : Prop :=
  C.existenceOfStorageFunction ∧ C.minimalityProperty ∧ C.equivalenceToDissipativity

theorem classical_solution_lemma_closed_from_evidence
    {L : LyapunovFunctionPackage} {D : DissipativityMeasurePackage L}
    {S : StorageFunctionConstructionPackage L D}
    (C : ClassicalSolutionLemmaPackage L D S)
    (E : ClassicalSolutionLemmaEvidence C) : ClassicalSolutionLemmaClosed C := by
  exact And.intro E.existenceOfStorageFunctionClosed
    (And.intro E.minimalityPropertyClosed E.equivalenceToDissipativityClosed)

end LyapunovStorageFunctionsLemmaCanonicalLaneLean
end HautevilleHouse
