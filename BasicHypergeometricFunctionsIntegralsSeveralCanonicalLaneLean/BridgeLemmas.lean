import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.seriesConvergent ∧ A.object.integralRepresentation

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean
end HautevilleHouse