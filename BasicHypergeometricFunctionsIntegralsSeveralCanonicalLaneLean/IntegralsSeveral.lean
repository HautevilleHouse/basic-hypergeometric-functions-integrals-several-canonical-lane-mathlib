import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean

structure IntegralPackage where
  integrand : ℂ → ℂ
  domain : Set ℂ
  measure : Measure ℂ
  integralExists : Prop
  integralValue : ℂ

def integralClosed (I : IntegralPackage) : Prop :=
  I.integralExists

theorem integral_closed_from_evidence (I : IntegralPackage) (h : I.integralExists) : integralClosed I := h

end BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean
end HautevilleHouse