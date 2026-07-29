import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixFoundationCanonicalLaneLean

structure MatrixDegradationPackage where
  mmpSecretion : Prop
  ecmCleavage : Prop
  tissueRemodeling : Prop

structure MatrixDegradationEvidence (D : MatrixDegradationPackage) where
  mmpSecretionClosed : D.mmpSecretion
  ecmCleavageClosed : D.ecmCleavage
  tissueRemodelingClosed : D.tissueRemodeling

def MatrixDegradationClosed (D : MatrixDegradationPackage) : Prop :=
  D.mmpSecretion ∧ D.ecmCleavage ∧ D.tissueRemodeling

theorem matrix_degradation_closed_from_evidence (D : MatrixDegradationPackage) (E : MatrixDegradationEvidence D) :
    MatrixDegradationClosed D := by
  exact And.intro E.mmpSecretionClosed
    (And.intro E.ecmCleavageClosed E.tissueRemodelingClosed)

end CellBiologyExtracellularMatrixFoundationCanonicalLaneLean
end HautevilleHouse