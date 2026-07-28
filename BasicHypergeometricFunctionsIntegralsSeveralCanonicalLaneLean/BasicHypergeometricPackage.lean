import BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean.CoreLemmas

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean

structure QPochhammerSymbol where
  base : ℂ
  index : ℕ
  value : ℂ
  finiteProduct : Prop
  infiniteProduct : Prop
  convergenceConditions : Prop

structure BasicHypergeometricSeries where
  dimension : ℕ
  parameters : List ℂ
  base : ℂ
  variables : List ℂ
  seriesSum : ℂ
  absoluteConvergent : Prop
  ratioTestPassed : Prop

structure QBetaIntegral where
  dimension : ℕ
  integrand : Type u
  contour : Type v
  integralValue : ℂ
  integralExists : Prop
  integralFormula : Prop

structure BasicHypergeometricPackage where
  pochhammer : QPochhammerSymbol
  series : BasicHypergeometricSeries
  integral : QBetaIntegral
  transformIdentity : Prop
  connectionFormula : Prop

structure BasicHypergeometricEvidence (P : BasicHypergeometricPackage) where
  pochhammerClosed : P.pochhammer.infiniteProduct ∧ P.pochhammer.convergenceConditions
  seriesClosed : P.series.absoluteConvergent ∧ P.series.ratioTestPassed
  integralClosed : P.integral.integralExists ∧ P.integral.integralFormula
  transformIdentityClosed : P.transformIdentity
  connectionFormulaClosed : P.connectionFormula

def BasicHypergeometricClosed (P : BasicHypergeometricPackage) : Prop :=
  (P.pochhammer.infiniteProduct ∧ P.pochhammer.convergenceConditions) ∧
  (P.series.absoluteConvergent ∧ P.series.ratioTestPassed) ∧
  (P.integral.integralExists ∧ P.integral.integralFormula) ∧
  P.transformIdentity ∧
  P.connectionFormula

theorem basic_hypergeometric_closed_from_evidence (P : BasicHypergeometricPackage)
    (E : BasicHypergeometricEvidence P) : BasicHypergeometricClosed P :=
  And.intro E.pochhammerClosed
    (And.intro E.seriesClosed
      (And.intro E.integralClosed
        (And.intro E.transformIdentityClosed E.connectionFormulaClosed)))

end BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean
end HautevilleHouse