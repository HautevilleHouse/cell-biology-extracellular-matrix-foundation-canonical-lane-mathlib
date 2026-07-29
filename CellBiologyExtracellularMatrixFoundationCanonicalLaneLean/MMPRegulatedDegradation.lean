import HautevilleHouse.CellBiologyExtracellularMatrixFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixFoundationCanonicalLaneLean

structure MMPRegulatedDegradationPackage where
  proMMPSecretion : Prop
  pericellularActivation : Prop
  substrateCleavage : Prop
  tissueInhibitorRegulation : Prop
  degradationFeedback : Prop

structure MMPRegulatedDegradationEvidence (C : MMPRegulatedDegradationPackage) where
  proMMPSecretionClosed : C.proMMPSecretion
  pericellularActivationClosed : C.pericellularActivation
  substrateCleavageClosed : C.substrateCleavage
  tissueInhibitorRegulationClosed : C.tissueInhibitorRegulation
  degradationFeedbackClosed : C.degradationFeedback

def MMPRegulatedDegradationClosed (C : MMPRegulatedDegradationPackage) : Prop :=
  C.proMMPSecretion ∧ C.pericellularActivation ∧ C.substrateCleavage ∧ C.tissueInhibitorRegulation ∧ C.degradationFeedback

theorem mmp_regulated_degradation_closed_from_evidence (C : MMPRegulatedDegradationPackage)
    (E : MMPRegulatedDegradationEvidence C) : MMPRegulatedDegradationClosed C := by
  exact And.intro E.proMMPSecretionClosed
    (And.intro E.pericellularActivationClosed
      (And.intro E.substrateCleavageClosed
        (And.intro E.tissueInhibitorRegulationClosed E.degradationFeedbackClosed)))

end CellBiologyExtracellularMatrixFoundationCanonicalLaneLean
end HautevilleHouse