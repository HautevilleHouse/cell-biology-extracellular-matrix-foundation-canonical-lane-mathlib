import HautevilleHouse.CellMatrixFoundation.AdmissibleClass

namespace HautevilleHouse
namespace CellMatrixFoundation

structure FocalAdhesionPackage (M : CellSurfacePackage) where
  integrinClustering : Prop
  talinActivation : Prop
  vinculinRecruitment : Prop
  forceTransmission : Prop

structure FocalAdhesionEvidence (M : CellSurfacePackage) (F : FocalAdhesionPackage M) where
  integrinClusteringClosed : F.integrinClustering
  talinActivationClosed : F.talinActivation
  vinculinRecruitmentClosed : F.vinculinRecruitment
  forceTransmissionClosed : F.forceTransmission

def FocalAdhesionClosed (M : CellSurfacePackage) (F : FocalAdhesionPackage M) : Prop :=
  F.integrinClustering ∧ F.talinActivation ∧ F.vinculinRecruitment ∧ F.forceTransmission

theorem focal_adhesion_closed_from_evidence (M : CellSurfacePackage) (F : FocalAdhesionPackage M)
    (E : FocalAdhesionEvidence M F) : FocalAdhesionClosed M F := by
  exact And.intro E.integrinClusteringClosed
    (And.intro E.talinActivationClosed
      (And.intro E.vinculinRecruitmentClosed E.forceTransmissionClosed))

end CellMatrixFoundation
end HautevilleHouse
