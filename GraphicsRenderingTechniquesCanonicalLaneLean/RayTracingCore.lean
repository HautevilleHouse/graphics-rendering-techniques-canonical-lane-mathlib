import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsRenderingTechniquesCanonicalLaneLean

structure RayTracingCorePackage where
  rayGeneration : Prop
  rayIntersection : Prop
  shading : Prop
  accumulation : Prop

structure RayTracingCoreEvidence (R : RayTracingCorePackage) where
  rayGenerationClosed : R.rayGeneration
  rayIntersectionClosed : R.rayIntersection
  shadingClosed : R.shading
  accumulationClosed : R.accumulation

def RayTracingCoreClosed (R : RayTracingCorePackage) : Prop :=
  R.rayGeneration ∧ R.rayIntersection ∧
  R.shading ∧ R.accumulation

theorem ray_tracing_core_closed_from_evidence
    (R : RayTracingCorePackage) (E : RayTracingCoreEvidence R) :
    RayTracingCoreClosed R := by
  exact And.intro E.rayGenerationClosed
    (And.intro E.rayIntersectionClosed
      (And.intro E.shadingClosed E.accumulationClosed))

end GraphicsRenderingTechniquesCanonicalLaneLean
end HautevilleHouse