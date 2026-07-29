import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyExtracellularMatrixFoundationCanonicalLaneLean.ECMRemodeling

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixFoundationCanonicalLaneLean

structure Mechanoreceptor where
  name : String
  activationThreshold : Float

structure MechanotransductionPathway where
  receptors : List Mechanoreceptor
  yapTaz : Prop
  mrtf : Prop
  stretchActivatedChannels : Prop
  nucleusDeformation : Prop

structure MechanotransductionPackage where
  pathway : MechanotransductionPathway
  matrixStiffness : Float
  cellResponse : Prop

structure MechanotransductionEvidence (M : MechanotransductionPackage) where
  receptorsNonempty : M.pathway.receptors ≠ []
  yapTazClosed : M.pathway.yapTaz
  mrtfClosed : M.pathway.mrtf
  channelClosed : M.pathway.stretchActivatedChannels
  nucleusDeformationClosed : M.pathway.nucleusDeformation
  matrixStiffnessPositive : M.matrixStiffness > 0
  cellResponseClosed : M.cellResponse

def MechanotransductionClosed (M : MechanotransductionPackage) : Prop :=
  M.pathway.yapTaz ∧ M.pathway.mrtf ∧ M.pathway.stretchActivatedChannels ∧ M.cellResponse

theorem mechanotransduction_closed_from_evidence (M : MechanotransductionPackage) (E : MechanotransductionEvidence M) : MechanotransductionClosed M := by
  exact And.intro E.yapTazClosed (And.intro E.mrtfClosed (And.intro E.channelClosed (And.intro E.nucleusDeformationClosed (And.intro E.matrixStiffnessPositive E.cellResponseClosed))))

end CellBiologyExtracellularMatrixFoundationCanonicalLaneLean
end HautevilleHouse