import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyMutualismCanonicalLaneLean

structure PersistenceStabilityPackage {M : MutualismDynamicsPackage}
    {F : LotkaVolterraPDEPackage M} where
  persistenceCondition : Prop
  localStability : Prop
  basinOfAttraction : Prop
  structuralRobustness : Prop

structure PersistenceStabilityEvidence {M : MutualismDynamicsPackage}
    {F : LotkaVolterraPDEPackage M} (S : PersistenceStabilityPackage) where
  persistenceConditionClosed : S.persistenceCondition
  localStabilityClosed : S.localStability
  basinOfAttractionClosed : S.basinOfAttraction
  structuralRobustnessClosed : S.structuralRobustness

def PersistenceStabilityClosed {M : MutualismDynamicsPackage}
    {F : LotkaVolterraPDEPackage M} (S : PersistenceStabilityPackage) : Prop :=
  S.persistenceCondition ∧ S.localStability ∧
  S.basinOfAttraction ∧ S.structuralRobustness

theorem persistence_stability_closed_from_evidence {M : MutualismDynamicsPackage}
    {F : LotkaVolterraPDEPackage M} (S : PersistenceStabilityPackage)
    (E : PersistenceStabilityEvidence S) : PersistenceStabilityClosed S := by
  exact And.intro E.persistenceConditionClosed
    (And.intro E.localStabilityClosed
      (And.intro E.basinOfAttractionClosed E.structuralRobustnessClosed))

end EcologyMutualismCanonicalLaneLean
end HautevilleHouse