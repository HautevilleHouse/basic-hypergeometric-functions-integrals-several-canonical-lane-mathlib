import BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean.AdmissibleClass

/-!
# Summation Package for Basic Hypergeometric Series
-/

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean

structure SummationPackage (A : AdmissibleClass) where
  summationFormula : Prop
  terminationCondition : Prop
  closedFormEvaluation : Prop
  contiguousRelation : Prop

structure SummationEvidence {A : AdmissibleClass} (P : SummationPackage A) where
  summationFormulaClosed : P.summationFormula
  terminationConditionClosed : P.terminationCondition
  closedFormEvaluationClosed : P.closedFormEvaluation
  contiguousRelationClosed : P.contiguousRelation

def SummationClosed {A : AdmissibleClass} (P : SummationPackage A) : Prop :=
  P.summationFormula ∧ P.terminationCondition ∧ P.closedFormEvaluation ∧ P.contiguousRelation

theorem summation_closed_from_evidence
    {A : AdmissibleClass} (P : SummationPackage A)
    (E : SummationEvidence P) : SummationClosed P := by
  exact And.intro E.summationFormulaClosed
    (And.intro E.terminationConditionClosed
      (And.intro E.closedFormEvaluationClosed E.contiguousRelationClosed))

end BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean
end HautevilleHouse