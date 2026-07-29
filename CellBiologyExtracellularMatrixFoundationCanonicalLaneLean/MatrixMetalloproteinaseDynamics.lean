import HautevilleHouse.CellMatrixFoundation.BridgeLemmas

namespace HautevilleHouse
namespace CellMatrixFoundation

structure MMPPackage where
  collagenaseActivity : Prop
  gelatinateActivity : Prop
  timpInhibition : Prop
  ecmRemodeling : Prop

structure MMPEvidence (M : MMPPackage) where
  collagenaseActivityClosed : M.collagenaseActivity
  gelatinateActivityClosed : M.gelatinateActivity
  timpInhibitionClosed : M.timpInhibition
  ecmRemodelingClosed : M.ecmRemodeling

def MMPClosed (M : MMPPackage) : Prop :=
  M.collagenaseActivity ∧ M.gelatinateActivity ∧ M.timpInhibition ∧ M.ecmRemodeling

theorem mmp_closed_from_evidence (M : MMPPackage) (E : MMPEvidence M) : MMPClosed M := by
  exact And.intro E.collagenaseActivityClosed
    (And.intro E.gelatinateActivityClosed
      (And.intro E.timpInhibitionClosed E.ecmRemodelingClosed))

end CellMatrixFoundation
end HautevilleHouse
