import EcoMutualismCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace EcologyMutualismCanonicalLaneLean

structure MutualismSpace where
  carrier : Type u
  topology : TopologicalSpace carrier

structure MutualismAdmittedObject where
  space : MutualismSpace
  closedThreeManifold : Prop
  simplyConnected : Prop
  sphereModel : Type u
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

def MutualismWitnessClosed (O : MutualismAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end EcologyMutualismCanonicalLaneLean
end HautevilleHouse