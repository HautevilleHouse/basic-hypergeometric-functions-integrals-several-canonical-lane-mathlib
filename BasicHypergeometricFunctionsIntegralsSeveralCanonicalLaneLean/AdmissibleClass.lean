import BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean

structure BasicHypergeometricAdmittedObject where
  series : Type u
  integral : Type v
  transformation : Type w
  seriesConvergent : Prop
  integralExists : Prop
  transformationHolds : Prop
  conclusion : seriesConvergent ∧ integralExists ∧ transformationHolds

structure AdmissibleClass where
  object : BasicHypergeometricAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.seriesConvergent ∧ A.object.integralExists ∧ A.object.transformationHolds) ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end BasicHypergeometricFunctionsIntegralsSeveralCanonicalLaneLean
end HautevilleHouse