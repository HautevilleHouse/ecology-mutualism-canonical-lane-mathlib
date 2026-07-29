import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace EcologyMutualismCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MutualismSpace where
  species : Type
  population : species → ℝ
  dynamics : VectorField species

structure MutualismAdmittedObject where
  space : MutualismSpace
  mutualisticInteraction : Prop
  boundedPopulations : Prop
  coexistenceExists : Prop
  conclusion : coexistenceExists

structure MutualismEndgameState where
  object : MutualismAdmittedObject

def MutualismWitnessClosed (O : MutualismAdmittedObject) : Prop :=
  O.coexistenceExists

end EcologyMutualismCanonicalLaneLean
end HautevilleHouse