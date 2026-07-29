import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsRenderingTechniquesCanonicalLaneLean

structure VisibilityCullingPackage where
  frustumPlanes : Type u
  occlusionQuery : Type v
  hierarchicalZBuffer : Prop
  portalCulling : Prop

structure VisibilityCullingEvidence (V : VisibilityCullingPackage) where
  hierarchicalZBufferClosed : V.hierarchicalZBuffer
  portalCullingClosed : V.portalCulling

def VisibilityCullingClosed (V : VisibilityCullingPackage) : Prop :=
  V.hierarchicalZBuffer ∧ V.portalCulling

theorem visibility_culling_closed_from_evidence (V : VisibilityCullingPackage)
    (E : VisibilityCullingEvidence V) : VisibilityCullingClosed V := by
  exact And.intro E.hierarchicalZBufferClosed E.portalCullingClosed

end GraphicsRenderingTechniquesCanonicalLaneLean
end HautevilleHouse