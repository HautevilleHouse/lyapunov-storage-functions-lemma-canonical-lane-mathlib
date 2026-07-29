import LyapunovStorageFunctionsLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace LyapunovStorageFunctionsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure LyapunovSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure LyapunovAdmittedObject where
  space : LyapunovSpace
  dynamicalSystem : Prop
  storageFunction : space.carrier → ℝ
  nonnegative : ∀ x : space.carrier, storageFunction x ≥ 0
  decreasingAlongTrajectories : Prop
  conclusion : decreasingAlongTrajectories → asymptoticStability

structure LyapunovEndgameState where
  object : LyapunovAdmittedObject

def LyapunovWitnessClosed (O : LyapunovAdmittedObject) : Prop :=
  O.decreasingAlongTrajectories → asymptoticStability

end LyapunovStorageFunctionsLemmaCanonicalLaneLean
end HautevilleHouse