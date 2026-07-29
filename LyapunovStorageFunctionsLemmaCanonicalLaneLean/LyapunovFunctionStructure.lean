import PoincareConjectureCanonicalLaneLean.LyapunovFunctionStructure

/-!
# Lyapunov Function Structure Package
-/

namespace HautevilleHouse
namespace LyapunovStorageFunctionsLemmaCanonicalLaneLean

structure LyapunovFunctionPackage where
  stateSpace : Type u
  lyapunovFunction : stateSpace → ℝ
  positiveDefinite : Prop
  decreasingAlongFlows : Prop
  equilibriumStability : Prop

structure LyapunovFunctionEvidence (L : LyapunovFunctionPackage) where
  positiveDefiniteClosed : L.positiveDefinite
  decreasingAlongFlowsClosed : L.decreasingAlongFlows
  equilibriumStabilityClosed : L.equilibriumStability

def LyapunovFunctionClosed (L : LyapunovFunctionPackage) : Prop :=
  L.positiveDefinite ∧ L.decreasingAlongFlows ∧ L.equilibriumStability

theorem lyapunov_function_closed_from_evidence (L : LyapunovFunctionPackage)
    (E : LyapunovFunctionEvidence L) : LyapunovFunctionClosed L := by
  exact And.intro E.positiveDefiniteClosed
    (And.intro E.decreasingAlongFlowsClosed E.equilibriumStabilityClosed)

end LyapunovStorageFunctionsLemmaCanonicalLaneLean
end HautevilleHouse
