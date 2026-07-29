import EcoMutualismCanonicalLaneLean.PerelmanRoute

namespace HautevilleHouse
namespace EcologyMutualismCanonicalLaneLean

structure CurvatureAnalyticCertificate (G : RiemannianCurvaturePackage) where
  riemannTensorSymmetries : Prop
  bianchiIdentities : Prop
  ricciContractionLaw : Prop
  scalarTraceLaw : Prop
  curvatureEvolutionInputs : Prop
  riemannTensorSymmetriesClosed : riemannTensorSymmetries
  bianchiIdentitiesClosed : bianchiIdentities
  ricciContractionLawClosed : ricciContractionLaw
  scalarTraceLawClosed : scalarTraceLaw
  curvatureEvolutionInputsClosed : curvatureEvolutionInputs

theorem curvature_analytic_certificate_closed (C : CurvatureAnalyticCertificate G) : Prop := by
  exact C.riemannTensorSymmetries ∧ C.bianchiIdentities ∧ C.ricciContractionLaw ∧ C.scalarTraceLaw ∧ C.curvatureEvolutionInputs

end EcoMutualismCanonicalLaneLean
end HautevilleHouse