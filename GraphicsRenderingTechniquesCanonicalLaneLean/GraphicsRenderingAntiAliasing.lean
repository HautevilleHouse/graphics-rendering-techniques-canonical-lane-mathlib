import GraphicsRenderingTechniquesCanonicalLaneLean.GraphicsRenderingAdmissibleClass

namespace HautevilleHouse
namespace GraphicsRenderingTechniquesCanonicalLaneLean

structure AntiAliasingTechnique where
  samplePattern : Prop
  filterFunction : Prop
  coverageComputation : Prop
  subpixelResolution : Prop
  techniqueClosed : Prop

structure AntiAliasingEvidence (A : AntiAliasingTechnique) where
  samplePatternClosed : A.samplePattern
  filterFunctionClosed : A.filterFunction
  coverageComputationClosed : A.coverageComputation
  subpixelResolutionClosed : A.subpixelResolution

def AntiAliasingTechniqueClosed (A : AntiAliasingTechnique) : Prop :=
  A.samplePattern ∧ A.filterFunction ∧ A.coverageComputation ∧ A.subpixelResolution

theorem anti_aliasing_technique_closed_from_evidence (A : AntiAliasingTechnique)
    (E : AntiAliasingEvidence A) : AntiAliasingTechniqueClosed A := by
  exact And.intro E.samplePatternClosed
    (And.intro E.filterFunctionClosed
      (And.intro E.coverageComputationClosed E.subpixelResolutionClosed))

end GraphicsRenderingTechniquesCanonicalLaneLean
end HautevilleHouse