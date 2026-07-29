import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyExtracellularMatrixFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixFoundationCanonicalLaneLean

structure CollagenFibril where
  type : String
  diameter : Float
  crosslinked : Prop

structure Elastin where
  elasticModulus : Float
  halfLife : Float

structure Proteoglycan where
  glycosaminoglycan : String
  chargeDensity : Float

structure ECMComponentsPackage where
  collagen : CollagenFibril
  elastin : Elastin
  proteoglycan : Proteoglycan
  fibronectinPresent : Prop
  lamininPresent : Prop

structure ECMComponentsEvidence (C : ECMComponentsPackage) where
  collagenTypeValid : C.collagen.type ≠ ""
  elastinElastic : C.elastin.elasticModulus > 0
  proteoglycanCharged : C.proteoglycan.chargeDensity ≠ 0
  fibronectinConfirmed : C.fibronectinPresent
  lamininConfirmed : C.lamininPresent

def ECMComponentsClosed (C : ECMComponentsPackage) : Prop :=
  C.collagen.crosslinked ∧ C.elastin.elasticModulus > 0 ∧ C.proteoglycan.chargeDensity ≠ 0

theorem ecm_components_closed_from_evidence (C : ECMComponentsPackage) (E : ECMComponentsEvidence C) : ECMComponentsClosed C := by
  exact And.intro E.collagenTypeValid (And.intro E.elastinElastic (And.intro E.proteoglycanCharged (And.intro E.fibronectinConfirmed E.lamininConfirmed)))

end CellBiologyExtracellularMatrixFoundationCanonicalLaneLean
end HautevilleHouse