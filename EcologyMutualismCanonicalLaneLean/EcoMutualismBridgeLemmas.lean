import EcoMutualismCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMutualismCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MutualismWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.mutualisticBenefit

end EcologyMutualismCanonicalLaneLean
end HautevilleHouse