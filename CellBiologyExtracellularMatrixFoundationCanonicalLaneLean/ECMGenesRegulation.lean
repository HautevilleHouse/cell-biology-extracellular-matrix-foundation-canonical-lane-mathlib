import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixFoundationCanonicalLaneLean

structure ECMGenesRegulationPackage where
  integrinActivation : Prop
  focalAdhesionKinase : Prop
  mmpRegulation : Prop
  geneExpressionFeedback : Prop

structure ECMGenesRegulationEvidence (P : ECMGenesRegulationPackage) where
  integrinActivationClosed : P.integrinActivation
  focalAdhesionKinaseClosed : P.focalAdhesionKinase
  mmpRegulationClosed : P.mmpRegulation
  geneExpressionFeedbackClosed : P.geneExpressionFeedback

def ECMGenesRegulationClosed (P : ECMGenesRegulationPackage) : Prop :=
  P.integrinActivation ∧ P.focalAdhesionKinase ∧ P.mmpRegulation ∧ P.geneExpressionFeedback

theorem ecm_genes_regulation_closed_from_evidence
    (P : ECMGenesRegulationPackage) (E : ECMGenesRegulationEvidence P) :
    ECMGenesRegulationClosed P := by
  exact And.intro E.integrinActivationClosed
    (And.intro E.focalAdhesionKinaseClosed
      (And.intro E.mmpRegulationClosed E.geneExpressionFeedbackClosed))

end CellBiologyExtracellularMatrixFoundationCanonicalLaneLean
end HautevilleHouse
