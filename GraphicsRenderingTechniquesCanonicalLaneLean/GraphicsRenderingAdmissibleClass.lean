import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsRenderingTechniquesCanonicalLaneLean

structure RenderingAdmittedObject where
  pixelPipeline : Type
  shadingModel : Type
  resolution : Nat
  colorSpace : Type
  sampleRate : Nat
  endpointSatisfied : Prop
  remainderRecorded : Prop

structure RenderingAdmissibleClass where
  object : RenderingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : RenderingAdmissibleClass) : Prop :=
  (A.endpointSatisfied ∧ A.remainderRecorded)

end GraphicsRenderingTechniquesCanonicalLaneLean
end HautevilleHouse