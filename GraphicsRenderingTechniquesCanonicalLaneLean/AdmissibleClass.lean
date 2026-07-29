import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsRenderingTechniquesCanonicalLaneLean

structure RenderingAdmittedObject where
  renderTarget : Type
  geometryBuffer : Type
  fragmentShader : Type
  outputValid : Prop
  conclusion : outputValid

structure AdmissibleClass where
  object : RenderingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.outputValid ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GraphicsRenderingTechniquesCanonicalLaneLean
end HautevilleHouse