import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyExtracellularMatrixFoundationCanonicalLaneLean.ECMComponents

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixFoundationCanonicalLaneLean

structure IntegrinHeterodimer where
  alphaSubunit : String
  betaSubunit : String
  ligand : String

structure FocalAdhesion where
  integrins : List IntegrinHeterodimer
  talinPresent : Prop
  vinculinPresent : Prop
  focalAdhesionKinaseActive : Prop

structure AdhesionSignaling where
  rhoA : Prop
  rac1 : Prop
  cdc42 : Prop
  erkSignaling : Prop

structure CellMatrixAdhesionPackage where
  integrins : List IntegrinHeterodimer
  focalAdhesion : FocalAdhesion
  signaling : AdhesionSignaling
  adhesionTurnover : Prop

structure CellMatrixAdhesionEvidence (A : CellMatrixAdhesionPackage) where
  integrinListNonempty : A.integrins ≠ []
  talinPresentClosed : A.focalAdhesion.talinPresent
  vinculinPresentClosed : A.focalAdhesion.vinculinPresent
  fakActiveClosed : A.focalAdhesion.focalAdhesionKinaseActive
  adhesionTurnoverClosed : A.adhesionTurnover

def CellMatrixAdhesionClosed (A : CellMatrixAdhesionPackage) : Prop :=
  A.focalAdhesion.talinPresent ∧ A.focalAdhesion.vinculinPresent ∧ A.focalAdhesion.focalAdhesionKinaseActive ∧ A.adhesionTurnover

theorem cell_matrix_adhesion_closed_from_evidence (A : CellMatrixAdhesionPackage) (E : CellMatrixAdhesionEvidence A) : CellMatrixAdhesionClosed A := by
  exact And.intro E.talinPresentClosed (And.intro E.vinculinPresentClosed (And.intro E.fakActiveClosed E.adhesionTurnoverClosed))

end CellBiologyExtracellularMatrixFoundationCanonicalLaneLean
end HautevilleHouse