import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMutualismCanonicalLaneLean

structure MutualismAdmittedObject where
  speciesPair : Type u
  interactionNetwork : Type v
  mutualisticBenefit : Prop
  stabilityCondition : Prop
  boundaryCondition : Prop

structure AdmissibleClass where
  object : MutualismAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MutualismWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EcologyMutualismCanonicalLaneLean
end HautevilleHouse