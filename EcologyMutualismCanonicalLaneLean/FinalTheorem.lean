import canonicalLaneMathlib.AdmissibleClass
import EcologyMutualismCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace EcologyMutualismCanonicalLaneLean

def ConstrainedMutualismClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_mutualism_endgame (A : AdmissibleClass) :
    ConstrainedMutualismClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EcologyMutualismCanonicalLaneLean
end HautevilleHouse
