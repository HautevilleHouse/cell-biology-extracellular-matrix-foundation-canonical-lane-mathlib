import HautevilleHouse.CellMatrixFoundation.MatrixMetalloproteinaseDynamics

namespace HautevilleHouse
namespace CellMatrixFoundation

structure IntegrinSignalingPackage where
  activationPathway : Prop
  downstreamSignaling : Prop
  cytoskeletalRearrangement : Prop
  geneExpressionRegulation : Prop

structure IntegrinSignalingEvidence (I : IntegrinSignalingPackage) where
  activationPathwayClosed : I.activationPathway
  downstreamSignalingClosed : I.downstreamSignaling
  cytoskeletalRearrangementClosed : I.cytoskeletalRearrangement
  geneExpressionRegulationClosed : I.geneExpressionRegulation

def IntegrinSignalingClosed (I : IntegrinSignalingPackage) : Prop :=
  I.activationPathway ∧ I.downstreamSignaling ∧ I.cytoskeletalRearrangement ∧ I.geneExpressionRegulation

theorem integrin_signaling_closed_from_evidence (I : IntegrinSignalingPackage)
    (E : IntegrinSignalingEvidence I) : IntegrinSignalingClosed I := by
  exact And.intro E.activationPathwayClosed
    (And.intro E.downstreamSignalingClosed
      (And.intro E.cytoskeletalRearrangementClosed E.geneExpressionRegulationClosed))

end CellMatrixFoundation
end HautevilleHouse
