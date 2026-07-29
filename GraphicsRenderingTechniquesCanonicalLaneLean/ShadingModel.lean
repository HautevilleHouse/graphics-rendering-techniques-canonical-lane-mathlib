import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsRenderingTechniquesCanonicalLaneLean

structure ShadingModelPackage where
  brdf : Type u
  lightTransport : Type v
  diffuseTerm : Prop
  specularTerm : Prop
  ambientOcclusion : Prop

structure ShadingModelEvidence (S : ShadingModelPackage) where
  diffuseTermClosed : S.diffuseTerm
  specularTermClosed : S.specularTerm
  ambientOcclusionClosed : S.ambientOcclusion

def ShadingModelClosed (S : ShadingModelPackage) : Prop :=
  S.diffuseTerm ∧ S.specularTerm ∧ S.ambientOcclusion

theorem shading_model_closed_from_evidence (S : ShadingModelPackage)
    (E : ShadingModelEvidence S) : ShadingModelClosed S := by
  exact And.intro E.diffuseTermClosed (And.intro E.specularTermClosed E.ambientOcclusionClosed)

end GraphicsRenderingTechniquesCanonicalLaneLean
end HautevilleHouse