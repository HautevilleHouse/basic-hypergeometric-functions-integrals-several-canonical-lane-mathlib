import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean

structure BasicHypergeometricSeries where
  base : ℂ
  parameters : List ℂ
  variable : ℂ
  convergenceRadius : ℝ
  convergenceRadiusPositive : convergenceRadius > 0

def basicHypergeometricFunction (s : BasicHypergeometricSeries) : ℂ → ℂ := λ z => 
  ∑' (n : ℕ), (pochhammer s.parameters n) / (pochhammer (s.parameters.map (λ p => p * s.base) ) n) * (z / s.base) ^ n

end BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean
end HautevilleHouse