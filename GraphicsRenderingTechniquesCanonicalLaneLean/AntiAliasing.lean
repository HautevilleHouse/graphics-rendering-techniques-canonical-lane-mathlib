import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsRenderingTechniquesCanonicalLaneLean

structure AntiAliasingPackage where
  samplePattern : Type u
  reconstructionFilter : Type v
  sampleCount : Nat
  coverageMatrix : Prop
  resolveMethod : Prop

structure AntiAliasingEvidence (A : AntiAliasingPackage) where
  coverageMatrixClosed : A.coverageMatrix
  resolveMethodClosed : A.resolveMethod

def AntiAliasingClosed (A : AntiAliasingPackage) : Prop :=
  A.coverageMatrix ∧ A.resolveMethod

theorem anti_aliasing_closed_from_evidence (A : AntiAliasingPackage)
    (E : AntiAliasingEvidence A) : AntiAliasingClosed A := by
  exact And.intro E.coverageMatrixClosed E.resolveMethodClosed

end GraphicsRenderingTechniquesCanonicalLaneLean
end HautevilleHouse