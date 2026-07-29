import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyExtracellularMatrixFoundationCanonicalLaneLean.CellMatrixAdhesion

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixFoundationCanonicalLaneLean

structure MMP where
  name : String
  zincDependent : Prop
  secreted : Prop

structure TIMP where
  name : String
  inhibits : List MMP

structure CrosslinkingEnzyme where
  name : String
  substrate : String

structure ECMRemodelingPackage where
  mmps : List MMP
  timps : List TIMP
  crosslinkers : List CrosslinkingEnzyme
  degradationRate : Float
  synthesisRate : Float

structure ECMRemodelingEvidence (R : ECMRemodelingPackage) where
  mmpsNonempty : R.mmps ≠ []
  timpsNonempty : R.timps ≠ []
  crosslinkersNonempty : R.crosslinkers ≠ []
  degradationPositive : R.degradationRate > 0
  synthesisPositive : R.synthesisRate > 0

def ECMRemodelingClosed (R : ECMRemodelingPackage) : Prop :=
  R.degradationRate > 0 ∧ R.synthesisRate > 0

theorem ecm_remodeling_closed_from_evidence (R : ECMRemodelingPackage) (E : ECMRemodelingEvidence R) : ECMRemodelingClosed R := by
  exact And.intro E.degradationPositive E.synthesisPositive

end CellBiologyExtracellularMatrixFoundationCanonicalLaneLean
end HautevilleHouse