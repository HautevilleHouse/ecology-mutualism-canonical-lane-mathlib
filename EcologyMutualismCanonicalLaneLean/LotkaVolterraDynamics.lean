import HautevilleHouse.EcologyMutualismCanonicalLaneLean.AdmissibleClass

/-!
# Lotka-Volterra Mutualism Dynamics
-/

namespace HautevilleHouse
namespace EcologyMutualismCanonicalLaneLean

structure LotkaVolterraMutualismPackage where
  growthRates : Vector ℝ 2
  interactionMatrix : Matrix (Fin 2) (Fin 2) ℝ
  mutualisticInteraction : interactionMatrix 0 1 > 0 ∧ interactionMatrix 1 0 > 0
  initialCondition : Vector ℝ 2
  solutionExists : Prop
  coexistenceEquilibrium : Prop
  equilibriumStable : Prop

structure LotkaVolterraEvidence (L : LotkaVolterraMutualismPackage) where
  solutionExistsClosed : L.solutionExists
  coexistenceEquilibriumClosed : L.coexistenceEquilibrium
  equilibriumStableClosed : L.equilibriumStable

def LotkaVolterraClosed (L : LotkaVolterraMutualismPackage) : Prop :=
  L.solutionExists ∧ L.coexistenceEquilibrium ∧ L.equilibriumStable

theorem lotka_volterra_closed_from_evidence (L : LotkaVolterraMutualismPackage)
    (E : LotkaVolterraEvidence L) : LotkaVolterraClosed L := by
  exact And.intro E.solutionExistsClosed
    (And.intro E.coexistenceEquilibriumClosed E.equilibriumStableClosed)

end EcologyMutualismCanonicalLaneLean
end HautevilleHouse