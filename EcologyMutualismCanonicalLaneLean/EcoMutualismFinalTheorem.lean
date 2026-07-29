import EcoMutualismCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EcologyMutualismCanonicalLaneLean

def ConstrainedEcoMutualismClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_eco_mutualism_endgame (A : AdmissibleClass) :
    ConstrainedEcoMutualismClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EcologyMutualismCanonicalLaneLean
end HautevilleHouse