import EcologyMutualismCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMutualismCanonicalLaneLean

structure MutualisticNetworkPackage where
  bipartiteGraph : Type u
  pollinatorAbundance : Prop
  plantReproductiveSuccess : Prop
  nestednessMeasure : Prop
  robustness : Prop

structure MutualisticNetworkEvidence (M : MutualisticNetworkPackage) where
  pollinatorAbundanceClosed : M.pollinatorAbundance
  plantReproductiveSuccessClosed : M.plantReproductiveSuccess
  nestednessMeasureClosed : M.nestednessMeasure
  robustnessClosed : M.robustness

def MutualisticNetworkClosed (M : MutualisticNetworkPackage) : Prop :=
  M.pollinatorAbundance ∧ M.plantReproductiveSuccess ∧
  M.nestednessMeasure ∧ M.robustness

theorem mutualistic_network_closed_from_evidence
    (M : MutualisticNetworkPackage) (E : MutualisticNetworkEvidence M) :
    MutualisticNetworkClosed M := by
  exact And.intro E.pollinatorAbundanceClosed
    (And.intro E.plantReproductiveSuccessClosed
      (And.intro E.nestednessMeasureClosed E.robustnessClosed))

end EcologyMutualismCanonicalLaneLean
end HautevilleHouse