import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixFoundationCanonicalLaneLean

structure ECMRemodelingDynamicPackage where
  matrixDeposition : Prop
  matrixDegradation : Prop
  crosslinkingRegulation : Prop
  turnoverBalance : Prop

structure ECMRemodelingDynamicEvidence (P : ECMRemodelingDynamicPackage) where
  matrixDepositionClosed : P.matrixDeposition
  matrixDegradationClosed : P.matrixDegradation
  crosslinkingRegulationClosed : P.crosslinkingRegulation
  turnoverBalanceClosed : P.turnoverBalance

def ECMRemodelingDynamicClosed (P : ECMRemodelingDynamicPackage) : Prop :=
  P.matrixDeposition ∧ P.matrixDegradation ∧ P.crosslinkingRegulation ∧ P.turnoverBalance

theorem ecm_remodeling_dynamic_closed_from_evidence
    (P : ECMRemodelingDynamicPackage) (E : ECMRemodelingDynamicEvidence P) :
    ECMRemodelingDynamicClosed P := by
  exact And.intro E.matrixDepositionClosed
    (And.intro E.matrixDegradationClosed
      (And.intro E.crosslinkingRegulationClosed E.turnoverBalanceClosed))

end CellBiologyExtracellularMatrixFoundationCanonicalLaneLean
end HautevilleHouse
