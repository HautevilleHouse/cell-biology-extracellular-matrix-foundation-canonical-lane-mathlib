import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixFoundationCanonicalLaneLean

structure CellAdhesionReceptorsPackage where
  integrinExpression : Prop
  cadherinExpression : Prop
  selectinExpression : Prop
  immunoglobulinFamily : Prop
  focalAdhesionKinaseSignaling : Prop
  ligandBindingAffinity : Prop

structure CellAdhesionReceptorsEvidence (C : CellAdhesionReceptorsPackage) where
  integrinExpressionClosed : C.integrinExpression
  cadherinExpressionClosed : C.cadherinExpression
  selectinExpressionClosed : C.selectinExpression
  immunoglobulinFamilyClosed : C.immunoglobulinFamily
  focalAdhesionKinaseSignalingClosed : C.focalAdhesionKinaseSignaling
  ligandBindingAffinityClosed : C.ligandBindingAffinity

def CellAdhesionReceptorsClosed (C : CellAdhesionReceptorsPackage) : Prop :=
  C.integrinExpression ∧ C.cadherinExpression ∧ C.selectinExpression ∧
  C.immunoglobulinFamily ∧ C.focalAdhesionKinaseSignaling ∧ C.ligandBindingAffinity

theorem cell_adhesion_receptors_closed_from_evidence (C : CellAdhesionReceptorsPackage)
    (E : CellAdhesionReceptorsEvidence C) : CellAdhesionReceptorsClosed C := by
  exact And.intro E.integrinExpressionClosed
    (And.intro E.cadherinExpressionClosed
      (And.intro E.selectinExpressionClosed
        (And.intro E.immunoglobulinFamilyClosed
          (And.intro E.focalAdhesionKinaseSignalingClosed E.ligandBindingAffinityClosed))))

end CellBiologyExtracellularMatrixFoundationCanonicalLaneLean
end HautevilleHouse