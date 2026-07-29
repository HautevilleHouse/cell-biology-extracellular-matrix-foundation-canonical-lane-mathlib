import HautevilleHouse.CellBiologyExtracellularMatrixFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixFoundationCanonicalLaneLean

structure AdhesionReceptorClusteringPackage where
  integrinDensity : Prop
  ligandBindingAffinity : Prop
  focalAdhesionAssembly : Prop
  signalingActivation : Prop

structure AdhesionReceptorClusteringEvidence (C : AdhesionReceptorClusteringPackage) where
  integrinDensityClosed : C.integrinDensity
  ligandBindingAffinityClosed : C.ligandBindingAffinity
  focalAdhesionAssemblyClosed : C.focalAdhesionAssembly
  signalingActivationClosed : C.signalingActivation

def AdhesionReceptorClusteringClosed (C : AdhesionReceptorClusteringPackage) : Prop :=
  C.integrinDensity ∧ C.ligandBindingAffinity ∧ C.focalAdhesionAssembly ∧ C.signalingActivation

theorem adhesion_receptor_clustering_closed_from_evidence (C : AdhesionReceptorClusteringPackage)
    (E : AdhesionReceptorClusteringEvidence C) : AdhesionReceptorClusteringClosed C := by
  exact And.intro E.integrinDensityClosed
    (And.intro E.ligandBindingAffinityClosed
      (And.intro E.focalAdhesionAssemblyClosed E.signalingActivationClosed))

end CellBiologyExtracellularMatrixFoundationCanonicalLaneLean
end HautevilleHouse