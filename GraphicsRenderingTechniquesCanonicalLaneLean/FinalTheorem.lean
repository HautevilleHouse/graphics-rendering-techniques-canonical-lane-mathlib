import canonicalLaneMathlib.AdmissibleClass
import GraphicsRenderingTechniquesCanonicalLaneLean.RasterizationPipeline
import GraphicsRenderingTechniquesCanonicalLaneLean.ShaderCore
import GraphicsRenderingTechniquesCanonicalLaneLean.RayTracingCore
import GraphicsRenderingTechniquesCanonicalLaneLean.GlobalIllumination
import GraphicsRenderingTechniquesCanonicalLaneLean.TextureMapping

namespace HautevilleHouse
namespace GraphicsRenderingTechniquesCanonicalLaneLean

def ConstrainedGraphicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_graphics_endgame (A : AdmissibleClass) :
    ConstrainedGraphicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GraphicsRenderingTechniquesCanonicalLaneLean
end HautevilleHouse