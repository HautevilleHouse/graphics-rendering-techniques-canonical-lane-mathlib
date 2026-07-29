import GraphicsRenderingTechniquesCanonicalLaneLean.GraphicsRenderingBridgeLemmas

namespace HautevilleHouse
namespace GraphicsRenderingTechniquesCanonicalLaneLean

def gateClosed (A : RenderingAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : RenderingAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end GraphicsRenderingTechniquesCanonicalLaneLean
end HautevilleHouse