import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsRenderingTechniquesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.outputValid

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GraphicsRenderingTechniquesCanonicalLaneLean
end HautevilleHouse