import canonicalLaneMathlib.AdmissibleClass
import BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean.BasicHypergeometricFunction

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean

-- Very-well-poised basic hypergeometric series
structure VeryWellPoisedSeries (n : ℕ) (a : ℂ^(2n+1)) (q z : ℂ) where
  underlying : BasicHypergeometricSeries (2n+1) (2n) a a q z
  wellPoisedCondition : Prop

-- Elliptic beta integral type
structure EllipticBetaIntegral (n : ℕ) (t : ℂ^n) (p q : ℂ) where
  integrand : (ℂ^n) → ℂ
  contour : (ℂ^n) → Prop
  integralValue : ℂ
  evaluation : integralValue = someKnownValue

end BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean
end HautevilleHouse