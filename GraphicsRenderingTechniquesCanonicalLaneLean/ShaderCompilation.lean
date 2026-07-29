import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsRenderingTechniquesCanonicalLaneLean

structure ShaderCompilationPackage where
  sourceLanguage : Type u
  intermediateRepresentation : Type v
  targetBackend : Type w
  lexingCorrect : Prop
  parsingCorrect : Prop
  semanticAnalysisCorrect : Prop
  codeGenerationCorrect : Prop
  optimizationCorrect : Prop

structure ShaderCompilationEvidence (S : ShaderCompilationPackage) where
  lexingCorrectClosed : S.lexingCorrect
  parsingCorrectClosed : S.parsingCorrect
  semanticAnalysisCorrectClosed : S.semanticAnalysisCorrect
  codeGenerationCorrectClosed : S.codeGenerationCorrect
  optimizationCorrectClosed : S.optimizationCorrect

def ShaderCompilationClosed (S : ShaderCompilationPackage) : Prop :=
  S.lexingCorrect ∧ S.parsingCorrect ∧ S.semanticAnalysisCorrect ∧
  S.codeGenerationCorrect ∧ S.optimizationCorrect

theorem shader_compilation_closed_from_evidence
    (S : ShaderCompilationPackage) (E : ShaderCompilationEvidence S) :
    ShaderCompilationClosed S := by
  exact And.intro E.lexingCorrectClosed
    (And.intro E.parsingCorrectClosed
      (And.intro E.semanticAnalysisCorrectClosed
        (And.intro E.codeGenerationCorrectClosed E.optimizationCorrectClosed)))

end GraphicsRenderingTechniquesCanonicalLaneLean
end HautevilleHouse
