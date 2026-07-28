import BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.seriesConvergent ∧ A.object.integralExists ∧ A.object.transformationHolds

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean
end HautevilleHouse