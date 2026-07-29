import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMutualismCanonicalLaneLean

structure ResourceExchangePackage where
  resourceType : String
  exchangeRate : Float
  benefitFunction : Prop
  costConstraint : Prop
  netBenefitPositive : Prop
  benefitHolds : benefitFunction
  costSatisfied : costConstraint
  netPositive : netBenefitPositive

def ResourceExchangeClosed (R : ResourceExchangePackage) : Prop :=
  R.benefitFunction ∧ R.costConstraint ∧ R.netBenefitPositive

theorem resource_exchange_closed (R : ResourceExchangePackage) :
    ResourceExchangeClosed R := by
  exact And.intro R.benefitHolds (And.intro R.costSatisfied R.netPositive)

end EcologyMutualismCanonicalLaneLean
end HautevilleHouse