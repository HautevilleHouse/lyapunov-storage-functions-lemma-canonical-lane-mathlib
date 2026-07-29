import LyapunovStorageFunctionsLemmaCanonicalLaneLean.RicciFlowPDE

/-!
# Lyapunov Storage Functions Package
-/

namespace HautevilleHouse
namespace LyapunovStorageFunctionsLemmaCanonicalLaneLean

structure LyapunovStorageFunctionsPackage {G : RiemannianCurvaturePackage}
    {F : RicciFlowPDEPackage G} (S : ShortTimeExistencePackage F) where
  storageFunctional : Type u
  dissipationRate : Type v
  decreasingCondition : Prop
  energyLowerBound : Prop
  inputToStability : Prop

structure LyapunovStorageFunctionsEvidence {G : RiemannianCurvaturePackage}
    {F : RicciFlowPDEPackage G} {S : ShortTimeExistencePackage F}
    (Epkg : LyapunovStorageFunctionsPackage S) where
  decreasingConditionClosed : Epkg.decreasingCondition
  energyLowerBoundClosed : Epkg.energyLowerBound
  inputToStabilityClosed : Epkg.inputToStability

def LyapunovStorageFunctionsClosed {G : RiemannianCurvaturePackage}
    {F : RicciFlowPDEPackage G} {S : ShortTimeExistencePackage F}
    (Epkg : LyapunovStorageFunctionsPackage S) : Prop :=
  Epkg.decreasingCondition ∧ Epkg.energyLowerBound ∧ Epkg.inputToStability

theorem lyapunov_storage_functions_closed_from_evidence
    {G : RiemannianCurvaturePackage} {F : RicciFlowPDEPackage G}
    {S : ShortTimeExistencePackage F} (Epkg : LyapunovStorageFunctionsPackage S)
    (E : LyapunovStorageFunctionsEvidence Epkg) : LyapunovStorageFunctionsClosed Epkg := by
  exact And.intro E.decreasingConditionClosed
    (And.intro E.energyLowerBoundClosed E.inputToStabilityClosed)

end LyapunovStorageFunctionsLemmaCanonicalLaneLean
end HautevilleHouse