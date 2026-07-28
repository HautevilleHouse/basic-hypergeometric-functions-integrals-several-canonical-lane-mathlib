import BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean.BasicHypergeometricSeries

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean

structure IntegralRepresentationPackage where
  integrandType : Type
  integrationDomain : Type
  measure : Type
  integralValue : ℚ
  seriesExpansion : BasicHypergeometricSeriesPackage
  expansionConverges : Prop
  equalityProved : Prop

structure IntegralRepresentationEvidence (I : IntegralRepresentationPackage) where
  expansionConvergesClosed : I.expansionConverges
  equalityProvedClosed : I.equalityProved

def IntegralRepresentationClosed (I : IntegralRepresentationPackage) : Prop :=
  I.expansionConverges ∧ I.equalityProved

theorem integral_representation_closed_from_evidence
    (I : IntegralRepresentationPackage) (E : IntegralRepresentationEvidence I) :
    IntegralRepresentationClosed I := by
  exact And.intro E.expansionConvergesClosed E.equalityProvedClosed

end BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean
end HautevilleHouse