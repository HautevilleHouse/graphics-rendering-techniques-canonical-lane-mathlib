import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsRenderingTechniquesCanonicalLaneLean

structure TextureMappingPackage where
  textureSampling : Prop
  coordinateGeneration : Prop
  filtering : Prop
  wrapping : Prop

structure TextureMappingEvidence (T : TextureMappingPackage) where
  textureSamplingClosed : T.textureSampling
  coordinateGenerationClosed : T.coordinateGeneration
  filteringClosed : T.filtering
  wrappingClosed : T.wrapping

def TextureMappingClosed (T : TextureMappingPackage) : Prop :=
  T.textureSampling ∧ T.coordinateGeneration ∧
  T.filtering ∧ T.wrapping

theorem texture_mapping_closed_from_evidence
    (T : TextureMappingPackage) (E : TextureMappingEvidence T) :
    TextureMappingClosed T := by
  exact And.intro E.textureSamplingClosed
    (And.intro E.coordinateGenerationClosed
      (And.intro E.filteringClosed E.wrappingClosed))

end GraphicsRenderingTechniquesCanonicalLaneLean
end HautevilleHouse