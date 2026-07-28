import BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean.IntegralRepresentations

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean

structure SeveralVariablesTransformationPackage where
  n : ℕ
  variables : List ℚ
  transformationFormula : Prop
  proofCondition : Prop

structure SeveralVariablesTransformationEvidence (T : SeveralVariablesTransformationPackage) where
  transformationFormulaClosed : T.transformationFormula
  proofConditionClosed : T.proofCondition

def SeveralVariablesTransformationClosed (T : SeveralVariablesTransformationPackage) : Prop :=
  T.transformationFormula ∧ T.proofCondition

theorem several_variables_transformation_closed_from_evidence
    (T : SeveralVariablesTransformationPackage) (E : SeveralVariablesTransformationEvidence T) :
    SeveralVariablesTransformationClosed T := by
  exact And.intro E.transformationFormulaClosed E.proofConditionClosed

end BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean
end HautevilleHouse