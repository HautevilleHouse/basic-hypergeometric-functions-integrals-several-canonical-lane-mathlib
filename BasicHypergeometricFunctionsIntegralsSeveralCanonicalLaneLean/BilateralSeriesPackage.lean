import BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean.AdmissibleClass

/-!
# Bilateral Series Package for Basic Hypergeometric Functions
-/

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean

structure BilateralSeriesPackage (A : AdmissibleClass) where
  bilateralSummationFormula : Prop
  convergenceCondition : Prop
  transformationLaw : Prop
  symmetryProperty : Prop

structure BilateralSeriesEvidence {A : AdmissibleClass} (P : BilateralSeriesPackage A) where
  bilateralSummationFormulaClosed : P.bilateralSummationFormula
  convergenceConditionClosed : P.convergenceCondition
  transformationLawClosed : P.transformationLaw
  symmetryPropertyClosed : P.symmetryProperty

def BilateralSeriesClosed {A : AdmissibleClass} (P : BilateralSeriesPackage A) : Prop :=
  P.bilateralSummationFormula ∧ P.convergenceCondition ∧ P.transformationLaw ∧ P.symmetryProperty

theorem bilateral_series_closed_from_evidence
    {A : AdmissibleClass} (P : BilateralSeriesPackage A)
    (E : BilateralSeriesEvidence P) : BilateralSeriesClosed P := by
  exact And.intro E.bilateralSummationFormulaClosed
    (And.intro E.convergenceConditionClosed
      (And.intro E.transformationLawClosed E.symmetryPropertyClosed))

end BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean
end HautevilleHouse