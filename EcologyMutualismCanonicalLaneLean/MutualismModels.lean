import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMutualismCanonicalLaneLean

structure MutualismAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  ecologicalMutualism : Prop
  equilibriumExistence : Prop
  stabilityCondition : Prop
  spModel : Type
  spTopology : TopologicalSpace spModel
  mutuallyBeneficialRelation : Prop
  conclusion : mutuallyBeneficialRelation

def MutualismWitnessClosed (O : MutualismAdmittedObject) : Prop :=
  O.mutuallyBeneficialRelation

end EcologyMutualismCanonicalLaneLean
end HautevilleHouse