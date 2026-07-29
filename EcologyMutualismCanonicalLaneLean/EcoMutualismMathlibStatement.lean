import EcoMutualismCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace EcologyMutualismCanonicalLaneLean

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibProofObligation : MathlibProofObligation := {
  sourceKey := "ecology-mutualism"
  theoremObject := "Ecology Mutualism"
  commonCoreImported := true
  theoremSpecificDefinitionsNative := true
  theoremSpecificBridgeNative := true
  theoremSpecificAdmittedClosureNative := true
  unrestrictedClassicalClosureNative := false
  carriedGap := "theorem-specific Mathlib endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
}

theorem theorem_specific_endgame_pilot_checked :
    (∀ A : AdmissibleClass, ConstrainedEcoMutualismClosure A) := by
  intro A
  exact constrained_eco_mutualism_endgame A

end EcologyMutualismCanonicalLaneLean
end HautevilleHouse