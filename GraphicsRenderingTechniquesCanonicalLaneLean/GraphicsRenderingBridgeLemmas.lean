import GraphicsRenderingTechniquesCanonicalLaneLean.GraphicsRenderingAdmissibleClass

namespace HautevilleHouse
namespace GraphicsRenderingTechniquesCanonicalLaneLean

def bridgeClosed (A : RenderingAdmissibleClass) : Prop :=
  A.object.endpointSatisfied

theorem bridge_from_admissible_class (A : RenderingAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.endpointSatisfied

end GraphicsRenderingTechniquesCanonicalLaneLean
end HautevilleHouse