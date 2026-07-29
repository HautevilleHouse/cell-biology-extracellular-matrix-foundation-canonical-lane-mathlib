import HautevilleHouse.CellBiologyExtracellularMatrixFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixFoundationCanonicalLaneLean

structure ECMStiffnessMechanotransductionPackage where
  matrixElasticity : Prop
  integrinMediatedSensing : Prop
  cytoskeletalReorganization : Prop
  transcriptionalResponse : Prop

structure ECMStiffnessMechanotransductionEvidence (C : ECMStiffnessMechanotransductionPackage) where
  matrixElasticityClosed : C.matrixElasticity
  integrinMediatedSensingClosed : C.integrinMediatedSensing
  cytoskeletalReorganizationClosed : C.cytoskeletalReorganization
  transcriptionalResponseClosed : C.transcriptionalResponse

def ECMStiffnessMechanotransductionClosed (C : ECMStiffnessMechanotransductionPackage) : Prop :=
  C.matrixElasticity ∧ C.integrinMediatedSensing ∧ C.cytoskeletalReorganization ∧ C.transcriptionalResponse

theorem ecm_stiffness_mechanotransduction_closed_from_evidence (C : ECMStiffnessMechanotransductionPackage)
    (E : ECMStiffnessMechanotransductionEvidence C) : ECMStiffnessMechanotransductionClosed C := by
  exact And.intro E.matrixElasticityClosed
    (And.intro E.integrinMediatedSensingClosed
      (And.intro E.cytoskeletalReorganizationClosed E.transcriptionalResponseClosed))

end CellBiologyExtracellularMatrixFoundationCanonicalLaneLean
end HautevilleHouse