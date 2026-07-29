import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsRenderingTechniquesCanonicalLaneLean

structure GlobalIlluminationPackage where
  directLighting : Prop
  indirectLighting : Prop
  ambientOcclusion : Prop
  reflections : Prop

structure GlobalIlluminationEvidence (G : GlobalIlluminationPackage) where
  directLightingClosed : G.directLighting
  indirectLightingClosed : G.indirectLighting
  ambientOcclusionClosed : G.ambientOcclusion
  reflectionsClosed : G.reflections

def GlobalIlluminationClosed (G : GlobalIlluminationPackage) : Prop :=
  G.directLighting ∧ G.indirectLighting ∧
  G.ambientOcclusion ∧ G.reflections

theorem global_illumination_closed_from_evidence
    (G : GlobalIlluminationPackage) (E : GlobalIlluminationEvidence G) :
    GlobalIlluminationClosed G := by
  exact And.intro E.directLightingClosed
    (And.intro E.indirectLightingClosed
      (And.intro E.ambientOcclusionClosed E.reflectionsClosed))

end GraphicsRenderingTechniquesCanonicalLaneLean
end HautevilleHouse