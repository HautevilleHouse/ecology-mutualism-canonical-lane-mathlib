import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMutualismCanonicalLaneLean

structure MutualismDynamicsPackage where
  populationState : Type u
  mutualisticInteraction : Prop
  growthRatePositive : Prop
  saturatingBenefit : Prop
  crossDependence : Prop

structure MutualismDynamicsEvidence (M : MutualismDynamicsPackage) where
  mutualisticInteractionClosed : M.mutualisticInteraction
  growthRatePositiveClosed : M.growthRatePositive
  saturatingBenefitClosed : M.saturatingBenefit
  crossDependenceClosed : M.crossDependence

def MutualismDynamicsClosed (M : MutualismDynamicsPackage) : Prop :=
  M.mutualisticInteraction ∧ M.growthRatePositive ∧ M.saturatingBenefit ∧ M.crossDependence

theorem mutualism_dynamics_closed_from_evidence (M : MutualismDynamicsPackage)
    (E : MutualismDynamicsEvidence M) : MutualismDynamicsClosed M := by
  exact And.intro E.mutualisticInteractionClosed
    (And.intro E.growthRatePositiveClosed
      (And.intro E.saturatingBenefitClosed E.crossDependenceClosed))

end EcologyMutualismCanonicalLaneLean
end HautevilleHouse