import canonicalLaneMathlib.AdmissibleClass
import BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean

-- q-Pochhammer symbol (a; q)_n
structure QPochhammer (a : ℂ) (q : ℂ) (n : ℕ) where
  term : ℂ
  finiteProduct : Prop

-- Basic hypergeometric series _r φ_s
structure BasicHypergeometricSeries (r s : ℕ) (a : ℂ^r) (b : ℂ^s) (q z : ℂ) where
  terms : ℕ → ℂ
  convergenceRadius : ℝ
  sum : ℂ
  sumDefined : sum = ∑' n, terms n

-- Key summation theorems
structure SummationTheorem where
  series : BasicHypergeometricSeries 1 1 a b q z
  closedForm : ℂ
  identity : series.sum = closedForm

end BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean
end HautevilleHouse