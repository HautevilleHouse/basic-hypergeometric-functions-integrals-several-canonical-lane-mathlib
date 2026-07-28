import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean

structure BasicHypergeometricSeriesPackage where
  base : ℝ
  numeratorParams : List ℝ
  denominatorParams : List ℝ
  argument : ℝ
  seriesDefined : Prop
  convergenceRadius : Prop
  qPochhammerStructure : Prop

structure BasicHypergeometricSeriesEvidence (S : BasicHypergeometricSeriesPackage) where
  seriesDefinedClosed : S.seriesDefined
  convergenceRadiusClosed : S.convergenceRadius
  qPochhammerStructureClosed : S.qPochhammerStructure

def BasicHypergeometricSeriesClosed (S : BasicHypergeometricSeriesPackage) : Prop :=
  S.seriesDefined ∧ S.convergenceRadius ∧ S.qPochhammerStructure

theorem basic_hypergeometric_series_closed_from_evidence
    (S : BasicHypergeometricSeriesPackage) (E : BasicHypergeometricSeriesEvidence S) :
    BasicHypergeometricSeriesClosed S := by
  exact And.intro E.seriesDefinedClosed (And.intro E.convergenceRadiusClosed E.qPochhammerStructureClosed)

end BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean
end HautevilleHouse