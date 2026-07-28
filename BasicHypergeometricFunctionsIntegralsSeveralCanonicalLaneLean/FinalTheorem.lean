import BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean.BasicHypergeometricPackage

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean

def ConstrainedHypergeometricClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_hypergeometric_endgame (A : AdmissibleClass) :
    ConstrainedHypergeometricClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean
end HautevilleHouse