import GraphicsRenderingTechniquesCanonicalLaneLean.GraphicsRenderingAdmissibleClass

namespace HautevilleHouse
namespace GraphicsRenderingTechniquesCanonicalLaneLean

structure RayTracingPipeline where
  rayGeneration : Prop
  rayIntersection : Prop
  shadingEvaluation : Prop
  accumulationOutput : Prop
  pipelineClosed : Prop

structure RayTracingEvidence (P : RayTracingPipeline) where
  rayGenerationClosed : P.rayGeneration
  rayIntersectionClosed : P.rayIntersection
  shadingEvaluationClosed : P.shadingEvaluation
  accumulationOutputClosed : P.accumulationOutput

def RayTracingPipelineClosed (P : RayTracingPipeline) : Prop :=
  P.rayGeneration ∧ P.rayIntersection ∧ P.shadingEvaluation ∧ P.accumulationOutput

theorem ray_tracing_pipeline_closed_from_evidence (P : RayTracingPipeline)
    (E : RayTracingEvidence P) : RayTracingPipelineClosed P := by
  exact And.intro E.rayGenerationClosed
    (And.intro E.rayIntersectionClosed
      (And.intro E.shadingEvaluationClosed E.accumulationOutputClosed))

end GraphicsRenderingTechniquesCanonicalLaneLean
end HautevilleHouse