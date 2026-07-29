import EcologyMutualismCanonicalLaneLean.StabilityCriteria

namespace HautevilleHouse
namespace EcologyMutualismCanonicalLaneLean

structure EndpointClassificationPackage {M : MutualisticNetworkPackage}
    {P : PopulationDynamicsPackage M} {S : StabilityCriteriaPackage P}
    (Z : EndpointFoundationPackage) where
  targetEcosystem : Type u
  targetTopology : TopologicalSpace targetEcosystem
  stableCoexistence : Prop
  mutualismThresholdCrossed : Prop
  endpointMatchesEcologyStatement : Prop

structure EndpointClassificationEvidence {M : MutualisticNetworkPackage}
    {P : PopulationDynamicsPackage M} {S : StabilityCriteriaPackage P}
    {Z : EndpointFoundationPackage} (Epkg : EndpointClassificationPackage Z) where
  stableCoexistenceClosed : Epkg.stableCoexistence
  mutualismThresholdCrossedClosed : Epkg.mutualismThresholdCrossed
  endpointMatchesEcologyStatementClosed : Epkg.endpointMatchesEcologyStatement

def EndpointClassificationClosed {M : MutualisticNetworkPackage}
    {P : PopulationDynamicsPackage M} {S : StabilityCriteriaPackage P}
    {Z : EndpointFoundationPackage} (Epkg : EndpointClassificationPackage Z) : Prop :=
  Epkg.stableCoexistence ∧ Epkg.mutualismThresholdCrossed ∧
  Epkg.endpointMatchesEcologyStatement

theorem endpoint_classification_closed_from_evidence
    {M : MutualisticNetworkPackage} {P : PopulationDynamicsPackage M}
    {S : StabilityCriteriaPackage P} {Z : EndpointFoundationPackage}
    (Epkg : EndpointClassificationPackage Z) (E : EndpointClassificationEvidence Epkg) :
    EndpointClassificationClosed Epkg := by
  exact And.intro E.stableCoexistenceClosed
    (And.intro E.mutualismThresholdCrossedClosed E.endpointMatchesEcologyStatementClosed)

end EcologyMutualismCanonicalLaneLean
end HautevilleHouse