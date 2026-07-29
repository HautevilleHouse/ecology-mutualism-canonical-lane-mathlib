import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMutualismCanonicalLaneLean

structure SpatialDistributionPackage where
  habitatArea : Float
  dispersalRate : Float
  colonisationProbability : Prop
  extinctionRisk : Prop
  persistenceCondition : Prop
  colonisationHolds : colonisationProbability
  extinctionBounded : extinctionRisk
  persistenceAchieved : persistenceCondition

def SpatialDistributionClosed (S : SpatialDistributionPackage) : Prop :=
  S.colonisationProbability ∧ S.extinctionRisk ∧ S.persistenceCondition

theorem spatial_distribution_closed (S : SpatialDistributionPackage) :
    SpatialDistributionClosed S := by
  exact And.intro S.colonisationHolds (And.intro S.extinctionBounded S.persistenceAchieved)

end EcologyMutualismCanonicalLaneLean
end HautevilleHouse