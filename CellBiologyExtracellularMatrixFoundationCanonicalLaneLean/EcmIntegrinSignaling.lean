import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixFoundationCanonicalLaneLean

structure EcmIntegrinSignalingPackage where
  focalAdhesionKinase : Prop
  integrinClustering : Prop
  outsideInSignaling : Prop
  insideOutSignaling : Prop

structure EcmIntegrinSignalingEvidence (P : EcmIntegrinSignalingPackage) where
  focalAdhesionKinaseClosed : P.focalAdhesionKinase
  integrinClusteringClosed : P.integrinClustering
  outsideInSignalingClosed : P.outsideInSignaling
  insideOutSignalingClosed : P.insideOutSignaling

def EcmIntegrinSignalingClosed (P : EcmIntegrinSignalingPackage) : Prop :=
  P.focalAdhesionKinase ∧ P.integrinClustering ∧ P.outsideInSignaling ∧ P.insideOutSignaling

theorem ecm_integrin_signaling_closed_from_evidence
    (P : EcmIntegrinSignalingPackage) (E : EcmIntegrinSignalingEvidence P) :
    EcmIntegrinSignalingClosed P := by
  exact And.intro E.focalAdhesionKinaseClosed
    (And.intro E.integrinClusteringClosed
      (And.intro E.outsideInSignalingClosed E.insideOutSignalingClosed))

end CellBiologyExtracellularMatrixFoundationCanonicalLaneLean
end HautevilleHouse