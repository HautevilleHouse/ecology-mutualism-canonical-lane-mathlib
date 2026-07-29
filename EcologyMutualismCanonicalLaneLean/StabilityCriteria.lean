import EcologyMutualismCanonicalLaneLean.PopulationDynamicsPDE

namespace HautevilleHouse
namespace EcologyMutualismCanonicalLaneLean

structure StabilityCriteriaPackage {M : MutualisticNetworkPackage}
    (P : PopulationDynamicsPackage M) where
  jacobianMatrix : Prop
  eigenvalueCondition : Prop
  lyapunovFunction : Prop
  stabilityMargin : Prop

structure StabilityCriteriaEvidence {M : MutualisticNetworkPackage}
    {P : PopulationDynamicsPackage M} (S : StabilityCriteriaPackage P) where
  jacobianMatrixClosed : S.jacobianMatrix
  eigenvalueConditionClosed : S.eigenvalueCondition
  lyapunovFunctionClosed : S.lyapunovFunction
  stabilityMarginClosed : S.stabilityMargin

def StabilityCriteriaClosed {M : MutualisticNetworkPackage}
    {P : PopulationDynamicsPackage M} (S : StabilityCriteriaPackage P) : Prop :=
  S.jacobianMatrix ∧ S.eigenvalueCondition ∧
  S.lyapunovFunction ∧ S.stabilityMargin

theorem stability_criteria_closed_from_evidence
    {M : MutualisticNetworkPackage} {P : PopulationDynamicsPackage M}
    (S : StabilityCriteriaPackage P) (E : StabilityCriteriaEvidence S) :
    StabilityCriteriaClosed S := by
  exact And.intro E.jacobianMatrixClosed
    (And.intro E.eigenvalueConditionClosed
      (And.intro E.lyapunovFunctionClosed E.stabilityMarginClosed))

end EcologyMutualismCanonicalLaneLean
end HautevilleHouse