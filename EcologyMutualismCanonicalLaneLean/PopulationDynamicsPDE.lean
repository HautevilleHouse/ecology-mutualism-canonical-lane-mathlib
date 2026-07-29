import EcologyMutualismCanonicalLaneLean.MutualisticNetworkStability

namespace HautevilleHouse
namespace EcologyMutualismCanonicalLaneLean

structure PopulationDynamicsPackage (M : MutualisticNetworkPackage) where
  growthRateSpecies : Type u
  competitionCoefficient : Prop
  mutualisticBenefit : Prop
  lotkaVolterraSystem : Prop
  coexistenceEquilibrium : Prop

structure PopulationDynamicsEvidence {M : MutualisticNetworkPackage}
    (P : PopulationDynamicsPackage M) where
  growthRateSpeciesClosed : P.growthRateSpecies
  competitionCoefficientClosed : P.competitionCoefficient
  mutualisticBenefitClosed : P.mutualisticBenefit
  lotkaVolterraSystemClosed : P.lotkaVolterraSystem
  coexistenceEquilibriumClosed : P.coexistenceEquilibrium

def PopulationDynamicsClosed {M : MutualisticNetworkPackage}
    (P : PopulationDynamicsPackage M) : Prop :=
  P.growthRateSpecies ∧ P.competitionCoefficient ∧
  P.mutualisticBenefit ∧ P.lotkaVolterraSystem ∧
  P.coexistenceEquilibrium

theorem population_dynamics_closed_from_evidence
    {M : MutualisticNetworkPackage} (P : PopulationDynamicsPackage M)
    (E : PopulationDynamicsEvidence P) : PopulationDynamicsClosed P := by
  exact And.intro E.growthRateSpeciesClosed
    (And.intro E.competitionCoefficientClosed
      (And.intro E.mutualisticBenefitClosed
        (And.intro E.lotkaVolterraSystemClosed E.coexistenceEquilibriumClosed)))

end EcologyMutualismCanonicalLaneLean
end HautevilleHouse