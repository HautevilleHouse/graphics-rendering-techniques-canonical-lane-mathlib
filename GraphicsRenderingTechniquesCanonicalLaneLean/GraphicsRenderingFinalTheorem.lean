import GraphicsRenderingTechniquesCanonicalLaneLean.GraphicsRenderingGateLemmas

namespace HautevilleHouse
namespace GraphicsRenderingTechniquesCanonicalLaneLean

def ConstrainedGraphicsRenderingClosure (A : RenderingAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_graphics_rendering_endgame (A : RenderingAdmissibleClass) :
    ConstrainedGraphicsRenderingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GraphicsRenderingTechniquesCanonicalLaneLean
end HautevilleHouse