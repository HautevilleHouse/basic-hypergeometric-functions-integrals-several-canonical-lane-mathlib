import canonicalLaneMathlib.AdmissibleClass
import BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean.BasicHypergeometricFunction

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean

-- Bilateral basic hypergeometric series _r ψ_s
structure BilateralSeries (r s : ℕ) (a : ℂ^r) (b : ℂ^s) (q z : ℂ) where
  terms : ℤ → ℂ
  sum : ℂ
  convergenceCondition : Prop

-- Ramanujan's 1ψ1 summation
structure RamanujanOnePsiOne where
  series : BilateralSeries 1 1 a b q z
  sumFormula : ℂ
  identity : series.sum = sumFormula

end BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean
end HautevilleHouse