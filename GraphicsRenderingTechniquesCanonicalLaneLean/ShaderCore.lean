import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsRenderingTechniquesCanonicalLaneLean

structure ShaderCorePackage where
  vertexShader : Prop
  tessellationShader : Prop
  geometryShader : Prop
  fragmentShader : Prop
  computeShader : Prop

structure ShaderCoreEvidence (S : ShaderCorePackage) where
  vertexShaderClosed : S.vertexShader
  tessellationShaderClosed : S.tessellationShader
  geometryShaderClosed : S.geometryShader
  fragmentShaderClosed : S.fragmentShader
  computeShaderClosed : S.computeShader

def ShaderCoreClosed (S : ShaderCorePackage) : Prop :=
  S.vertexShader ∧ S.tessellationShader ∧
  S.geometryShader ∧ S.fragmentShader ∧ S.computeShader

theorem shader_core_closed_from_evidence
    (S : ShaderCorePackage) (E : ShaderCoreEvidence S) :
    ShaderCoreClosed S := by
  exact And.intro E.vertexShaderClosed
    (And.intro E.tessellationShaderClosed
      (And.intro E.geometryShaderClosed
        (And.intro E.fragmentShaderClosed E.computeShaderClosed)))

end GraphicsRenderingTechniquesCanonicalLaneLean
end HautevilleHouse