import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixFoundationCanonicalLaneLean

structure ExtracellularMatrixAdmittedObject where
  ecmComponent : Type
  integrinBinding : Prop
  growthFactorSequestration : Prop
  stiffnessResponse : Prop
  conclusion : integrinBinding ∧ growthFactorSequestration ∧ stiffnessResponse

structure AdmissibleClass where
  object : ExtracellularMatrixAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.integrinBinding ∧ A.object.growthFactorSequestration ∧ A.object.stiffnessResponse) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyExtracellularMatrixFoundationCanonicalLaneLean
end HautevilleHouse