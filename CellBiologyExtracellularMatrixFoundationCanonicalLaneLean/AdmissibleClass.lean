import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellMatrixFoundation

structure AdmissibleClass where
  object : BiomatrixAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BiomatrixWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellMatrixFoundation
end HautevilleHouse
