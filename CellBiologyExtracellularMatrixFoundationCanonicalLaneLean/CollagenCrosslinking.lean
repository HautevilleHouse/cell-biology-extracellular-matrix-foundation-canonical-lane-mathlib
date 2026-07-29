import HautevilleHouse.CellBiologyExtracellularMatrixFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixFoundationCanonicalLaneLean

structure CollagenCrosslinkingPackage where
  fibrilFormation : Prop
  lysylOxidaseActivity : Prop
  enzymaticCrosslinking : Prop
  nonEnzymaticCrosslinking : Prop

structure CollagenCrosslinkingEvidence (C : CollagenCrosslinkingPackage) where
  fibrilFormationClosed : C.fibrilFormation
  lysylOxidaseActivityClosed : C.lysylOxidaseActivity
  enzymaticCrosslinkingClosed : C.enzymaticCrosslinking
  nonEnzymaticCrosslinkingClosed : C.nonEnzymaticCrosslinking

def CollagenCrosslinkingClosed (C : CollagenCrosslinkingPackage) : Prop :=
  C.fibrilFormation ∧ C.lysylOxidaseActivity ∧ C.enzymaticCrosslinking ∧ C.nonEnzymaticCrosslinking

theorem collagen_crosslinking_closed_from_evidence (C : CollagenCrosslinkingPackage)
    (E : CollagenCrosslinkingEvidence C) : CollagenCrosslinkingClosed C := by
  exact And.intro E.fibrilFormationClosed
    (And.intro E.lysylOxidaseActivityClosed
      (And.intro E.enzymaticCrosslinkingClosed E.nonEnzymaticCrosslinkingClosed))

end CellBiologyExtracellularMatrixFoundationCanonicalLaneLean
end HautevilleHouse