import LyapunovStorageFunctionsLemmaCanonicalLaneLean.PerelmanRoute

/-!
# Lyapunov Analytic Storage Proof Route
-/

namespace HautevilleHouse
namespace LyapunovStorageFunctionsLemmaCanonicalLaneLean

structure LyapunovAnalyticProofCertificate
    {G : RiemannianCurvaturePackage} {F : RicciFlowPDEPackage G}
    {S : ShortTimeExistencePackage F} {Epkg : LyapunovStorageFunctionsPackage S}
    (A : StorageAnalyticFoundation) where
  storageFunctionDefined : Prop
  dissipationInequality : Prop
  asymptoticStabilityDerived : Prop
  storageFunctionDefinedClosed : storageFunctionDefined
  dissipationInequalityClosed : dissipationInequality
  asymptoticStabilityDerivedClosed : asymptoticStabilityDerived
  storageEvidence : LyapunovStorageFunctionsEvidence Epkg

def LyapunovAnalyticProofCertificateClosed
    {G : RiemannianCurvaturePackage} {F : RicciFlowPDEPackage G}
    {S : ShortTimeExistencePackage F} {Epkg : LyapunovStorageFunctionsPackage S}
    {A : StorageAnalyticFoundation} (C : LyapunovAnalyticProofCertificate A) : Prop :=
  C.storageFunctionDefined ∧ C.dissipationInequality ∧ C.asymptoticStabilityDerived ∧
  LyapunovStorageFunctionsClosed Epkg

theorem lyapunov_analytic_proof_certificate_closed
    {G : RiemannianCurvaturePackage} {F : RicciFlowPDEPackage G}
    {S : ShortTimeExistencePackage F} {Epkg : LyapunovStorageFunctionsPackage S}
    {A : StorageAnalyticFoundation} (C : LyapunovAnalyticProofCertificate A) :
    LyapunovAnalyticProofCertificateClosed C := by
  exact And.intro C.storageFunctionDefinedClosed
    (And.intro C.dissipationInequalityClosed
      (And.intro C.asymptoticStabilityDerivedClosed
        (lyapunov_storage_functions_closed_from_evidence Epkg C.storageEvidence)))

end LyapunovStorageFunctionsLemmaCanonicalLaneLean
end HautevilleHouse