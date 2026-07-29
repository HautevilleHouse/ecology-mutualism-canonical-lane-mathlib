import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMutualismCanonicalLaneLean

structure PopulationDynamicsPackage where
  speciesCount : Nat
  growthRates : Vector ℝ speciesCount
  mutualismStrengths : Matrix ℝ speciesCount speciesCount
  carryingCapacities : Vector ℝ speciesCount
  logisticGrowthTerms : Prop
  mutualisticInteractionTerms : Prop
  equilibriumExistence : Prop
  stabilityProperty : Prop

structure PopulationDynamicsEvidence (P : PopulationDynamicsPackage) where
  logisticGrowthTermsClosed : P.logisticGrowthTerms
  mutualisticInteractionTermsClosed : P.mutualisticInteractionTerms
  equilibriumExistenceClosed : P.equilibriumExistence
  stabilityPropertyClosed : P.stabilityProperty

def PopulationDynamicsClosed (P : PopulationDynamicsPackage) : Prop :=
  P.logisticGrowthTerms ∧ P.mutualisticInteractionTerms ∧
  P.equilibriumExistence ∧ P.stabilityProperty

theorem population_dynamics_closed_from_evidence (P : PopulationDynamicsPackage)
    (E : PopulationDynamicsEvidence P) : PopulationDynamicsClosed P := by
  exact And.intro E.logisticGrowthTermsClosed
    (And.intro E.mutualisticInteractionTermsClosed
      (And.intro E.equilibriumExistenceClosed E.stabilityPropertyClosed))

end EcologyMutualismCanonicalLaneLean
end HautevilleHouse
