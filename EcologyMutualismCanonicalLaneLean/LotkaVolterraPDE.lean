import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMutualismCanonicalLaneLean

structure LotkaVolterraPDEPackage (M : MutualismDynamicsPackage) where
  timeParameter : Type u
  speciesAbundance : timeParameter → Type v
  initialAbundanceMatches : Prop
  differentiableAbundanceFamily : Prop
  lotkaVolterraEquation : Prop
  mutualismTermIncluded : Prop

structure LotkaVolterraPDEEvidence {M : MutualismDynamicsPackage}
    (F : LotkaVolterraPDEPackage M) where
  initialAbundanceMatchesClosed : F.initialAbundanceMatches
  differentiableAbundanceFamilyClosed : F.differentiableAbundanceFamily
  lotkaVolterraEquationClosed : F.lotkaVolterraEquation
  mutualismTermIncludedClosed : F.mutualismTermIncluded

def LotkaVolterraPDEClosed {M : MutualismDynamicsPackage}
    (F : LotkaVolterraPDEPackage M) : Prop :=
  F.initialAbundanceMatches ∧ F.differentiableAbundanceFamily ∧
  F.lotkaVolterraEquation ∧ F.mutualismTermIncluded

theorem lotka_volterra_pde_closed_from_evidence {M : MutualismDynamicsPackage}
    (F : LotkaVolterraPDEPackage M) (E : LotkaVolterraPDEEvidence F) :
    LotkaVolterraPDEClosed F := by
  exact And.intro E.initialAbundanceMatchesClosed
    (And.intro E.differentiableAbundanceFamilyClosed
      (And.intro E.lotkaVolterraEquationClosed E.mutualismTermIncludedClosed))

end EcologyMutualismCanonicalLaneLean
end HautevilleHouse