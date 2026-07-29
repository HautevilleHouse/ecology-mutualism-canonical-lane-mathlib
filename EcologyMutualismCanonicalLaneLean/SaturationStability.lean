import HautevilleHouse.EcologyMutualismCanonicalLaneLean.LotkaVolterraDynamics

/-!
# Saturation and Stability Package
-/

namespace HautevilleHouse
namespace EcologyMutualismCanonicalLaneLean

structure SaturationStabilityPackage {L : LotkaVolterraMutualismPackage}
    (E : LotkaVolterraEvidence L) where
  carryingCapacity : Vector ℝ 2
  saturationFunction : ℝ × ℝ → ℝ × ℝ
  saturationFixedPoint : Prop
  stabilityUnderPerturbation : Prop

structure SaturationEvidence {L : LotkaVolterraMutualismPackage}
    {E : LotkaVolterraEvidence L} (S : SaturationStabilityPackage E) where
  saturationFixedPointClosed : S.saturationFixedPoint
  stabilityUnderPerturbationClosed : S.stabilityUnderPerturbation

def SaturationClosed {L : LotkaVolterraMutualismPackage}
    {E : LotkaVolterraEvidence L} (S : SaturationStabilityPackage E) : Prop :=
  S.saturationFixedPoint ∧ S.stabilityUnderPerturbation

theorem saturation_closed_from_evidence {L : LotkaVolterraMutualismPackage}
    {E : LotkaVolterraEvidence L} (S : SaturationStabilityPackage E)
    (Ev : SaturationEvidence S) : SaturationClosed S := by
  exact And.intro Ev.saturationFixedPointClosed Ev.stabilityUnderPerturbationClosed

end EcologyMutualismCanonicalLaneLean
end HautevilleHouse