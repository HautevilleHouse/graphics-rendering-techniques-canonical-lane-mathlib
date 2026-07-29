import GraphicsRenderingTechniquesCanonicalLaneLean.GraphicsRenderingShadingModels

namespace HautevilleHouse
namespace GraphicsRenderingTechniquesCanonicalLaneLean

structure TextureMapping where
  uvCoordinates : Prop
  textureFiltering : Prop
  mipmapping : Prop
  anisotropicFiltering : Prop
  mappingClosed : Prop

structure TextureMappingEvidence (T : TextureMapping) where
  uvCoordinatesClosed : T.uvCoordinates
  textureFilteringClosed : T.textureFiltering
  mipmappingClosed : T.mipmapping
  anisotropicFilteringClosed : T.anisotropicFiltering

def TextureMappingClosed (T : TextureMapping) : Prop :=
  T.uvCoordinates ∧ T.textureFiltering ∧ T.mipmapping ∧ T.anisotropicFiltering

theorem texture_mapping_closed_from_evidence (T : TextureMapping)
    (E : TextureMappingEvidence T) : TextureMappingClosed T := by
  exact And.intro E.uvCoordinatesClosed
    (And.intro E.textureFilteringClosed
      (And.intro E.mipmappingClosed E.anisotropicFilteringClosed))

end GraphicsRenderingTechniquesCanonicalLaneLean
end HautevilleHouse