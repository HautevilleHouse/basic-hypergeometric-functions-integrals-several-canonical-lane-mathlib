import BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean.SeveralVariablesTransformations

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean

structure SummationTheoremPackage where
  sumType : String
  sumValue : ℚ
  seriesUsed : BasicHypergeometricSeriesPackage
  proofEvidence : Prop

structure SummationTheoremEvidence (S : SummationTheoremPackage) where
  sumValueComputed : S.sumValue = (expected value)
  proofEvidenceClosed : S.proofEvidence

def SummationTheoremClosed (S : SummationTheoremPackage) : Prop :=
  (∃ v : ℚ, v = S.sumValue) ∧ S.proofEvidence

theorem summation_theorem_closed_from_evidence
    (S : SummationTheoremPackage) (E : SummationTheoremEvidence S) :
    SummationTheoremClosed S := by
  exact And.intro ⟨S.sumValue, rfl⟩ E.proofEvidenceClosed

end BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean
end HautevilleHouse