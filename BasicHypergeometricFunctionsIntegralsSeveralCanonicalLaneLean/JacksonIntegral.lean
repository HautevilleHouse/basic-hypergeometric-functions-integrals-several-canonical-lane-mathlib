import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean

structure JacksonIntegralPackage where
  integrand : Type u
  measure : Type v
  contour : Type w
  integralConverges : Prop
  transformationFormula : Prop
  quantumCalculusConsistency : Prop

structure JacksonIntegralEvidence (J : JacksonIntegralPackage) where
  integralConvergesClosed : J.integralConverges
  transformationFormulaClosed : J.transformationFormula
  quantumCalculusConsistencyClosed : J.quantumCalculusConsistency

def JacksonIntegralClosed (J : JacksonIntegralPackage) : Prop :=
  J.integralConverges ∧ J.transformationFormula ∧ J.quantumCalculusConsistency

theorem jackson_integral_closed_from_evidence
    (J : JacksonIntegralPackage) (E : JacksonIntegralEvidence J) :
    JacksonIntegralClosed J := by
  exact And.intro E.integralConvergesClosed (And.intro E.transformationFormulaClosed E.quantumCalculusConsistencyClosed)

end BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean
end HautevilleHouse