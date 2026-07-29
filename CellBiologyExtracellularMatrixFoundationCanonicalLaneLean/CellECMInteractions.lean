import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixFoundationCanonicalLaneLean

structure CellECMInteractionsPackage where
  cellAdhesion : Prop
  mechanotransduction : Prop
  migrationGuidance : Prop
  differentiationSignals : Prop
  proliferationRegulation : Prop
  apoptosisControl : Prop
  matrixRemodelingFeedback : Prop

structure CellECMInteractionsEvidence (C : CellECMInteractionsPackage) where
  cellAdhesionClosed : C.cellAdhesion
  mechanotransductionClosed : C.mechanotransduction
  migrationGuidanceClosed : C.migrationGuidance
  differentiationSignalsClosed : C.differentiationSignals
  proliferationRegulationClosed : C.proliferationRegulation
  apoptosisControlClosed : C.apoptosisControl
  matrixRemodelingFeedbackClosed : C.matrixRemodelingFeedback

def CellECMInteractionsClosed (C : CellECMInteractionsPackage) : Prop :=
  C.cellAdhesion ∧ C.mechanotransduction ∧ C.migrationGuidance ∧
  C.differentiationSignals ∧ C.proliferationRegulation ∧ C.apoptosisControl ∧
  C.matrixRemodelingFeedback

theorem cell_ecm_interactions_closed_from_evidence (C : CellECMInteractionsPackage)
    (Ev : CellECMInteractionsEvidence C) : CellECMInteractionsClosed C := by
  exact And.intro Ev.cellAdhesionClosed
    (And.intro Ev.mechanotransductionClosed
      (And.intro Ev.migrationGuidanceClosed
        (And.intro Ev.differentiationSignalsClosed
          (And.intro Ev.proliferationRegulationClosed
            (And.intro Ev.apoptosisControlClosed Ev.matrixRemodelingFeedbackClosed)))))

end CellBiologyExtracellularMatrixFoundationCanonicalLaneLean
end HautevilleHouse