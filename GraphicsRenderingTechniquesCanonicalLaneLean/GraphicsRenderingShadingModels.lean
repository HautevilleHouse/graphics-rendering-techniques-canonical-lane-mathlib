import GraphicsRenderingTechniquesCanonicalLaneLean.GraphicsRenderingRayTracingPipeline

namespace HautevilleHouse
namespace GraphicsRenderingTechniquesCanonicalLaneLean

structure ShadingModel where
  brdfDefinition : Prop
  lightTransport : Prop
  colorMatching : Prop
  energyConservation : Prop
  modelClosed : Prop

structure ShadingEvidence (S : ShadingModel) where
  brdfDefinitionClosed : S.brdfDefinition
  lightTransportClosed : S.lightTransport
  colorMatchingClosed : S.colorMatching
  energyConservationClosed : S.energyConservation

def ShadingModelClosed (S : ShadingModel) : Prop :=
  S.brdfDefinition ∧ S.lightTransport ∧ S.colorMatching ∧ S.energyConservation

theorem shading_model_closed_from_evidence (S : ShadingModel)
    (E : ShadingEvidence S) : ShadingModelClosed S := by
  exact And.intro E.brdfDefinitionClosed
    (And.intro E.lightTransportClosed
      (And.intro E.colorMatchingClosed E.energyConservationClosed))

end GraphicsRenderingTechniquesCanonicalLaneLean
end HautevilleHouse