import HautevilleHouse.CellBiologyExtracellularMatrixFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixFoundationCanonicalLaneLean

structure FibronectinFibrillogenesisPackage where
  dimerSecretion : Prop
  cellSurfaceBinding : Prop
  integrinActivation : Prop
  fibrilAssembly : Prop
  matrixRemodeling : Prop

structure FibronectinFibrillogenesisEvidence (C : FibronectinFibrillogenesisPackage) where
  dimerSecretionClosed : C.dimerSecretion
  cellSurfaceBindingClosed : C.cellSurfaceBinding
  integrinActivationClosed : C.integrinActivation
  fibrilAssemblyClosed : C.fibrilAssembly
  matrixRemodelingClosed : C.matrixRemodeling

def FibronectinFibrillogenesisClosed (C : FibronectinFibrillogenesisPackage) : Prop :=
  C.dimerSecretion ∧ C.cellSurfaceBinding ∧ C.integrinActivation ∧ C.fibrilAssembly ∧ C.matrixRemodeling

theorem fibronectin_fibrillogenesis_closed_from_evidence (C : FibronectinFibrillogenesisPackage)
    (E : FibronectinFibrillogenesisEvidence C) : FibronectinFibrillogenesisClosed C := by
  exact And.intro E.dimerSecretionClosed
    (And.intro E.cellSurfaceBindingClosed
      (And.intro E.integrinActivationClosed
        (And.intro E.fibrilAssemblyClosed E.matrixRemodelingClosed)))

end CellBiologyExtracellularMatrixFoundationCanonicalLaneLean
end HautevilleHouse