import BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean.AdmissibleClass

/-!
# Integral Representation Package for Basic Hypergeometric Functions
-/

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean

structure IntegralRepresentationPackage (A : AdmissibleClass) where
  integrationDomain : Type
  measure : Type
  integralConverges : Prop
  integralEqualsSeries : Prop
  analyticContinuation : Prop

structure IntegralRepresentationEvidence {A : AdmissibleClass} (P : IntegralRepresentationPackage A) where
  integralConvergesClosed : P.integralConverges
  integralEqualsSeriesClosed : P.integralEqualsSeries
  analyticContinuationClosed : P.analyticContinuation

def IntegralRepresentationClosed {A : AdmissibleClass} (P : IntegralRepresentationPackage A) : Prop :=
  P.integralConverges ∧ P.integralEqualsSeries ∧ P.analyticContinuation

theorem integral_representation_closed_from_evidence
    {A : AdmissibleClass} (P : IntegralRepresentationPackage A)
    (E : IntegralRepresentationEvidence P) : IntegralRepresentationClosed P := by
  exact And.intro E.integralConvergesClosed
    (And.intro E.integralEqualsSeriesClosed E.analyticContinuationClosed)

end BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean
end HautevilleHouse