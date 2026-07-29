import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMutualismCanonicalLaneLean

structure NicheOverlapPackage {M : MutualismDynamicsPackage}
    {F : LotkaVolterraPDEPackage M} (S : PersistenceStabilityPackage) where
  resourceOverlap : Prop
  competitionRelief : Prop
  specializationDegree : Prop
  mutualismStrength : Prop

structure NicheOverlapEvidence {M : MutualismDynamicsPackage}
    {F : LotkaVolterraPDEPackage M} {S : PersistenceStabilityPackage}
    (N : NicheOverlapPackage S) where
  resourceOverlapClosed : N.resourceOverlap
  competitionReliefClosed : N.competitionRelief
  specializationDegreeClosed : N.specializationDegree
  mutualismStrengthClosed : N.mutualismStrength

def NicheOverlapClosed {M : MutualismDynamicsPackage}
    {F : LotkaVolterraPDEPackage M} {S : PersistenceStabilityPackage}
    (N : NicheOverlapPackage S) : Prop :=
  N.resourceOverlap ∧ N.competitionRelief ∧
  N.specializationDegree ∧ N.mutualismStrength

theorem niche_overlap_closed_from_evidence {M : MutualismDynamicsPackage}
    {F : LotkaVolterraPDEPackage M} {S : PersistenceStabilityPackage}
    (N : NicheOverlapPackage S) (E : NicheOverlapEvidence N) :
    NicheOverlapClosed N := by
  exact And.intro E.resourceOverlapClosed
    (And.intro E.competitionReliefClosed
      (And.intro E.specializationDegreeClosed E.mutualismStrengthClosed))

end EcologyMutualismCanonicalLaneLean
end HautevilleHouse