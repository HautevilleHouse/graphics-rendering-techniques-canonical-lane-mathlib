import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsRenderingTechniquesCanonicalLaneLean

structure GraphicsRenderingSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GraphicsRenderingAdmittedObject where
  space : GraphicsRenderingSpace
  twoDimensionalImage : Prop
  colorSpaceContinuous : Prop
  pixelModel : Type
  pixelTopology : TopologicalSpace pixelModel
  renderingPipelineImplemented : Prop
  conclusion : renderingPipelineImplemented

structure GraphicsRenderingEndgameState where
  object : GraphicsRenderingAdmittedObject

def GraphicsRenderingWitnessClosed (O : GraphicsRenderingAdmittedObject) : Prop :=
  O.renderingPipelineImplemented

end GraphicsRenderingTechniquesCanonicalLaneLean
end HautevilleHouse
