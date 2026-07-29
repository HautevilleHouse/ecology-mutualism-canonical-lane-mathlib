import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMutualismCanonicalLaneLean

structure AdmissibleClass where
  object : MutualismAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MutualismWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EcologyMutualismCanonicalLaneLean
end HautevilleHouse