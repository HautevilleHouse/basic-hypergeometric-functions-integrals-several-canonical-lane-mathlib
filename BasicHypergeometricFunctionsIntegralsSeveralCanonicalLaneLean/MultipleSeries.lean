import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean

structure MultipleBasicHypergeometricSeriesPackage where
  dimension : ℕ
  bases : List ℝ
  numeratorMatrices : List (List ℝ)
  denominatorMatrices : List (List ℝ)
  arguments : List ℝ
  seriesDefined : Prop
  absoluteConvergence : Prop
  reducesToUnivariate : Prop

structure MultipleBasicHypergeometricSeriesEvidence (M : MultipleBasicHypergeometricSeriesPackage) where
  seriesDefinedClosed : M.seriesDefined
  absoluteConvergenceClosed : M.absoluteConvergence
  reducesToUnivariateClosed : M.reducesToUnivariate

def MultipleBasicHypergeometricSeriesClosed (M : MultipleBasicHypergeometricSeriesPackage) : Prop :=
  M.seriesDefined ∧ M.absoluteConvergence ∧ M.reducesToUnivariate

theorem multiple_basic_hypergeometric_series_closed_from_evidence
    (M : MultipleBasicHypergeometricSeriesPackage) (E : MultipleBasicHypergeometricSeriesEvidence M) :
    MultipleBasicHypergeometricSeriesClosed M := by
  exact And.intro E.seriesDefinedClosed (And.intro E.absoluteConvergenceClosed E.reducesToUnivariateClosed)

end BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean
end HautevilleHouse